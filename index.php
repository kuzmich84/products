<?php require_once 'header.php'?>
<div class="container">
<h1>Каталог продуктов</h1>

<h2>Добавить продукт</h2>
<form action="addproduct.php" method="post" enctype="multipart/form-data" >
    <div class="form-group">
        <label for="name">Введите название продукта</label>
        <input type="text" name="name" class="form-control" id="name">
    </div>
    <div class="form-group">
        <label for="description">Внесите описание продукта</label>
        <textarea class="form-control" id="description" name="description" rows="3"></textarea>
    </div>
    <div class="form-group">
        <label for="fulltext">Внесите полный текст</label>
        <textarea class="form-control" id="fulltext" name="fulltext" rows="6"></textarea>
    </div>
    <div class="form-group">
        <label for="picture">Загрузите картинку продукта</label>
        <input type="file" class="form-control-file" id="picture" name="picture">
    </div>
    <h3>Выберите категорию</h3>
    <select class="custom-select" name="category">
        <option value="camera">Фотоаппараты</option>
        <option value="lens">Объективы</option>
        <option value="tripods">Штативы</option>
        <option value="flash  ">Вспышки</option>
    </select>

    <h3>Показать/скрыть продукт</h3>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" value="1" id="show" name="show">
        <label class="form-check-label" for="show">
            Показать продукт
        </label>
    </div>
        <div class="form-check">
        <input class="form-check-input" type="checkbox" value="0" id="show" name="show">
        <label class="form-check-label" for="show">
            Скрыть продукт
        </label>
    </div>
    <div class="alert alert-danger mt-2" id="errorBlock"></div>

    <button type="submit" class="btn btn-primary mt-2">Добавить</button>


</form>
</div>

</body>
</html>