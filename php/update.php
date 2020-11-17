<?php
require_once 'connect.php';

$id = $_POST['id'];
$username = $_POST['username'];
$email = $_POST['email'];
$message = $_POST['message'];

$sql = 'UPDATE users SET username = ?, email = ?, mess = ? WHERE id = ?';
$query = $pdo->prepare($sql);
$query->execute([$username, $email, $message, $id]);


header('Location: ../index.php');
?>