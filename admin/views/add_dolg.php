<h4 class="text-center">Добавление долгов</h4>
<form method="POST" class="add-dolg border border-secondary">
      
  <div class="form-row">

    <div class="form-group col-md-3">
      <label for="numUchastok">№ уч.</label>
      <select name="numUchastok" class="form-control" id="numUchastok">
        <option></option>
        <?php foreach ($uchastki as $uchastok): ?>
          <option value="<?= $uchastok['uchastokNumber'] ?>"><?= $uchastok['uchastokNumber'] ?></option>
        <?php endforeach ?>
      </select>
    </div>

    <div class="form-group col-md-3">
      <label for="year">За какой год долг</label>
      <input name="year" class="form-control" id="year">
    </div>

     <div class="form-group col-md-4">
      <label for="dolg">Сумма долга</label>
      <input name="dolg" class="form-control" id="dolg">
    </div>

    <div class="form-group col-md-7">
      <label for="comment">Комментарий</label>
      <input type="text" name="comment" class="form-control" id="comment">
    </div>

  </div>
 
  <button type="submit" name="addDolg" class="btn btn-secondary btn-lg btn-block">Добавить</button>
</form>

<h4 class="text-center">Список участков</h4>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th scope="col">№ уч.</th>
          <th scope="col">Садовод</th>
          <th scope="col">Площадь</th>
          <th scope="col">Комментарий</th>
          <th scope="col" colspan="2" class="text-center">Действие</th>
        </tr>
      </thead>
      <tbody>
        
          <?php foreach ($uchastki as $uchastok): ?>
            <tr>
              <td><?=$uchastok['№ уч.']?></td>
              <td><?=$uchastok['sadovod']?></td>
              <td><?=$uchastok['square']?></td>
              <td><?=$uchastok['comment']?></td>
              <td><a href="?editUchastok=<?=$uchastok['№ уч.']?>">Изм.</a></td>
              <td><a href="?delUchastka=<?=$uchastok['№ уч.']?>">Уд.</a></td>
            </tr>
          <?php endforeach ?>
        
      </tbody>
    </table>

<?php 
foreach ($dolgi as $dolg) {
  $a[] = $dolg['dolg'];
    foreach ($a as $elem) {
      dump($elem);
    }
}