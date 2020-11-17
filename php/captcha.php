<?php

session_start();

$width = 200;
$height = 60;
$count = 5;
$count_small = 40;
$font_size = 20;
$font = '../source/sh1.ttf';
$letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnopqrstuvwxyz';
$letters = substr(str_shuffle($letters), 0, 6);
$letters = str_split($letters);
$let_colors = array('90', '120', '150', '180', '210', '240');

$img = imagecreatetruecolor($width, $height);
$fon = imagecolorallocate($img, 250, 250, 250);
imagefill($img, 0, 0, $fon);

for($i = 0; $i < $count_small; $i++) {
	$size = rand($font_size-10, $font_size-5);
	$angle = rand(0, 50);
	$x = rand($width * 0.1, $width - $width * 0.1);
	$y = rand($height * 0.2, $height);
	$color = imagecolorallocatealpha($img, rand(0, 255), rand(0, 255), rand(0, 255), 100);
	$fontfile = $font;
	$text = $letters[rand(0, sizeof($letters) - 1)];
	imagettftext($img, $size, $angle, $x, $y, $color, $fontfile, $text);
}


for($i = 0; $i < $count; $i++) {
	$size = rand($font_size*2-2, $font_size*2+2);
	$angle = rand(-10, 15);
	$x = ($i + 1) * $size * 0.8;
	$y = $height/2 + $size/2;
	$color = imagecolorallocatealpha($img, $let_colors[rand(0, sizeof($let_colors) - 1)], $let_colors[rand(0, sizeof($let_colors) - 1)], $let_colors[rand(0, sizeof($let_colors) - 1)], 40);
	$fontfile = $font;
	$text = $letters[rand(0, sizeof($letters) - 1)];
	$captcha[] = $text;
	imagettftext($img, $size, $angle, $x, $y, $color, $fontfile, $text);
}

$captcha = strtolower(implode('', $captcha));
$_SESSION['captcha'] = $captcha;
header('Content-type: image/gif');

imagegif($img);


?>