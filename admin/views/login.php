<?php
//подключение файла с константами подключения к БД
include("../app/config.php");

// Запись инклуда в переменную
	ob_start();
	include 'elems/password.php';
	$password = ob_get_clean();
