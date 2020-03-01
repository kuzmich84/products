<?php require_once 'header.php'?>

<div class="container">
    <div class="card-deck">
        <div class="row">
            <div class="col-5">
                <h3>Категория</h3>
                <form action="category.php" method="post">
                <?php
                require_once 'mysql_connect.php';

                $sql = 'SELECT * FROM `category`';

                $query = $pdo->query($sql);

                while ($row = $query->fetch(PDO::FETCH_OBJ)) {
                    echo "  <div class='form-check'>
                <input class='form-check-input' type='checkbox' value='$row->value' id='$row->value' name='check[]'>
                <label class='form-check-label' for='$row->value'>
                   $row->categoryName
                </label>
            </div>";
                }

               echo "
                         <button class='btn btn-warning mt-5' type='submit'>Выбрать</button>
                       ";

                ?>

                </form>
            </div>

            <div class="col-7">
                <h3>Список продуктов</h3>
                <div class="card_list" >
                <?php

                $sql = 'SELECT * FROM `products` WHERE `showproduct` = 1';
                $query = $pdo->query($sql);

                while ($row = $query->fetch(PDO::FETCH_OBJ)) {
                    echo "  <div class='card mb-5'>
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


                ?>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>