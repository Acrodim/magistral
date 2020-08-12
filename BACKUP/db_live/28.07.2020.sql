-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 28 2020 г., 23:02
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
-- Структура таблицы `uchastki`
--

CREATE TABLE `uchastki` (
  `id` int(4) UNSIGNED NOT NULL,
  `user_id` int(4) NOT NULL,
  `square` float(5,2) DEFAULT NULL,
  `private` varchar(3) DEFAULT NULL,
  `comment` varchar(50) NOT NULL
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
(99, 106, 4.33, 'Нет', '');

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
  `comment` varchar(50) NOT NULL
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
(110, 'Лисовой', 'Дмитрий Дмитриевич', '', 'СВТ', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
