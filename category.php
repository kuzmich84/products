<?php require_once 'header.php'; ?>

<div class="container">

<?php

require_once 'mysql_connect.php';


$category = $_POST['check'];

foreach ($category as $item){
    $sql = 'SELECT * FROM `products` WHERE `category` = :item';

    $query = $pdo->prepare($sql);
    $query->execute(['item'=> $item]);

    while ($row = $query->fetch(PDO::FETCH_OBJ)) {
        echo "  <div class='card'>
        <img src='$row->picture' class='card-img-top' alt='картинка'>
        <div class='card-body'>
            <h5 class='card-title'>$row->name</h5>
                <p>Категория: <b>$row->category</b></p>
            <p>Описание товара:</p>
            <p class='card-text'>$row->description</p>
            <p class='card-text'>$row->fultext</p>
            
            <form action='delete.php' method='post'>
            <input type='text' name='delete' value='$row->name' hidden>
             <button class='btn btn-danger' type='submit' >Удалить</button>
             </form>
        </div>
     </div>  ";
    }

}
?>
</div>