 <h4 class="text-center <?= $visibleForAdmin ?>">Показания электросчётчиков</h4>

<form method="POST" class="add-uchastok border border-secondary <?= $visibleForPravlenie ?>">
      
  <div class="form-row">
    <div class="form-group col-md-1">
      <input type="hidden" name="controller" class="form-control" id="controller" value="<?=$_SESSION['loginSurname']?>">
      <label for="numUchastok">№ уч.</label>
      <select name="numUchastok" class="form-control" id="numUchastok" required>
        <option></option>
        <?php foreach ($uchastki as $uchastok): ?>
          <option value="<?= $uchastok['uchastokNumber'] ?>"><?= $uchastok['uchastokNumber'] ?></option>
        <?php endforeach ?>
      </select>
    </div>
    
    <div class="form-group col-md-2">
      <label for="counter">Показания</label>
      <input name="counter" class="form-control" id="counter" required>
    </div>
  
    <div class="form-group col-md-9">
      <label for="comment">Комментарий</label>
      <input type="text" name="comment" class="form-control" id="comment" value="<?= $uchastok['comment'] ?>">
    </div>
  
  </div>

  <button type="submit" name="saveElectro" class="btn btn-secondary btn-lg btn-block">Сохранить</button>

</form>

<h4 class="text-center">Список участков</h4>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 5%">№</th>
      <th scope="col" style="width: 15%">Показания</th>
      <th scope="col" style="width: 15%">Дата</th>
      <th scope="col" style="width: 5%">Контроллёр</th>
      <th scope="col" style="width: 35%">Комментарий</th>
    </tr>
  </thead>
  <tbody>
    
      <?php foreach ($electroAll as $electro): ?>
        <tr>
          <td><a href="/admin/uchastok/<?=$electro['uchastok_id']?>"><?=$electro['uchastok_id']?></a></td>
          <td><?=$electro['counter']?></a></td>
          <td><?=$electro['date']?></td>
          <td><?=$electro['controller']?></td>
          <td><?=$electro['comment']?></td>
        </tr>
      <?php endforeach ?>
    
  </tbody>
</table>