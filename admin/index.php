<?php
/*error_reporting(-1);
ini_set('display_errors', 'on');*/

// Подключение к базе данных
require_once('../app/db.php');

//подключение файла с функциями
require_once("../app/function.php");

//подключение файла с константами подключения к БД
require_once("../app/config.php");

// Разбор URL для ЧПУ (.htaccess)
$url = parseUrl($_SERVER['REQUEST_URI']);
//dump($url);exit;

$view = ($url[1]) ? $url[1] : 'main';
//dump($view);exit;

// Права доступа
	# Для администратора
if ($_SESSION['auth'] == true AND $_SESSION['access'] == 'admin') {
	$visibleForPravlenie = '';
	$visibleForAdmin = '';
	$loginLink = "/admin/loginout";
	$loginTitle = 'Выход';

	# Для члена правления
} elseif ($_SESSION['auth'] == true AND $_SESSION['access'] == 'pravlenie') {
	$visibleForPravlenie = '';
	$visibleForAdmin = 'd-none';
	$loginLink = "/admin/loginout";
	$loginTitle = 'Выход';

	/*# Для кассира
} elseif ($_SESSION['auth'] == true AND $_SESSION['access'] == 'kassa') {

	$visibleForPravlenie = '';
	$visibleForAdmin = 'd-none';
	$loginLink = "/admin/loginout";
	$loginTitle = 'Выход';
*/
	# Для посетителя сайта
} else {
	$visibleForPravlenie = 'd-none';
	$visibleForAdmin = 'd-none';
	$loginLink = "/admin/login";
	$loginTitle = 'Вход';
}
//--------------------------------

// Цикл подтягивания нужной страницы в шаблон
switch ($view) {
	case 'main':
	break;

	case 'uchastki':# Страница со списком участков
		if ($_SESSION['auth'] == true) {
			$uchastki = getAllUchastki();
	   		$users = getAllUsers();
		} else {
			header('Location: 404');
		}
	break;

	 case 'uchastok':# Страница со списком участков конкретного садовода
	 	if ($_SESSION['auth'] == true) {
		    $id = $url[2];
		    // Назначаем переменной целочисленный тип
		    settype($id, 'integer');
			$uchastok = getUchastokByID($id);
			//dump($uchastok);
		} else {
			header('Location: 404');
		}
	break;

	case 'users':# Страница со списком садоводов
		if ($_SESSION['auth'] == true) {
			$users = getAllUsers();
		} else {
			header('Location: 404');
		}
	break;

	 case 'user':# Страница со списком участков конкретного садовода
	 	if ($_SESSION['auth'] == true) {
		    $id = $url[2];
		    // Назначаем переменной целочисленный тип
		    settype($id, 'integer');
			$user = getUchastkiByUserId($id);
		} else {
			header('Location: 404');
		}
	break;

	case 'electro':# Страница со списком садоводов
		if ($_SESSION['auth'] == true) {
			$users = getAllUsers();
			$uchastki = getAllUchastki();
			$electroAll = getAllElectro();
			//dump($electroAll);
		} else {
			header('Location: 404');
		}
	break;

	case '51':# Страница с расписанием маршруток
	break;

	case 'tarif':# Страница с тарифами
	break;

	case 'poliv':# Страница с расписанием поливов
	break;

	case 'grafik':# Страница с расписанием работы конторы 
	break;

	case 'dolgi':# Страница с должниками
		if ($_SESSION['auth'] == true) {
			$dolgi = getDolgi();
			$uchastki = getAllUchastki();
		} else {
			header('Location: 404');
		}
	break;

	case 'login':# Страница с авторизацией

		if (!empty($_POST['login']) AND !empty($_POST['password'])) {

			// Проверяем есть ли введённый логин в БД
			$check = checkLoginPassword($login);

			// Если логин и пароль верные, то записываем данные пользователя в сессию
			if ($check['password'] == $_POST['password']) {
				$formAuthor = '';
				$_SESSION['auth'] = true;
				$_SESSION['login'] = $check['login'];
				$_SESSION['access'] = $check['access'];
				$_SESSION['loginSurname'] = $check['loginSurname'];

				$_SESSION['message'] = ['text' => 'Вы авторизованы!', 'status' => 'success'];

				header('Location: main');

			// Если логин и пароль неверные, то направляем на страницу авторизации 
			} else {
				header('Location: login');
			}
			
		} else {
			// Запись инклуда в переменную
			ob_start();
			include_once 'views/formAuthor.php';
			$formAuthor = ob_get_clean();
		}

	break;

	case 'loginout':# Страница для выхода из профиля 
		session_start();

		session_destroy();

		header('Location: /admin/'); die;
	break;

	case 'contacts':# Страница с контактами 
	break;

	// Вывод 404 страницы
	default: $view = page404();

}

// Добавление нового участка
if (isset($_POST) AND isset($_POST['addUchastok'])) {
	//dump($_POST);
	addUchastok();
	header('Location: uchastki');
}

// Добавление нового садовода
if (isset($_POST) AND isset($_POST['addUser'])) {
	//dump($_POST);
	addUser();
	header('Location: users');
}

// Удаление участка
if (isset($_GET['delUchastka'])) {
	$id = $_GET['delUchastka'];
	// Назначаем переменной целочисленный тип
	settype($id, 'integer');
	delUchastok($id);
	header('Location: uchastki');
}

// Удаление садовода
if (isset($_GET['delUser'])) {
	$id = $_GET['delUser'];
	// Назначаем переменной целочисленный тип
	settype($id, 'integer');
	delUser($id);
	header('Location: users');
}

// Редактирование сведений про участок
if (isset($_GET['editUchastok'])) {
	$id = $_GET['editUchastok'];
	// Назначаем переменной целочисленный тип
	settype($id, 'integer');
	$uchastok = getUchastokByID($id);
	//$view = 'edit_uchastok';
}

// Сохраниение данных после редактирования данных об участке
if (isset($_POST) AND isset($_POST['editUchastok'])) {
	//dump($_POST);
	editUchastok();
	header('Location: uchastki');
}

// Редактирование сведений про садовода
if (isset($_GET['editUser'])) {
	$id = $_GET['editUser'];
	// Назначаем переменной целочисленный тип
	settype($id, 'integer');
	$user = getUserByID($id);
	//dump($user);
	//$view = 'edit_user';
}

// Сохраниение данных после редактирования данных о садоводе
if (isset($_POST) AND isset($_POST['editUser'])) {
	//dump($_POST);
	editUser();
	header('Location: users');
}

// Добавление долга
if (isset($_POST) AND isset($_POST['addDolg']) AND ($_POST['do2016'] > 0 OR $_POST['year2017'] > 0 OR $_POST['year2018'] > 0 OR $_POST['year2019'] > 0 OR $_POST['year2020'] > 0)) {
	//$id = $_POST['numUchastok'];
	//dump($_POST);exit;
	addDolg();
	header('Location: dolgi');
}

// Добавление показаний электросчётчика
if (isset($_POST) AND isset($_POST['saveElectro'])) {
	//dump($_POST);exit;
	addElectro();
	header('Location: electro');
}

// Подключение шаблона
require_once 'views/layout.php'; 
