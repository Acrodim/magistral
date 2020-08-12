<!doctype html>
<html lang="en">
  <head>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-130269422-3"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-130269422-3');
    </script>

    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">

    <title>Магистраль</title>
  </head>
  <body>

  <header>
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="/admin">СВТ "Магистраль"<span class="<?= $visibleForPravlenie ?>"><?= $_SESSION['loginSurname'] ?></span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="/admin">Главная</a></li>
            <li class="nav-item"><a class="nav-link" href="/admin/51">Маршрутки</a></li> 
            <li class="nav-item"><a class="nav-link" href="/admin/poliv">Полив</a></li>    
            <li class="nav-item"><a class="nav-link" href="/admin/tarif">Тарифы</a></li>
            <li class="nav-item"><a class="nav-link" href="/admin/grafik">Контора</a></li> 
            <li class="nav-item <?= $visibleForPravlenie ?>"><a class="nav-link" href="/admin/uchastki" >Участки</a></li>
            <li class="nav-item <?= $visibleForPravlenie ?>"><a class="nav-link" href="/admin/users">Садоводы</a></li> 
            <li class="nav-item <?= $visibleForAdmin ?>"><a class="nav-link" href="/admin/dolgi">Должники</a></li>
            <li class="nav-item"><a class="nav-link" href="/admin/contacts">Контакты</a></li> 
            <li class="nav-item"><a class="nav-link" href="<?= $loginLink ?>"><?= $loginTitle ?></a></li> 
          </ul>
        </div>
      </nav>
    </div>
  </header>

  <div class="container">
    
    <?php require_once 'views/elems/info.php'; ?>
    <?= $formAuthor ?>
    <?php require_once 'views/' . $view . '.php';?>
    
  </div>
  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>
  </body>
</html>