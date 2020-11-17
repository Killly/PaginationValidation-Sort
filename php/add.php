<?php 
session_start();
require_once 'connect.php';

$ip = $_SERVER['REMOTE_ADDR'];
$browser = $_SERVER['HTTP_USER_AGENT'];
$username = $_POST['username'];
$email = $_POST['email'];
$message = $_POST['message'];
$code = $_POST['code'];
$urlname = $_POST['urlname'];
$dateval = time();

if(strtolower($code) == $_SESSION["captcha"]) {
	// while ($i <= 7) {
		
	
	$sql = 'INSERT INTO users (id, username, email, urlname, mess, ip, browser, dateval) VALUES (NULL, :username, :email, :urlname, :message, :ip, :browser, :dateval)';
	$query = $pdo->prepare($sql);
	$query->execute(['username' => $username, 'email' => $email, 'urlname' => $urlname, 'message' => $message, 'ip' => $ip, 'browser' => $browser, 'dateval' => $dateval]);
	// $i++;
	// }
		echo 'good';
	} 


?>