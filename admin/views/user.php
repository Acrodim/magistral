<p>Садовод: <?=$user[0]['sadovod']?></p>
<p>Телефон: <a href="tel:<?=$user[0]['phone']?>"><?=$user[0]['phone']?></a></p>
<p>Адрес: <?=$user[0]['address']?></p>
<h4 class="text-center">Список участков садовода</h4>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 5%">№</th>
      <th scope="col" style="width: 5%">Площадь</th>
      <th scope="col" style="width: 5%">Приватиз.</th>
      <th scope="col" style="width: 35%">Комментарий</th>
      <th scope="col" colspan="2" class="text-center <?= $visibleForAdmin ?>" style="width: 10%">Действие</th>
    </tr>
  </thead>
  <tbody>
    
      <?php foreach ($user as $item): ?>
        <tr>
          <td><?=$item['uchastokNumber']?></td>
          <td><?=$item['square']?></td>
          <td><?=$item['private']?></td>
          <td><?=$item['comment']?></td>
          <td class="<?= $visibleForAdmin ?>"><a href="/admin/uchastki?editUchastok=<?=$item['uchastokNumber']?>">Изм.</a></td>
          <td class="<?= $visibleForAdmin ?>">Уд.</td>
        </tr>
      <?php endforeach ?>
    
  </tbody>
</table>