-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 26 2020 г., 11:00
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magistral2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dolgi_chlenskie`
--

CREATE TABLE `dolgi_chlenskie` (
  `id` int(11) NOT NULL,
  `uchastok_id` int(10) UNSIGNED NOT NULL,
  `do2016` float(5,2) NOT NULL,
  `year2017` float(5,2) NOT NULL,
  `year2018` float(5,2) NOT NULL,
  `year2019` float(5,2) NOT NULL,
  `year2020` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dolgi_chlenskie`
--

INSERT INTO `dolgi_chlenskie` (`id`, `uchastok_id`, `do2016`, `year2017`, `year2018`, `year2019`, `year2020`) VALUES
(30, 3, 58.00, 0.00, 0.00, 0.00, 0.00),
(36, 1, 0.00, 0.00, 0.00, 7.05, 0.00),
(37, 2, 0.00, 56.58, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Структура таблицы `uchastki`
--

CREATE TABLE `uchastki` (
  `id` int(4) UNSIGNED NOT NULL,
  `user_id` int(4) NOT NULL,
  `square` float(5,2) DEFAULT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uchastki`
--

INSERT INTO `uchastki` (`id`, `user_id`, `square`, `comment`) VALUES
(1, 19, 8.00, ''),
(5, 20, 4.00, '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `surname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` int(8) DEFAULT NULL,
  `address` varchar(30) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `phone`, `address`, `comment`) VALUES
(20, 'Пупкин', 'Федя', 8888, 'Васляева', ''),
(21, 'Смирнов', 'Сеня', 878454, 'ПГС', 'привет'),
(22, 'Портнов', 'Петя', 878, '', ''),
(23, '', 'вавпв', 78, '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dolgi_chlenskie`
--
ALTER TABLE `dolgi_chlenskie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uchastok_id` (`uchastok_id`);

--
-- Индексы таблицы `uchastki`
--
ALTER TABLE `uchastki`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dolgi_chlenskie`
--
ALTER TABLE `dolgi_chlenskie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
