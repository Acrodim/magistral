<?php if (isset($_GET['editUchastok'])): ?>
  <h4 class="text-center <?= $visibleForAdmin ?>">Редактирование участка</h4>
<?php else: ?>
  <h4 class="text-center <?= $visibleForAdmin ?>">Добавление участка</h4>
<?php endif ?>

<form method="POST" class="add-uchastok border border-secondary <?= $visibleForAdmin ?>">
      
  <div class="form-row">
    <div class="form-group col-md-1">
      <label for="numUchastok">№ уч.</label>
      <input type="text" name="numUchastok" class="form-control" id="numUchastok" value="<?= $uchastok['uchastokNumber'] ?>" required>
    </div>

    <div class="form-group col-md-9">
      <label for="user">Садовод</label>
      <select name="user" class="form-control" id="user">
        <option></option>
        <?php foreach($users as $user):?>
          <?php
          $attr = '';
           if ($user['id'] == $uchastok['user_id']) {
            $attr = 'selected';
           } ?>
          <option value="<?=$user['id']?>" <?=$attr?>><?=$user['sadovod']?></option>
        
        <?php endforeach;?>
      </select>
    </div>

    <div class="form-group col-md-2">
      <label for="button">Новый садовод</label>
      <button type="button" class="btn btn-secondary" id="button"><a href="/admin/users?addUser">Добавить садовода</a></button>
    </div>

  </div>
 
  <div class="form-row">
     <div class="form-group col-md-1">
      <label for="square">Площадь</label>
      <input name="square" class="form-control" id="square" value="<?= $uchastok['square'] ?>">
    </div>

     <div class="form-group col-md-10">
      <label for="comment">Комментарий</label>
      <input type="text" name="comment" class="form-control" id="comment" value="<?= $uchastok['comment'] ?>">
    </div>
  </div>

  <div class="form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox" name="private" <?=$uchastok['private'] == 'Да' ? 'checked':'';?>> Приватизирован
    </label>
  </div>

<?php if (isset($_GET['editUchastok'])): ?>
  	<button type="submit" name="editUchastok" class="btn btn-secondary btn-lg btn-block">Сохранить</button>
<?php else: ?>
	<button type="submit" name="addUchastok" class="btn btn-secondary btn-lg btn-block">Добавить</button>
<?php endif ?>

</form>

<h4 class="text-center">Список участков</h4>
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" style="width: 5%">№</th>
      <th scope="col" style="width: 40%">Садовод</th>
      <th scope="col" style="width: 5%">Площадь</th>
      <th scope="col" style="width: 5%">Приватиз.</th>
      <th scope="col" style="width: 35%">Комментарий</th>
      <th scope="col" colspan="2" class="text-center <?= $visibleForAdmin ?>" style="width: 10%">Действие</th>
    </tr>
  </thead>
  <tbody>
    
      <?php foreach ($uchastki as $uchastok): ?>
        <tr>
          <td><a href="/admin/uchastok/<?=$uchastok['uchastokNumber']?>"><?=$uchastok['uchastokNumber']?></a></td>
          <td><a href="/admin/user/<?=$uchastok['user_id']?>"><?=$uchastok['sadovod']?></a></td>
          <td><?=$uchastok['square']?></td>
          <td><?=$uchastok['private']?></td>
          <td><?=$uchastok['comment']?></td>
          <td class="<?= $visibleForAdmin ?>"><a href="?editUchastok=<?=$uchastok['uchastokNumber']?>">Изм.</a></td>
          <td class="<?= $visibleForAdmin ?>"><a href="#" data-href="?delUchastka=<?=$uchastok['uchastokNumber']?>" data-toggle="modal" data-target="#confirm-delete">Уд.</a></td>
        </tr>

        <!--Модальное окно подтверждения удаления записи таблицы-->
        <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
              <div class="modal-content">
              
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <h4 class="modal-title" id="myModalLabel">Confirm Delete</h4>
                  </div>
              
                  <div class="modal-body">
                      <p>You are about to delete one track, this procedure is irreversible.</p>
                      <p>Do you want to proceed?</p>
                      <p class="debug-url"></p>
                  </div>
                  
                  <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                      <a class="btn btn-danger btn-ok">Delete</a>
                  </div>
              </div>
          </div>
      </div>
      <?php endforeach ?>
    
  </tbody>
</table>
<script>
    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
        
        $('.debug-url').html('Delete URL: <strong>' + $(this).find('.btn-ok').attr('href') + '</strong>');
    });
</script>