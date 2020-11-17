<?php
require_once 'php/connect.php';
$id = $_GET['id'];
$sql = 'SELECT * FROM users WHERE id = ?';
$query = $pdo->prepare($sql);
$query->execute([$id]);


$l = $query->fetch(PDO::FETCH_OBJ);

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	
	<title>Update Page</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="container">
	<h1>Update your Complaint</h1>

		<form id="main_form" method="post" action="php/update.php">
			<input type="hidden" name="id" value="<?= $l->id ?>">

			<input type="text" id="user_name" name="username" value="<?= $l->username?>" class="form-control">
			<input type="email" id="e_mail" name="email" value="<?= $l->email?>" class="form-control">
			<textarea id="mess" name="message" class="form-control"><?= $l->mess?></textarea>
			<input type="submit" name="send" id="send" class="btn btn-success" value="Update">
		</form>
	</div>
</body>
</html>