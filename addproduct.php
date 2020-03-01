<?php

$name = trim(filter_var($_POST['name'], FILTER_SANITIZE_STRING));
$description = trim(filter_var($_POST['description'], FILTER_SANITIZE_STRING));
$fulltext = trim(filter_var($_POST['fulltext'], FILTER_SANITIZE_STRING));
$picture = trim(filter_var($_POST['picture'], FILTER_SANITIZE_STRING));
$category = $_POST['category'];
$showproduct = $_POST['show'];


$path = 'upload/';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $uploadname = basename($_FILES['picture']['name']);
    $uploadpath = 'upload/' . $uploadname;
    move_uploaded_file($_FILES['picture']['tmp_name'], $uploadpath);


    require_once 'mysql_connect.php';


    $sql = 'INSERT INTO products (name, description, fultext, picture, category, showproduct) VALUES (?,?,?,?,?,?)';

    $query = $pdo->prepare($sql);
    $query->execute([$name, $description, $fulltext, $uploadpath, $category, $showproduct]);
    header('Location: /list.php ');
    exit();
}
