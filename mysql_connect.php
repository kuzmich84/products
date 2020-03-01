<?php
/*Подключение Базы Данных*/
$user = 'root';
$password = '';
$db = 'products';
$host = 'localhost';

$dsn = 'mysql:host=' . $host . ';dbname=' . $db;

$pdo = new PDO($dsn, $user, $password);

