<h4 class="text-center">Добавление долгов по членским взносам</h4>
<form method="POST" class="add-dolg border border-secondary">
      
  <div class="form-row">

    <div class="form-group col-md-1">
      <label for="numUchastok">№ уч.</label>
      <select name="numUchastok" class="form-control" id="numUchastok">
        <option></option>
        <?php foreach ($uchastki as $uchastok): ?>
          <option value="<?= $uchastok['uchastokNumber'] ?>"><?= $uchastok['uchastokNumber'] ?></option>
        <?php endforeach ?>
      </select>
    </div>

    <div class="form-group col-md-2">
      <label for="do2016">До 2016</label>
      <input name="do2016" class="form-control" id="do2016" value="0.00">
    </div>

     <div class="form-group col-md-2">
      <label for="year2017">2017</label>
      <input name="year2017" class="form-control" id="year2017" value="0.00">
    </div>

    <div class="form-group col-md-2">
      <label for="year2018">2018</label>
      <input name="year2018" class="form-control" id="year2018" value="0.00">
    </div>

    <div class="form-group col-md-2">
      <label for="year2019">2019</label>
      <input name="year2019" class="form-control" id="year2019" value="0.00">
    </div>

    <div class="form-group col-md-2">
      <label for="year2020">2020</label>
      <input name="year2020" class="form-control" id="year2020" value="0.00">
    </div>

  </div>
 
  <button type="submit" name="addDolg" class="btn btn-secondary btn-lg btn-block">Добавить</button>
</form>

<h4 class="text-center">Задолженность по членским взносам</h4>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">№ уч.</th>
      <th scope="col">Садовод</th>
      <th scope="col">до 2016г.</th>
      <th scope="col">2017г.</th>
      <th scope="col">2018г.</th>
      <th scope="col">2019г.</th>
      <th scope="col">2020г.</th>
      <th scope="col">Всего</th>
    </tr>
  </thead>
  <tbody>

  <?php
    $itogoSumma = '';
    $itogoDo2016 = '';
    $itogoYear2017 = '';
    $itogoYear2018 = '';
    $itogoYear2019 = '';
    $itogoYear2020 = '';
   ?>
  <?php foreach ($dolgi as $dolg): ?>
    <?php 
      @$itogoSumma += $dolg['vsego'];
      @$itogoDo2016 += $dolg['do2016'];
      @$itogoYear2017 += $dolg['year2017'];
      @$itogoYear2018 += $dolg['year2018'];
      @$itogoYear2019 += $dolg['year2019'];
      @$itogoYear2020 += $dolg['year2020'];
    ?>
    <tr>
      <td><?=$dolg['uchastok_id']?></td>
      <td><?=$dolg['sadovod']?></td>
      <td><?=$dolg['do2016']?></td>
      <td><?=$dolg['year2017']?></td>
      <td><?=$dolg['year2018']?></td>
      <td><?=$dolg['year2019']?></td>
      <td><?=$dolg['year2020']?></td>
      <td><?=$dolg['vsego']?></td>
    </tr>
  <?php endforeach ?>
   <thead>
    <tr>
      <th scope="col" colspan="2">Итого:</th>
      <th scope="col"><?=is_float($itogoDo2016) ? number_format($itogoDo2016, 2):'0.00';?></th>
      <th scope="col"><?=is_float($itogoYear2017) ? number_format($itogoYear2017, 2):'0.00';?></th>
      <th scope="col"><?=is_float($itogoYear2018) ? number_format($itogoYear2018, 2):'0.00';?></th>
      <th scope="col"><?=is_float($itogoYear2019) ? number_format($itogoYear2019, 2):'0.00';?></th>
      <th scope="col"><?=is_float($itogoYear2020) ? number_format($itogoYear2020, 2):'0.00';?></th>
      <th scope="col"><?=is_float($itogoYear2017) ? number_format($itogoSumma, 2):'0.00';?></th>
    </tr>
  </thead>

    <!--
      <?php foreach ($dolgi as $dolg): ?>
        <tr>
          <td><?=$dolg['uchastok_id']?></td>
          <td><?=$dolg['sadovod']?></td>

          <?php
            $string = $dolg['dolg'];
            $array1 = array();
            $array2 = explode('|', $string);
            //dump($array2);exit;
            foreach($array2 as $str) {
                list($key, $value) = explode(':', $str);
                $array1[$key] = $value;
            }
          ?>
            <?php foreach ($array1 as $key => $elem): ?>
               <td><?=$key?></td>
               <td><?=$elem?></td>
            <?php endforeach?>
        </tr>
      <?php endforeach ?>
    -->

  </tbody>
</table>
