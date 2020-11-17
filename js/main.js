$(document).ready(function() {

jQuery.validator.addMethod("noHTML", function(value, element) {
    // return true - means the field passed validation
    // return false - means the field failed validation and it triggers the error
    return this.optional(element) || /^([a-z0-9]+)$/.test(value);
}, "No HTML tags are allowed!");

$('#main_form').validate({
	debug: true,
	rules: {
		username: {
			required: true,
			minlength: 4,
			alphanumeric: true
		},
		email: {
			required: true,
			email: true
		},
		message: {
			required: true,
			noHTML: true
		}
	}
});


$("#refresh").on('click', function() {
  $('#imgcap').attr('src', 'php/captcha.php?id='+Math.random()+'');
});  

$('#main_form').on('submit', function(event) {
	event.preventDefault();
	
	if($('#captcha').val() == '') {
		alert('Enter Captcha');
		$('#send').attr('disabled', 'disabled');
		return false;
	
	} else {
		$('#main_form')[0].reset();
		$('#imgcap').attr('src', 'php/captcha.php');

 	}


});

$('#captcha').on('blur', function() {
	var code = $('#captcha').val();
	var username = $('#user_name').val();
	var email = $('#e_mail').val();
	var message = $('#mess').val();
	if(code == '') {
		alert('Enter Captcha');
		$('#send').attr('disabled', 'disabled');
	} else {
		$.ajax({
			url: "php/verifycaptcha.php",
			method: "POST",
			data:{code:code},
			success: function(data) {
				if(data == 'success') {
					$('#send').attr('disabled', false);
				} else {
					alert('Invalid Code');
				}
			}
		
		});
	}
});
$('#send').on('click', function() {
	var code = $('#captcha').val();
	var username = $('#user_name').val();
	var email = $('#e_mail').val();
	var message = $('#mess').val();
	var urlname = $('#urln').val();
	var v = $('captcha').attr('aria-invalid');
	var prestxt = $('#user_name').hasClass('valid');
	var presemail = $('#e_mail').hasClass('valid');
	var mcheck = $('#mess').hasClass('error');
	if(code == '' || v == 'false') {
		alert('Enter Captcha');
		$('#send').attr('disabled', 'disabled');
	} else if(code != '' && prestxt == true && username != '' && presemail == true && email != '' && message != '' && mcheck != true) {
		$.ajax({
			url: "php/verifycaptcha.php",
			method: "POST",
			data:{code:code},
			success: function(data) {
				if(data == 'success') {
					$('#send').attr('disabled', false);
				} else {
					alert('Invalid Code');
				}
			}
		});

		$.ajax({
			url: "php/add.php",
			method: "POST",
			data:{code:code, username:username, email:email, message:message, urlname:urlname},
			success: function(data) {
				if(data == 'good') {
					location.reload();
				
				}
			}
		});
	}
});



});
