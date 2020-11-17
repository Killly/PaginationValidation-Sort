<?php
session_start();
require_once 'php/connect.php';

if(!isset($_GET['page'])) {
$page = 1;
} else {
	$page = $_GET['page'];
}

$limit = 25;
$start = ($page - 1) * $limit;

$rowcount = $pdo->query('SELECT COUNT(id) as id FROM users')->fetchColumn();

$pages = ceil($rowcount / $limit);

if($_SESSION['check'] == 'asc') {
	$query = $pdo->query('SELECT * FROM users ORDER BY dateval LIMIT '.$start.','.$limit.'');
	
} elseif ($_SESSION['check'] == 'desc') {
	$query = $pdo->query('SELECT * FROM users ORDER BY dateval DESC LIMIT '.$start.','.$limit.'');
	
} elseif ($_SESSION['check'] == 'ascuser') {
	$query = $pdo->query('SELECT * FROM users ORDER BY username LIMIT '.$start.','.$limit.'');
} elseif ($_SESSION['check'] == 'descuser') {
	$query = $pdo->query('SELECT * FROM users ORDER BY username DESC LIMIT '.$start.','.$limit.'');
} elseif ($_SESSION['check'] == 'ascemail') {
	$query = $pdo->query('SELECT * FROM users ORDER BY email LIMIT '.$start.','.$limit.'');
} elseif ($_SESSION['check'] == 'descemail') {
	$query = $pdo->query('SELECT * FROM users ORDER BY email DESC LIMIT '.$start.','.$limit.'');
} else {
	$query = $pdo->query('SELECT * FROM users ORDER BY id DESC LIMIT '.$start.','.$limit.'');
}

$previous = $page - 1;
if($previous < 1){
	$previous = 1;
}
$next = $page + 1;
if($next > $pages){
	$next = $page;

}



?>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
</head>
<body>
	<div class="container">

		<h1>Book of Complaints</h1>

		<form id="main_form" method="post" action="php/add.php">

			<input type="text" id="user_name" name="username" placeholder="Username" class="form-control" required>
			<input type="email" id="e_mail" name="email" placeholder="E-mail" class="form-control" required>
			<input type="url" name="urln" class="form-control" id="urln" placeholder="Homepage">
			<textarea id="mess" name="message" placeholder="Enter your message" class="form-control" required></textarea>
			<img id="imgcap" src="php/captcha.php" alt="">
			<div id="refresh" class="btn btn-secondary">Refresh</div>
			<input type="text" id="captcha" name="captcha" placeholder="Enter symbols " class="form-control">
			<input type="submit" name="send" id="send" class="btn btn-success" value="Send">
		</form>
		<div id="errorm" class="">
	
		</div>

		<table class="table table-stripped">
			<tr>
				<nav aria-label="Page navigation example">
  					<ul class="pagination">
					    <li class="page-item"><a class="page-link" href="index.php?page=<?= $previous ?>">Previous</a></li>
					    <?php for($i = 1; $i <= $pages; $i++) :?>
					    <li class="page-item"><a class="page-link" href="index.php?page=<?= $i ?>"><?= $i ?></a></li>
						<?php endfor; ?>
					    
					    <li class="page-item"><a class="page-link" href="index.php?page=<?= $next ?>">Next</a></li>
 					</ul>
				</nav>
			</tr>
			<tr class="trr">
								
				<th>Username
					<a href="php/sortuserasc.php">&#9650;</a>
					<a href="php/sortuserdesc.php">&#9660;</a>
				</th>

				<th>Email
					<a href="php/sortemailasc.php">&#9650;</a>
					<a href="php/sortemaildesc.php">&#9660;</a>
				</th>
				<th>Message</th>
				<th id="datatime">Date
					<a href="php/sortdate.php">&#9650;</a>
					<a href="php/sortdater.php">&#9660;</a>
				</th>
				
			</tr>
			<?php
				
				while($row = $query->fetch(PDO::FETCH_OBJ)) {
					?>
					<tr id="mes_add">
						
						<td><?= $row->username ?></td>
						<td><?= $row->email ?></td>
						<td><?= $row->mess ?></td>
						<td><?= date("Y-m-d H:i:s", $row->dateval) ?></td>
						<td><a href="edit.php?id=<?= $row->id ?>"><div class="btn btn-warning">Edit</div></a></td>
						<td><a href="php/delete.php?id=<?= $row->id ?>"><div class="btn btn-danger">Delete</div></a></td>
						
					</tr>
					<?php				
						}
					?>
		</table>
		
	</div>

	
<script src="js/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/additional-methods.js"></script>

<script src="js/main.js"></script>
	



</body>
</html>