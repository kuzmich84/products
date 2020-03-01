<?php
require_once 'mysql_connect.php';

$name = $_POST['delete'];



$sql = 'SELECT `picture` FROM `products` WHERE `name` =:name';

$query = $pdo->prepare($sql);
$query->execute(['name'=> $name]);

$picture = $query->fetch(PDO::FETCH_OBJ);

$img = "$picture->picture";

if(file_exists($img)) unlink($img);




$sql = 'DELETE FROM `products` WHERE `name` = :name ';

$query = $pdo->prepare($sql);
$query->execute(['name' => $name]);
header('Location: /list.php');
exit();