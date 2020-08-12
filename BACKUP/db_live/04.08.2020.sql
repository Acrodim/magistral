-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 05 2020 г., 00:04
-- Версия сервера: 10.3.22-MariaDB-54+deb10u1
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `zzzorro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auth`
--

INSERT INTO `auth` (`id`, `login`, `password`, `user_id`, `access`) VALUES
(1, 'Acrodim', '1985', 163, 'admin'),
(2, 'user', '2020', 113, 'pravlenie');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dolgi_chlenskie`
--

INSERT INTO `dolgi_chlenskie` (`id`, `uchastok_id`, `do2016`, `year2017`, `year2018`, `year2019`, `year2020`) VALUES
(30, 3, 58.00, 0.00, 0.00, 0.00, 0.00),
(36, 1, 0.00, 0.00, 0.00, 7.05, 0.00),
(37, 2, 0.00, 56.58, 0.00, 0.00, 0.00),
(38, 14, 0.00, 0.00, 0.00, 528.85, 0.00);

-- --------------------------------------------------------

--
-- Структура таблицы `electro`
--

CREATE TABLE `electro` (
  `id` int(11) NOT NULL,
  `uchastok_id` int(3) NOT NULL,
  `counter` int(11) NOT NULL,
  `controller` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `comment` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `electro`
--

INSERT INTO `electro` (`id`, `uchastok_id`, `counter`, `controller`, `date`, `comment`) VALUES
(1, 1, 4578, 'Новичков', '2020-08-04 00:00:00', ''),
(2, 7, 4757, 'Караман', '2020-08-04 00:00:00', ''),
(3, 135, 54236, 'Новичков', '2020-08-04 00:00:00', ''),
(4, 8, 252, 'Новичков', '2020-08-04 00:00:00', 'Вынести на фасад'),
(5, 7, 552, 'Новичков', '2020-08-04 00:00:00', ''),
(6, 5, 554, 'Новичков', '2020-08-05 00:00:32', '');

-- --------------------------------------------------------

--
-- Структура таблицы `uchastki`
--

CREATE TABLE `uchastki` (
  `id` int(4) UNSIGNED NOT NULL,
  `user_id` int(4) NOT NULL,
  `square` float(5,2) DEFAULT NULL,
  `private` varchar(3) DEFAULT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uchastki`
--

INSERT INTO `uchastki` (`id`, `user_id`, `square`, `private`, `comment`) VALUES
(1, 25, 7.00, 'Да', 'Приват 7 сот + 2 полисадник'),
(4, 28, 5.21, 'Нет', ''),
(2, 26, 6.50, 'Да', ''),
(3, 27, 5.30, 'Да', ''),
(5, 29, 0.00, 'Нет', ''),
(6, 30, 5.40, 'Да', 'Пр. №1 от 03.03.2019'),
(7, 31, 5.49, 'Да', 'Пр. №3 от 04.11.2018'),
(8, 32, 5.27, 'Да', '14.11.1992 вопрос'),
(9, 33, 5.21, 'Да', 'Пр. №2 от 01.11.2015'),
(10, 33, 5.26, 'Нет', ''),
(11, 34, 0.00, 'Нет', ''),
(12, 34, 0.00, 'Нет', ''),
(13, 35, 5.50, 'Нет', ''),
(14, 36, 5.60, 'Да', 'Пр. №1 от 18.01.2015'),
(15, 37, 5.55, 'Да', '11.02.2007'),
(16, 38, 5.48, 'Да', '10.06.2007'),
(17, 39, 5.71, 'Нет', ''),
(18, 40, 5.02, 'Да', 'Пр. №1 от 18.01.2015 (Приват от 2017)'),
(19, 41, 5.15, 'Да', 'Пр. №3 от 04.11.2018'),
(20, 42, 8.05, 'Да', '05.05.1991'),
(21, 43, 9.01, 'Да', 'Пр. №2 от 01.11.2015'),
(22, 44, 6.00, 'Да', 'Пр. №3 от 04.11.2018'),
(23, 45, 0.00, 'Да', 'Пр. №1 от 18.01.2015'),
(24, 40, 6.46, 'Да', 'Пр. №1 от 18.01.2015 (Приват от 2017)'),
(25, 46, 6.07, 'Да', 'Пр. №2 от 01.11.2016'),
(26, 46, 5.90, 'Да', 'Пр. №3 от 05.11.2017'),
(27, 47, 6.22, 'Да', 'Пр. №2 от 01.11.2015'),
(28, 48, 6.33, 'Да', 'Пр. №1 от 11.02.2018'),
(29, 49, 0.00, 'Да', 'Пр. №2 от 06.05.2018'),
(30, 50, 6.31, 'Да', '24.09.2006'),
(31, 51, 6.21, 'Да', 'Пр. №3 от 04.11.2018'),
(32, 52, 6.20, 'Да', 'Пр. №2 от 24.04.2016 (Приват 24.12.2015)'),
(33, 53, 9.46, 'Нет', ''),
(34, 54, 6.00, 'Да', ''),
(35, 54, 6.00, 'Да', ''),
(36, 55, 6.60, 'Да', 'Пр. №1 от 20.01.2013'),
(37, 56, 7.00, 'Да', '21.10.1988'),
(38, 57, 7.99, 'Да', 'Приват от 12.09.211 (13.05.1988)'),
(39, 58, 10.93, 'Да', 'Приват от 2016 (14.04.1988)'),
(40, 59, 10.57, 'Да', 'Приват от 2016г.'),
(41, 60, 9.54, 'Да', 'Пр. №1 от 07.02.2016'),
(42, 61, 6.06, 'Нет', '04.07.1991'),
(43, 62, 6.00, 'Да', ''),
(44, 63, 8.98, 'Нет', ''),
(45, 64, 6.65, 'Да', 'Пр. №2 от 27.10.2019'),
(46, 65, 6.65, 'Да', 'Пр. №2 от 27.10.2019'),
(47, 66, 0.00, 'Нет', ''),
(48, 67, 6.77, 'Нет', ''),
(49, 68, 7.17, 'Нет', '16.05.1988'),
(50, 69, 6.78, 'Да', 'Пр. №2 от 06.05.2018'),
(51, 70, 6.00, 'Нет', '14.03.2007'),
(52, 71, 7.18, 'Да', 'Пр. №2 от 24.04.2016'),
(53, 70, 7.18, 'Нет', ''),
(54, 72, 0.00, 'Нет', '25.12.1989'),
(55, 73, 5.71, 'Нет', '16.08.1989'),
(56, 74, 6.73, 'Нет', '16.07.1998'),
(57, 75, 0.00, 'Нет', ''),
(58, 76, 7.50, 'Нет', '12.2002'),
(59, 77, 7.55, 'Нет', ''),
(60, 78, 7.00, 'Да', '11.11.1988'),
(61, 79, 7.50, 'Да', 'Пр. №2 от 01.11.2015'),
(62, 80, 7.50, 'Да', 'Пр. №2 от 27.10.2019'),
(63, 81, 0.00, 'Да', 'Пр. №2 от 01.11.2015'),
(64, 82, 9.50, 'Да', 'Пр. #1 от 18.01.2015'),
(65, 83, 7.20, 'Да', 'Пр. #1 от 18.01.2015'),
(66, 84, 10.00, 'Нет', ''),
(67, 85, 7.58, 'Нет', ''),
(68, 86, 8.72, 'Нет', ''),
(69, 87, 4.77, 'Нет', ''),
(70, 88, 7.15, 'Нет', ''),
(71, 89, 4.00, 'Нет', '06.04.1990'),
(72, 90, 4.63, 'Да', 'Приват от 20.10.2008 (12.11.2006)'),
(73, 90, 4.59, 'Да', 'Приват от 20.10.2008 (13.05.1988)'),
(74, 91, 4.77, 'Да', 'Приват от 17.09.2008'),
(75, 92, 5.00, 'Нет', ''),
(76, 93, 5.90, 'Нет', '11.05.2008'),
(77, 94, 5.60, 'Нет', ''),
(78, 95, 6.23, 'Нет', ''),
(79, 96, 5.96, 'Нет', '27.05.2007'),
(80, 96, 5.98, 'Нет', '24.04.1989'),
(81, 97, 5.48, 'Да', 'Пр. №2 от 27.10.2019 (Приват от 08.08.2008)'),
(82, 98, 5.63, 'Да', '19.11.2005'),
(83, 99, 5.12, 'Нет', 'Пр. №?'),
(84, 100, 4.26, 'Нет', ''),
(85, 101, 4.37, 'Нет', ''),
(86, 93, 4.10, 'Нет', ''),
(87, 102, 4.35, 'Нет', ''),
(88, 103, 4.41, 'Да', 'Пр. №2 от 06.05.2018'),
(89, 103, 4.75, 'Да', 'Пр. №3 от 04.11.2018'),
(90, 104, 4.21, 'Нет', '12.06.1990'),
(91, 105, 4.00, 'Да', ''),
(92, 106, 4.46, 'Нет', ''),
(93, 107, 4.18, 'Нет', ''),
(94, 108, 4.43, 'Нет', ''),
(95, 109, 4.00, 'Да', 'Пр. №2 от 24.04.2016'),
(96, 109, 4.00, 'Да', 'Пр. №2 от 24.04.2016'),
(97, 110, 4.59, 'Да', 'Пр. №1 от 26.02.2017'),
(98, 106, 4.33, 'Нет', ''),
(99, 106, 4.33, 'Нет', ''),
(100, 105, 4.00, 'Да', ''),
(101, 111, 5.72, 'Да', 'Пр. №2 от 27.10.2019'),
(102, 112, 5.28, 'Нет', '11.06.1995'),
(103, 113, 4.00, 'Да', ''),
(104, 114, 4.60, 'Нет', ''),
(105, 115, 5.25, 'Да', 'Пр. №1 от 27.03.2011'),
(106, 116, 4.54, 'Нет', '10.05.1988'),
(107, 117, 4.25, 'Да', 'Пр. №2 от 01.11.2015'),
(108, 113, 4.00, 'Да', ''),
(109, 118, 4.33, 'Нет', ''),
(110, 119, 7.36, 'Нет', ''),
(111, 120, 10.87, 'Да', 'Пр. №1 от 03.03.2019'),
(112, 121, 4.86, 'Нет', ''),
(113, 122, 4.60, 'Нет', ''),
(114, 123, 5.95, 'Нет', ''),
(115, 121, 5.38, 'Нет', ''),
(116, 124, 4.00, 'Да', 'Пр. №2 от 01.11.2015'),
(117, 125, 4.71, 'Нет', ''),
(118, 126, 4.85, 'Нет', ''),
(119, 127, 0.00, 'Нет', ''),
(120, 128, 4.00, 'Нет', ''),
(121, 129, 4.82, 'Нет', ''),
(122, 118, 8.00, 'Да', 'Пр. №3 от 04.11.2018'),
(123, 130, 4.00, 'Нет', ''),
(124, 131, 7.00, 'Нет', '19.06.2011'),
(125, 132, 6.09, 'Да', 'Пр. №1 от 18.01.2015'),
(126, 133, 5.17, 'Нет', ''),
(127, 134, 4.00, 'Нет', ''),
(128, 135, 11.45, 'Да', 'Пр. №2 от 24.04.2016'),
(129, 136, 4.64, 'Да', 'Пр. №2 от 01.11.2015'),
(130, 137, 4.26, 'Да', ''),
(131, 138, 4.44, 'Нет', ''),
(132, 139, 4.71, 'Нет', ''),
(133, 140, 4.64, 'Да', 'Пр. №2 от 07.02.2016'),
(134, 141, 7.24, 'Нет', ''),
(135, 142, 7.59, 'Нет', ''),
(136, 143, 0.00, 'Нет', ''),
(137, 144, 6.00, 'Да', ''),
(138, 145, 6.00, 'Да', ''),
(139, 146, 5.65, 'Да', 'Пр. №2 от 27.10.2019'),
(140, 146, 5.65, 'Да', 'Пр. №2 от 27.10.2019'),
(141, 147, 4.00, 'Нет', ''),
(142, 148, 4.94, 'Нет', ''),
(143, 149, 8.00, 'Да', 'Пр. №2 от 30.04.2017'),
(144, 150, 5.10, 'Нет', ''),
(145, 151, 4.18, 'Да', 'Приват от 03.08.2011 (П № от 1990г)'),
(146, 152, 4.32, 'Да', 'Пр. №2 от 27.10.2019'),
(147, 153, 4.40, 'Да', 'Пр. №1 от 18.01.2015'),
(148, 154, 4.27, 'Да', 'Пр. №3 от 05.11.2017'),
(149, 155, 4.52, 'Да', 'Пр. №3 от 30.10.2016'),
(150, 156, 4.50, 'Нет', ''),
(151, 157, 4.51, 'Нет', 'Присм. и оплач. Яско Виктория Викторовна (096) 348-97-74'),
(152, 158, 4.32, 'Нет', ''),
(153, 159, 4.27, 'Нет', ''),
(154, 160, 4.80, 'Нет', ''),
(155, 161, 4.41, 'Нет', ''),
(156, 162, 4.45, 'Нет', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `surname` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(30) NOT NULL,
  `comment` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `phone`, `address`, `comment`) VALUES
(25, 'Дубенко', 'Екатерина Ивановна', '0974011375', 'ул. Скороходова, 54/49', ''),
(26, 'Кыщук', 'Владимир Григорьевич', '0938070946', 'пр. Ленина, 12/55', ''),
(27, 'Сульженко', 'Виталий Викторович', '0667726586', 'СВТ', ''),
(28, 'Наумова', 'Татьяна Ивановна', '0979349893', 'ул. Херсонское шоссе, 32/8', ''),
(29, 'Пономаренко', 'Михаил Валентинович', '0977310007', 'пер. Городской, 16', '0977310002 жена Лариса'),
(30, 'Измайлова', 'Светлана Петровна', '0731170754', 'ул. Христо Ботьева, 38', 'сын Евгений (063) 376-90-25'),
(31, 'Бабченко', 'Анна Сергеевна', '0933800355', 'ул. 8-я Военная, 64', '(096) 617-88-74'),
(32, 'Саенко', 'Валерий Васильевич', '0937217102', 'ул. Колодезная, 10/109', '(099) 981-54-26, 30-02-31'),
(33, 'Березовский', 'Николай Николаевич', '', '', ''),
(34, 'Ивашкевич', 'Людмила Ивановна', '0636233054', 'ул. колодезная, 3а/46', ''),
(35, 'Врещ', 'Олег Анатольевич', '0683134418', 'СВТ', ''),
(36, 'Врещ', 'Вита Николаевна', '0989212556', 'СВТ', ''),
(37, 'Кречик', 'Сергей Николаевич', '0977875198', 'ул. Херсонское Шоссе, 32/8', '23-29-37'),
(38, 'Бахур', 'Анатолий Викторович', '0671171174', 'ул. Силикатная, 277/8', ''),
(39, 'Дудниченко', 'Владимир Владимирович', '0955774577', '', ''),
(40, 'Крамаренко', 'Оксана Марковна', '', 'ул. Николаевская, 11/78', ''),
(41, 'Срибна', 'Кристина Васильевна', '0634004747', 'ул. Силикатная, 283/59', ''),
(42, 'Дынник', 'Сергей Иванович', '0938475863', 'ул. Б. Морская, 62', ''),
(43, 'Зелинский', 'Анатолий Станиславович', '', 'СВТ', ''),
(44, 'Старушко', 'Екатерина Николаевна', '0936673708', 'СВТ', ''),
(45, 'Золин', 'Виктор Эрнестович', '0955777968', 'ул. Урицкого, 2б/3', ''),
(46, 'Халявка', 'Евдокия Павловна', '0634763613', 'с. Мешково-Погорелово, ул. Шко', ''),
(47, 'Житников', 'Анатолий Викторович', '0632282803', 'ул. Красных Маёвщиков, 19б/49', ''),
(48, 'Сергиенко', 'Юрий Николаевич', '0995162708', 'с. Ровное, ул. Зелёная, 51', ''),
(49, 'Харланов', 'Николай Николаевич', '0673653672', 'пр. Центральный, 152а/19', ''),
(50, 'Прокопчук', 'Александр Олегович', '0930827289', 'СВТ', ''),
(51, 'Кукла', 'Николай Сергеевич', '0987323126', 'с. Дымовка, ул. Победы, 27', ''),
(52, 'Перебейнос', 'Оксана Ивановна', '0662672745', 'ул. Крылова, 33/94', ''),
(53, 'Агаларова', 'Полина Владимировна', '0995154110', 'ул. Западная, 22', ''),
(54, 'Прокопенко', 'Владимир Владимирович', '', 'СВТ', ''),
(55, 'Железков', 'Игорь Анатольевич', '0930694134', 'ул. Красных Маёвщиков, 25/116', '(066) 347-35-09'),
(56, 'Шевчко', 'Николай Петрович', '0935323575', 'ул. Заводская, 2/9', '50-71-30'),
(57, 'Блинцов', 'Владимир Петрович', '0937194138', 'СВТ', '(066) 563-12-24'),
(58, 'Кононюк', 'Александр Андреевич', '0675153639', '', 'умер'),
(59, 'Кононюк', 'Павел Александрович', '0677868188', '', ''),
(60, 'Майшану', 'Иван Андреевич', '0952536886', 'СВТ', ''),
(61, 'Ахмедова', 'Ольга Александровна', '0931045218', 'ул. Колодезная, 10/215', '24-26-55б (050) 572-78-60'),
(62, 'Пикельный', 'Анатолий Александрович', '0992756419', 'СВТ', ''),
(63, 'Нефериди', 'Людмила Филипповна', '0959074439', 'ул. Колодезная, 10/215', '24-26-55'),
(64, 'Драгуцан', 'Юрий Павлович', '0934873849', 'пер. Парусный, 7а/34', ''),
(65, 'Драгуцан', 'Владлена Игоревна', '0939536470', 'пер. Парусный, 7а/34', ''),
(66, 'Олейникова', 'Виктория Николавена', '0931432453', 'ул. Апрельская, 52/12', 'дочь'),
(67, 'Маланчук', 'Виктор Анатольевич', '0960771684', 'СВТ', ''),
(68, 'Кубаренко', 'Николай Яковлевич', '0950277046', 'пр. Мира, 46/108', '21-47-10'),
(69, 'Гелеверя', 'Михаил Александрович', '0983937743', 'СВТ', 'Херсонская обл. с.Гавриловка, ул. Ленина, 26 '),
(70, 'Бабак', 'Зоя Игоревна', '0512582298', 'ул. Космонавтов, 59а/14', ''),
(71, 'Бабак', 'Виталий Игоревич', '', '', ''),
(72, 'Савич', 'Наталья Ивановна', '0669528766', 'ул. Адмиральская, 2, корп.3 кв', ''),
(73, 'Голубник', 'Степан Васильевич', '', 'ул. Силикатная, 283/15', ''),
(74, 'Курочкин', 'Владимир Григорьевич', '0634196923', 'ул. Колодезная, 37/63', ''),
(75, 'Чмелёв', 'Николай Иванович', '0996051455', 'пр. Ленина, 24/22', '(098) 842-27-49, 36-58-58'),
(76, 'Король', 'Юрий Михайлович', '0661882134', 'ул. Чкалова, 78/107', '46-45-42'),
(77, 'Колесник', 'Владимир Васильевич', '0632917828', 'СВТ', ''),
(78, 'Нупеченко', 'Валентина Григорьевна', '0512344708', 'ул. Крылова, 15а/16', '?'),
(79, 'Позняк', 'Александр Александрович', '0661659130', '', ''),
(80, 'Галиченко', 'Анна Владимировна', '0666543176', 'ул. Новобугская, 120 корп. 101', '(063) 719-26-76. (096) 966-31-24 - мама Вера Григо'),
(81, 'Уманец', 'Александр Юрьевич', '0512245624', 'ул. Комсомольская, 49/46', 'папа Юрий Васильевич (066) 935-42-96'),
(82, 'Свистун', 'Андрей Леонидович', '0961485615', 'СВТ', ''),
(83, 'Свистун', 'Богдана Николаевна', '0968198710', 'СВТ', ''),
(84, 'Жевак', 'Александр Петрович', '0512424476', 'ПГС, 75в/21', ''),
(85, 'Кондратенко', 'Андрей Викторович', '0636467943', 'ПГУ, 87/23', '42-63-08'),
(86, 'Городашин', 'Николай Серафимович', '0502780178', 'УЛ. Лазурная, 30/52', '41-59-45'),
(87, 'Круль', 'Марина Викторовна', '', 'СВТ', ''),
(88, 'Чабан', 'Иван Олегович', '0676994597', 'СВТ', ''),
(89, 'Зданевич', 'Виктория Петровна', '0634210479', 'пр. Мира, 23/7', ''),
(90, 'Сузинович', 'Елена Всеволодовна', '0663293551', '', '57-01-94'),
(91, 'Стокротян', 'Владимир Владимирович', '0507028705', 'ул. Новостройная, 4', ''),
(92, 'Поплавский', 'Юрий Григорьевич', '0932311550', 'СВТ', ''),
(93, 'Жереш', 'Олег Никитович', '0512421274', 'ПГУ, 15а/97', '?'),
(94, 'Чекова', 'Оксана Анатольевна', '', '', '?'),
(95, 'Ковальчук', 'Василий Григорьевич', '0512421000', 'пер. Парусный, 7а/129', ''),
(96, 'Гришакова', 'Светлана Петровна', '0505038387', 'ПГУ, 85/6', '42-38-76'),
(97, 'Гришаков', 'Сергей Александрович', '0958554622', 'СВТ', '(093) 665-64-33 - жена Катя'),
(98, 'Пахомова', 'Елена Павловна', '0957679043', '', '21-96-32'),
(99, 'Фархадов', 'Бахруз Нурадуин Оглы', '0965999939', 'пр. Центральный, 32/27', ''),
(100, 'Петришина', 'Елена Александровна', '0502981841', 'СВТ', ''),
(101, 'Швыдкая', 'Фаина Васильевна', '0995201534', 'СВТ', ''),
(102, 'Осадчук', 'Валентина Анатольевна', '0975775270', 'ПГУ, 87а/3', '57-08-86'),
(103, 'Настасийчук', 'Виктория Игоревна', '0939413733', 'СВТ', 'Хвостикова'),
(104, 'Романова', 'Наталья Николаевна', '0684155711', 'пр. Центральный, 71а/7', '47-43-87'),
(105, 'Шафранюк', 'Екатерина Павловна', '0965805648', 'ул. Дачная, 13/51', '(096) 311-10-46 - дочь'),
(106, 'Круль', 'Виталий Александрович', '0958587643', 'СВТ', ''),
(107, 'Круль', 'Вадим Александрович', '', '', ''),
(108, 'Моисеев', 'Александр Фёдорович', '0503941566', 'ул. Чкалова, 100а/16', '36-09-42'),
(109, 'Величко', 'Виталий Викторович', '0935006055', 'ПГУ, 72/5', ''),
(110, 'Лисовой', 'Дмитрий Дмитриевич', '', 'СВТ', ''),
(111, 'Колояниди', 'Елена Владимировна', '0997736670', 'ул. Чкалова, 106/9', ''),
(112, 'Артемьев', 'Юрий Николаевич', '0662120758', 'пер. Рейдовый, 7а', '42-21-67'),
(113, 'Караман', 'Татьяна Михайловна', '0997560346', 'ул. Космонавтов, 59а/14', '58-22-98'),
(114, 'Кондратьева', 'Ирина Васильевна', '0512460000', 'ул. Фрунзе, 58/73', ''),
(115, 'Зелинская', 'Оксана Ивановна', '', 'СВТ', ''),
(116, 'Дмитриенко', 'Светлана Евставьевна', '0957859425', 'ул. Мореходная, 1/15', '44-10-59, (093) 03-26-285 - дочь'),
(117, 'Котов', 'Валерий Алексеевич', '0663429744', 'ул. Терновская, 46', '(067) 910-99-76'),
(118, 'Цемма', 'Людмила Всеволодовна', '0967278551', 'ул. Бузника, 12/39', '34-23-35'),
(119, 'Иснюк', 'Людмила Николаевна', '', '', ''),
(120, 'Грибенников', 'Владимир Евгеньевич', '0990746668', '', ''),
(121, 'Бабенко', 'Яков Яковлевич', '0994130836', 'ул. Терновская, 46', '24-84-76'),
(122, 'Чугуева', 'Инна Евгеньевна', '0954424145', 'пр. Октябрьский, 45/77', ''),
(123, 'Безуглов', 'Юрий Ильич', '0966658362', 'СВТ', ''),
(124, 'Бондаренко', 'Татьяна Ивановна', '0951281708', 'ул. Севастопольская, 65/21', ''),
(125, 'Плащевая', 'Ольга Петровна', '0972958020', 'ул. Николаевская, 15а/9', '21-60-02'),
(126, 'Добош', 'Вита Анатольевна', '0938411579', 'СВТ', '(067) 18-28-688'),
(127, 'Борисенко', 'Людмила Фёдоровна', '0664462990', 'СВТ', ''),
(128, 'Пащенко', 'Олег Владимирович', '0662119606', 'СВТ', ''),
(129, 'Плащевая', 'Тамара Яковлевна', '0972958033', 'ул. Николаевская, 15а/9', '21-60-02'),
(130, 'Ага', 'Юрий Анатольевич', '0672153767', 'ул. Космонавтов, 154/46', '46-22-14'),
(131, 'Вербовчук', 'Наталья Валерьевна', '0632771553', 'СВТ', ''),
(132, 'Бурматова', 'Ольга Михайловна', '0502441506', 'СВТ', ''),
(133, 'Чепак', 'Юрий Васильевич', '0512433968', 'ПГС, 20/82', ''),
(134, 'Булдескул', 'Елена Ростиславовна', '0995274932', 'пер. Парусный, 11а/59', '37-97-92'),
(135, 'Принц', 'Оксана Николаевна', '0635633593', 'пер. Баштанский, 20', ''),
(136, 'Дрогальчук', 'Александр Сергеевич', '0968042651', 'пер. Звёздный, 33а', '(068) 747-70-33 - жена Ирина'),
(137, 'Веретнов', 'Александр Павлович', '0988239504', 'ПГС, 93а/20', ''),
(138, 'Соколова', 'Людмила Лукинична', '0506347441', '', '(093) 605-91-91 - дочь, (063) 101-61-00 - муж'),
(139, 'Гуртовенко', 'Любовь Анатольевна', '0666477265', 'ул. Чкалова, 122/71', '(066) 661-51-40, 55-32-69'),
(140, 'Комар', 'Анатолий Лукьянович', '0681951043', 'ул. Чкалова, 108/40', '55-43-20'),
(141, 'Хлопинский', 'Николай Андреевич', '0512360270', 'ул. Шевченко, 16/54', '(095) 28-99-056 - Андрей'),
(142, 'Лунгу', 'Инга Александровна', '0666543693', 'ПГУ, 20г/70', ''),
(143, 'Андреев', 'Алексей Павлович', '0500700087', 'пр. Мира, 10/12', '56-62-77'),
(144, 'Новиченко', 'Анжела Андреевна', '0667498718', '', 'внук Максим ?'),
(145, 'Бесчастный', 'Александр Анатольевич', '0500878993', 'ПГУ, 21/143', '(050) 170-46-22 - брат Виктор Анатольевич'),
(146, 'Горщарук', 'Дмитрий Николаевич', '', 'СВТ', ''),
(147, 'Бундович', 'Людмила Александровна', '0678673150', 'пр. Ленина, 261/31', ''),
(148, 'Андронова', 'Лариса Григорьевна', '', 'ул. Наваринская, 27/6', ''),
(149, 'Сомова', 'Александра Павловна', '0939690419', 'ПГУ, 55/21', ''),
(150, 'Мисюк', 'Лиля Александровна', '0970086632', '', ''),
(151, 'Купарева', 'Любовь Васильевна', '0679182698', 'пер. Парусный, 11а/119', '42-36-69'),
(152, 'Рогач', 'Татьяна Викторовна', '0980778837', 'ПГУ, 97/44', ''),
(153, 'Горщарук', 'Анастасия Владимировна', '0674508151', 'СВТ', ''),
(154, 'Митрофанюк', 'Виталий Павлович', '0674504680', 'ул. 1-я Госпитальная, 2', ''),
(155, 'Третяк', 'Юрий Валерьевич', '0939777103', 'ул. Крылова, 54/240', '41-99-82'),
(156, 'Бабиенко', 'Виктория Васильевна', '0677366535', 'ул. Бутомы, 6а', ''),
(157, 'Долгих', 'Георгий Владимирович', '0672866976', '', 'Присм. и оплач. Яско Виктория Викторовна (096) 348'),
(158, 'Белянская', 'Мария Ивановна', '0506151132', 'ул. Крылова, 46а/61', '34-58-43'),
(159, 'Серебрякова', 'Людмила Григорьевна', '0512372347', 'ул. Адмиральская, 23/7', '(097) 495-99-37 - дочь Татьяна'),
(160, 'Силивоник', 'Светлана Владимировна', '0631281653', 'ул. Наваринская, 25/17', '47-31-37'),
(161, 'Ушахин', 'Владимир Николаевич', '0667814343', 'ул. Дунаева, 39/55', '36-60-68'),
(162, 'Плотников', 'Игорь Юрьевич', '0992638418', 'ПГС, 79б/26', '42-04-63'),
(163, 'Новичков', 'Дмитрий Сергеевич', '0938143136', 'СВТ', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `dolgi_chlenskie`
--
ALTER TABLE `dolgi_chlenskie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uchastok_id` (`uchastok_id`);

--
-- Индексы таблицы `electro`
--
ALTER TABLE `electro`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `dolgi_chlenskie`
--
ALTER TABLE `dolgi_chlenskie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `electro`
--
ALTER TABLE `electro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
