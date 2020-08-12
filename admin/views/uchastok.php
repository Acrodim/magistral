<h4 class="text-center">Участок № <?= $uchastok['uchastokNumber'] ?></h4>
<p>Садовод: <a href="/admin/user/<?=$uchastok['user_id']?>"><?= $uchastok['sadovod'] ?></a></p>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 5%">Площадь</th>
      <th scope="col" style="width: 5%">Приватиз.</th>
      <th scope="col" style="width: 30%">Комментарий</th>
      <th scope="col" style="width: 5%">Счётчик</th>
      <th scope="col" style="width: 8%">Дата</th>
    </tr>
  </thead>
  <tbody>
  
    <tr>
      <td><?=$uchastok['square']?></td>
      <td><?=$uchastok['private']?></td>
      <td><?=$uchastok['comment']?></td>
      <td><?=$uchastok['counter']?></td>
      <td><?=$uchastok['date']?></td>
    </tr>
    
  </tbody>
</table>