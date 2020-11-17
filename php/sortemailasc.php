<?php 
session_start();
require_once 'connect.php';
	
$_SESSION['RECOIL_PAGE'] = $_SERVER['HTTP_REFERER'];
$_SESSION['check'] = 'ascemail';
header('Location:' .$_SESSION['RECOIL_PAGE']);

?>