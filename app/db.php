<?php

// Подключение к БД
function connect() {
    $link = mysqli_connect(HOST, DB_USER, DB_PASSWORD, DB_NAME) or die("Ошибка соединения с базой");
    mysqli_set_charset($link, "utf8") or die("Error coding");
    return $link;
}

// Выборка всех садоводов
function getAllUsers() {
	$link = connect();
	$query = "SELECT id, CONCAT_WS(' ', surname, name) AS 'sadovod', phone, address, comment FROM users ORDER BY surname ASC";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

// Выборка всех участков
function getAllUchastki() {
	$link = connect();
	$query = "SELECT uch.id AS 'uchastokNumber', uch.square, uch.private, uch.comment AS 'comment', CONCAT_WS(' ', u.surname, u.name) AS 'sadovod', u.id AS user_id FROM uchastki uch
		LEFT JOIN users u ON uch.user_id = u.id
		ORDER BY uch.id ASC";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

// Выборка всех участков определённого садовода
function getUchastkiByUserId($id) {
	$link = connect();
	$query = "SELECT uch.id AS 'uchastokNumber', uch.square, uch.private, uch.comment AS 'comment', CONCAT_WS(' ', u.surname, u.name) AS 'sadovod', u.phone, u.address FROM uchastki uch
		LEFT JOIN users u ON uch.user_id = u.id
		WHERE u.id = $id
		ORDER BY uch.id ASC";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_all($result, MYSQLI_ASSOC);
}

// Выборка данных садовода по ID
function getUserByID($id) {
	$link = connect();
	$query = "SELECT id, surname, name, phone, address, comment FROM users WHERE id = $id";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_assoc($result);
}

// Редактирование данных о садоводе
function editUser() {
	$link = connect();
	$query = "UPDATE users SET surname='{$_POST['surname']}', name='{$_POST['name']}', phone='{$_POST['phone']}', address='{$_POST['address']}', comment='{$_POST['comment']}' WHERE id='{$_POST['id']}'";
	$result = mysqli_query($link, $query);
}

// Редактирование данных об участке
function editUchastok() {
	if ($_POST['private'] == 'on') {
		$private = 'Да';
	} else {
		$private = 'Нет';
	}
	$link = connect();
	$query = "UPDATE uchastki SET user_id='{$_POST['user']}', square='{$_POST['square']}', private='$private', comment='{$_POST['comment']}' WHERE id='{$_POST['numUchastok']}'";
	$result = mysqli_query($link, $query);
}

// Выборка данных участка по ID
function getUchastokByID($id) {
	$link = connect();
	$query = "SELECT uch.id AS 'uchastokNumber', uch.square AS 'square', uch.private, uch.comment AS 'comment', CONCAT_WS(' ', u.surname, u.name) AS 'sadovod', u.id AS user_id, e.counter, e.date FROM uchastki uch
			LEFT JOIN users u ON uch.user_id = u.id
			LEFT JOIN electro e ON uch.id = e.uchastok_id
			WHERE uch.id = $id/* AND e.date = (SELECT MAX(date) FROM electro WHERE electro.uchastok_id = $id)*/";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_assoc($result);
}

// Добавление участка
function addUchastok() {
	if ($_POST['private'] == 'on') {
		$private = 'Да';
	} else {
		$private = 'Нет';
	}
	$link = connect();
	$query = "INSERT INTO uchastki (id, user_id, square, private, comment) VALUES ('{$_POST['numUchastok']}', '{$_POST['user']}', '{$_POST['square']}', '$private', '{$_POST['comment']}')";
	$result = mysqli_query($link, $query);
}

// Добавление садовода
function addUser() {
	$link = connect();
	$query = "INSERT INTO users (surname, name, phone, address, comment) VALUES ('{$_POST['surname']}', '{$_POST['name']}', '{$_POST['phone']}', '{$_POST['address']}', '{$_POST['comment']}')";
	$result = mysqli_query($link, $query);
}

// Добавление должника
function addDolg() {
	//$summa = $_POST['summa'];
	//$year = $_POST['year'];
	$link = connect();
	$query = "INSERT INTO dolgi_chlenskie (uchastok_id, do2016, year2017, year2018, year2019, year2020) VALUES ('{$_POST['numUchastok']}', '{$_POST['do2016']}', '{$_POST['year2017']}', '{$_POST['year2018']}', '{$_POST['year2019']}', '{$_POST['year2020']}')";
	$result = mysqli_query($link, $query);
}

// Выборка участков с долгом
function getDolgi() {
		$link = connect();
		$query = "SELECT d_ch.uchastok_id, d_ch.do2016, d_ch.year2017, d_ch.year2018, d_ch.year2019, d_ch.year2020, (d_ch.do2016+ d_ch.year2017 + d_ch.year2018 + d_ch.year2019 + d_ch.year2020) AS vsego, CONCAT_WS(' ', u.surname, u.name) AS 'sadovod' FROM dolgi_chlenskie d_ch
		LEFT JOIN uchastki uch ON uch.id = d_ch.uchastok_id
		LEFT JOIN users u ON uch.user_id = u.id";
		$result = mysqli_query($link, $query);
		return mysqli_fetch_all($result, MYSQLI_ASSOC);
	}

// Удаление участка
function delUchastok($id) {
	$link = connect();
	$query = "DELETE FROM uchastki WHERE id = '$id'";
	$result = mysqli_query($link, $query);
}

// Удаление садовода
function delUser($id) {
	$link = connect();
	$query = "DELETE FROM users WHERE id = '$id'";
	$result = mysqli_query($link, $query);
}

// Проверка логина и пароля для входа
function checkLoginPassword($login) {
	$link = connect();
	// Экранирование значений, вводимых в поле Логин формы авторизации
	$safeLogin = mysqli_real_escape_string($link, $_POST['login']);
	$query = "SELECT a.login, a.password, a.user_id, a.access, u.surname AS loginSurname FROM auth a
	LEFT JOIN users u ON a.user_id = u.id
	WHERE login = '$safeLogin'";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_assoc($result);
}

// Добавление показаний электросчётчиков
function addElectro() {
	$link = connect();
	$query = "INSERT INTO electro (uchastok_id, counter, controller, comment) VALUES ('{$_POST['numUchastok']}', '{$_POST['counter']}', '{$_POST['controller']}', '{$_POST['comment']}')";
	$result = mysqli_query($link, $query);
}

// Выборка показаний всех счётчиков за всё время
function getAllElectro() {
	$link = connect();
	$query = "SELECT uchastok_id, counter, controller, date, comment FROM electro ORDER BY date DESC";
	$result = mysqli_query($link, $query);
	return mysqli_fetch_all($result, MYSQLI_ASSOC);
}
