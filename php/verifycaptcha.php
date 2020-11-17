<?php
session_start();
$code = $_POST['code'];

if(strtolower($code) == $_SESSION["captcha"]) {
	echo 'success';
	} 
			
?>