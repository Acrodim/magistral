  <div class="grid-posts">
    <div class="container">
      <div class="row d-flex justify-content-around">
			
			<div class="card border" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/51" class="btn btn-primary stretched-link">Маршрутки</a>
			  </div>
			</div>

			<div class="card border" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/poliv" class="btn btn-primary stretched-link">Полив</a>
			  </div>
			</div>

			<div class="card border" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/tarif" class="btn btn-primary stretched-link">Тарифы</a>
			  </div>
			</div>

			<div class="card border" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/grafik" class="btn btn-primary stretched-link">График конторы</a>
			  </div>
			</div>

			<div class="card border <?= $visibleForPravlenie ?>" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/uchastki" class="btn btn-primary stretched-link">Участки</a>
			  </div>
			</div>

	       	<div class="card border <?= $visibleForPravlenie ?>" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/users" class="btn btn-primary stretched-link">Садоводы</a>
			  </div>
			</div>

			<div class="card border <?= $visibleForPravlenie ?>" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/electro" class="btn btn-primary stretched-link">Показания счётчиков</a>
			  </div>
			</div>

			<div class="card border" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/contacts" class="btn btn-primary stretched-link">Контакты</a>
			  </div>
			</div>

			<div class="card border <?= $visibleForAdmin ?>" style="width: 18rem;">
			  <div class="card-body">
			    <a href="/admin/dolgi" class="btn btn-primary stretched-link">Должники</a>
			  </div>
			</div>

      </div>
    </div>
  </div>