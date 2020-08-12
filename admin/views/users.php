<?php if (isset($_GET['editUser'])): ?>
  <h4 class="text-center <?= $visibleForAdmin ?>">Редактирование садовода</h4>
<?php else: ?>
  <h4 class="text-center <?= $visibleForAdmin ?>">Добавление садовода</h4>
<?php endif ?>

<form method="POST" class="add-user border border-secondary <?= $visibleForAdmin ?>">    
  <div class="form-row">
    <div class="form-group col-md-5">
      <label for="surname">Фамилия</label>
      <input type="hidden" name="id" class="form-control" id="id" value="<?=$user['id']?>">
      <input type="text" name="surname" class="form-control" id="surname" value="<?=$user['surname']?>" required>
    </div>
    <div class="form-group col-md-7">
      <label for="name">Имя</label>
      <input type="text" name="name" class="form-control" id="name" value="<?=$user['name']?>" required>
      </select>
    </div>
  </div>
 
  <div class="form-row">
     <div class="form-group col-md-5">
      <label for="phone">Телефон</label>
      <input name="phone" class="form-control" id="phone" value="<?=$user['phone']?>">
    </div>
    <div class="form-group col-md-7">
      <label for="address">Адрес</label>
      <input name="address" class="form-control" id="address" value="<?=$user['address']?>">
    </div>
     <div class="form-group col-md-12">
      <label for="comment">Комментарий</label>
      <input type="text" name="comment" class="form-control" id="inputZip" value="<?=$user['comment']?>">
    </div>
  </div>

<?php if (isset($_GET['editUser'])): ?>
     <button type="submit" name="editUser" class="btn btn-secondary btn-lg btn-block">Сохранить</button>
<?php else: ?>
   <button type="submit" name="addUser" class="btn btn-secondary btn-lg btn-block">Добавить</button>
<?php endif ?>
 
</form>

  <h4 class="text-center">Список садоводов</h4>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th scope="col" style="width: 35%">ФИО</th>
          <th scope="col" style="width: 10%">Телефон</th>
          <th scope="col" style="width: 15%">Адрес</th>
          <th scope="col" style="width: 20%">Комментарий</th>
          <th scope="col" colspan="2" class="text-center <?= $visibleForAdmin ?>" style="width: 10%">Действие</th>
        </tr>
      </thead>
      <tbody>
        
          <?php foreach ($users as $user): ?>
            <tr>
              <td><?=$user['sadovod']?></td>
              <td><a href="tel:<?=$user['phone']?>"><?=$user['phone']?></a></td>
              <td><?=$user['address']?></td>
              <td><?=$user['comment']?></td>
              <td class="<?= $visibleForAdmin ?>"><a href="?editUser=<?=$user['id']?>">Изм.</a></td>
              <td class="<?= $visibleForAdmin ?>">Уд.</td>
            </tr>
          <?php endforeach ?>
        
      </tbody>
    </table>