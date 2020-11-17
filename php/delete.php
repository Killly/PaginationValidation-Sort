<?php
require_once 'connect.php';

$id = $_GET['id'];
$sql = 'DELETE FROM users WHERE id = ?';
$query = $pdo->prepare($sql);
$query->execute([$id]);



header('Location: ../index.php');
?>