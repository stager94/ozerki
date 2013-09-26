-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 26 2013 г., 18:47
-- Версия сервера: 5.5.31
-- Версия PHP: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `skmz_hostel_production`
--

-- --------------------------------------------------------

--
-- Структура таблицы `active_admin_comments`
--

CREATE TABLE IF NOT EXISTS `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`) VALUES
(1, 'stager94@gmail.com', '$2a$10$uKIPL/617/pGo47cyi83ku4yTgTtKlXxgbInD0kxkmOx4N1V.t0S.', NULL, NULL, '2013-07-05 20:51:27', 19, '2013-08-21 09:57:55', '2013-08-21 08:26:55', '193.110.115.252', '95.135.124.71', '2013-07-04 12:52:18', '2013-08-21 09:57:55'),
(2, 'ref-dir@skmz.dn.ua', '$2a$10$xF2K/d.xHQNKsj9iu.bFV.J1JAkTqUSrYfGN9m2ylW.UCAEzNobzC', NULL, NULL, '2013-08-28 06:29:43', 28, '2013-09-10 04:43:15', '2013-09-03 04:52:47', '193.110.114.2', '193.110.114.2', '2013-07-04 13:38:35', '2013-09-10 04:43:15');

-- --------------------------------------------------------

--
-- Структура таблицы `apartments`
--

CREATE TABLE IF NOT EXISTS `apartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `free_room` int(11) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `apartment_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `free_place` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `apartments`
--

INSERT INTO `apartments` (`id`, `title`, `room_number`, `free_room`, `display`, `created_at`, `updated_at`, `apartment_class`, `free_place`) VALUES
(2, '№16', 2, 0, 1, '2013-07-04 12:53:40', '2013-07-09 06:41:28', 'house_16', 4),
(3, '№17', 2, 0, 1, '2013-07-04 12:53:40', '2013-07-09 06:41:54', 'house_17', 4),
(4, '№18', 4, 0, 1, '2013-07-04 12:53:40', '2013-07-09 06:42:40', 'house_18', 8),
(5, '№19', 4, 3, 1, '2013-07-04 12:53:40', '2013-07-16 05:07:28', 'house_19', 8),
(6, '№20', 2, 1, 1, '2013-07-04 12:53:40', '2013-07-16 05:07:49', 'house_20', 4),
(7, '№21', 2, 2, 1, '2013-07-04 12:53:40', '2013-07-16 05:08:12', 'house_21', 4),
(8, '№22', 2, 2, 1, '2013-07-04 12:53:40', '2013-07-16 05:08:27', 'house_22', 4),
(9, '№23', 2, 0, 1, '2013-07-04 12:53:40', '2013-07-09 06:54:21', 'house_23', 4),
(10, '№24', 2, 0, 1, '2013-07-04 12:53:40', '2013-07-09 06:55:00', 'house_24', 6),
(11, '№25', 2, 1, 1, '2013-07-04 12:53:40', '2013-07-16 05:08:51', 'house_25', 8),
(12, '№26', 4, 0, 1, '2013-07-04 12:53:40', '2013-07-09 07:00:12', 'house_26', 8),
(13, '№27', 3, 0, 1, '2013-07-04 12:53:40', '2013-07-09 07:01:38', 'house_27', 7),
(14, '№28', 4, 2, 1, '2013-07-04 12:53:40', '2013-07-16 05:09:37', 'house_28', 8),
(15, '№30', 2, 2, 1, '2013-07-04 12:53:40', '2013-07-16 05:10:02', 'house_30', 4),
(16, '№34', 2, 0, 1, '2013-07-04 12:53:40', '2013-07-09 07:03:06', 'house_34', 4),
(17, '№35', 2, 0, 1, '2013-07-04 12:53:40', '2013-07-09 07:03:17', 'house_35', 4),
(18, '№36', 2, 2, 1, '2013-07-04 12:53:40', '2013-07-16 05:10:23', 'house_36', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `api_news`
--

CREATE TABLE IF NOT EXISTS `api_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `places` int(11) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `rooms` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=59 ;

--
-- Дамп данных таблицы `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `from`, `to`, `places`, `phone`, `email`, `created_at`, `updated_at`, `rooms`) VALUES
(1, 'Герняк Станислав Вячеславович', '7 Июля 2013 г.', '13 Июля 2013 г.', 3, '(066) 759-3382', 'stager94@mail.ru', '2013-07-04 20:19:51', '2013-07-04 20:19:51', 1),
(2, 'Герняк Станислав Вячеславович', '7 Июля 2013 г.', '13 Июля 2013 г.', 3, '(066) 759-3382', 'stager94@mail.ru', '2013-07-04 20:19:55', '2013-07-04 20:19:55', 1),
(3, 'ГСВ', '7 Июля 2013 г.', '8 Июля 2013 г.', 3, '(066) 759-3382', 'stager94@mail.ru', '2013-07-04 20:20:48', '2013-07-04 20:20:48', 1),
(4, 'ГСВ', '7 Июля 2013 г.', '8 Июля 2013 г.', 3, '(066) 759-3382', 'stager94@mail.ru', '2013-07-04 20:27:09', '2013-07-04 20:27:09', 1),
(5, 'Gernyak Stanislav Vyacheslavovich', '5 Июля 2013 г.', '7 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 09:58:43', '2013-07-05 09:58:43', 1),
(6, 'Gernyak Stanislav Vyacheslavovich', '5 Июля 2013 г.', '7 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 10:02:10', '2013-07-05 10:02:10', 1),
(7, 'asdf', '5 Июля 2013 г.', '13 Июля 2013 г.', 2, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 10:03:35', '2013-07-05 10:03:35', 1),
(8, 'asdf', '5 Июля 2013 г.', '13 Июля 2013 г.', 2, '(066) 759-3382', 'stager94@mail.ru', '2013-07-05 10:04:57', '2013-07-05 10:04:57', 1),
(9, 'Видиней Юрий Николаевич', '13 Июля 2013 г.', '14 Июля 2013 г.', 2, '(095) 855-2187', 'Neslife@mail.ru', '2013-07-05 16:25:46', '2013-07-05 16:25:46', 1),
(10, 'GSV', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 16:37:59', '2013-07-05 16:37:59', 1),
(11, 'asd', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@mail.ru', '2013-07-05 17:39:26', '2013-07-05 17:39:26', 1),
(12, 'asd', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 17:40:08', '2013-07-05 17:40:08', 1),
(13, 'asd', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 17:40:50', '2013-07-05 17:40:50', 1),
(14, 'asc', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-07-05 17:43:54', '2013-07-05 17:43:54', 1),
(15, 'asdf', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(098) 580-9115', 'stager94@mail.ru', '2013-07-05 17:45:53', '2013-07-05 17:45:53', 1),
(16, 'dsfsd', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@mail.ru', '2013-07-05 17:47:06', '2013-07-05 17:47:06', 1),
(17, 'Герняк Станислав Вячеславович', '5 Июля 2013 г.', '5 Июля 2013 г.', 1, '(066) 759-3382', 'stager94@mail.ru', '2013-07-05 18:03:30', '2013-07-05 18:03:30', 1),
(18, 'Тедеев Александр Сергеевич', '2 Августа 2013 г.', '5 Августа 2013 г.', 2, '(068) 980-1629', 'a_tedeev@ukr.net', '2013-07-12 09:53:01', '2013-07-12 09:53:01', 1),
(19, 'Тедеев Александр Сергеевич', '1 Августа 2013 г.', '5 Августа 2013 г.', 2, '(068) 980-1629', 'a_tedeev@ukr.net', '2013-07-15 20:22:17', '2013-07-15 20:22:17', 1),
(20, 'Соловьева Нина  Ивановна', '3 Августа 2013 г.', '4 Августа 2013 г.', 2, '(057) 552-4498', 'mama406@rambler.ru', '2013-07-18 06:05:14', '2013-07-18 06:05:14', 1),
(21, 'Котляревский Александр Валерьевич', '20 Июля 2013 г.', '22 Июля 2013 г.', 3, '(095) 607-6900', 'alex.starnet@mail.ru', '2013-07-18 16:28:57', '2013-07-18 16:28:57', 1),
(22, 'Проценко Денис Юрьевич', '26 Июля 2013 г.', '29 Июля 2013 г.', 4, '(050) 737-8012', 'prothenko@yahoo.com', '2013-07-19 08:28:18', '2013-07-19 08:28:18', 1),
(23, 'Проценко Денис Юрьевич', '26 Июля 2013 г.', '29 Июля 2013 г.', 4, '(050) 737-8012', 'prothenko@yahoo.com', '2013-07-19 12:02:47', '2013-07-19 12:02:47', 1),
(24, 'Проценко Денис Юрьевич', '26 Июля 2013 г.', '29 Июля 2013 г.', 4, '(050) 737-8012', 'prothenko@yahoo.com', '2013-07-19 12:08:05', '2013-07-19 12:08:05', 2),
(25, 'Линник Вита Леонидовна', '25 Июля 2013 г.', '1 Августа 2013 г.', 3, '(095) 800-1435', 'vitaminka610@yandex.ru', '2013-07-23 14:08:31', '2013-07-23 14:08:31', 1),
(26, 'Линник Вита Леонидовна', '25 Июля 2013 г.', '1 Августа 2013 г.', 3, '(095) 800-1435', 'vitaminka610@yandex.ru', '2013-07-23 14:08:32', '2013-07-23 14:08:32', 1),
(27, 'Попова Татьяна Леонидовна', '2 Августа 2013 г.', '11 Августа 2013 г.', 2, '(099) 374-3026', 'Tanziy@yandex.ru', '2013-07-24 12:12:51', '2013-07-24 12:12:51', 1),
(28, 'Пинешко Марина Сергеевна', '24 Августа 2013 г.', '27 Августа 2013 г.', 3, '(066) 073-7132', 'asd.donetsk@mail.ru', '2013-07-27 10:03:30', '2013-07-27 10:03:30', 1),
(29, 'Николаев Владимир Анатолийович', '31 Июля 2013 г.', '4 Августа 2013 г.', 4, '(050) 560-9363', 'vovka--vova@mail.ru', '2013-07-28 16:43:14', '2013-07-28 16:43:14', 2),
(30, 'Леонидова Юлия Валериевна', '1 Августа 2013 г.', '4 Августа 2013 г.', 3, '(050) 767-6056', 'yuliya_35@yahoo.com', '2013-07-29 07:12:09', '2013-07-29 07:12:09', 1),
(31, 'Тупчий Роман Павлович', '9 Августа 2013 г.', '13 Августа 2013 г.', 2, '(095) 494-9956', 'tupchii.roman@gmail.com', '2013-07-29 09:00:27', '2013-07-29 09:00:27', 1),
(32, 'Грунская Татьяна Владимировна', '3 Августа 2013 г.', '4 Августа 2013 г.', 8, '(050) 954-0525', 'tatygrun@mail.ru', '2013-07-29 10:10:15', '2013-07-29 10:10:15', 4),
(33, 'Пинешко Марина Сергеевна', '24 Августа 2013 г.', '27 Августа 2013 г.', 3, '(066) 073-7132', 'kat26@online.ua', '2013-07-29 15:15:59', '2013-07-29 15:15:59', 1),
(34, 'Пинешко Марина Сергеевна', '24 Августа 2013 г.', '27 Августа 2013 г.', 3, '(066) 073-7132', 'kat26@online.ua', '2013-07-29 15:16:00', '2013-07-29 15:16:00', 1),
(35, 'проба', '31 Июля 2013 г.', '10 Августа 2013 г.', 3, '(050) 222-2222', 'aho@skmz.dn.ua', '2013-07-30 07:26:26', '2013-07-30 07:26:26', 1),
(36, 'Тупчий Роман Павлович', '9 Августа 2013 г.', '13 Августа 2013 г.', 2, '(095) 494-9956', 'tupchii.roman@gmail.com', '2013-07-30 10:23:11', '2013-07-30 10:23:11', 1),
(37, 'Пинешко Марина Сергеевна', '24 Августа 2013 г.', '27 Августа 2013 г.', 3, '(066) 073-7132', 'kat26@online.ua', '2013-07-30 11:54:14', '2013-07-30 11:54:14', 1),
(38, 'Береговая Ирина Викторовна', '5 Августа 2013 г.', '11 Августа 2013 г.', 4, '(099) 482-1624', 'kt240689niv@mail.ru', '2013-07-30 19:25:40', '2013-07-30 19:25:40', 1),
(39, 'МИРОШНИЧЕНКО ЮЛИЯ АНАТОЛЬЕВНА', '16 Августа 2013 г.', '18 Августа 2013 г.', 2, '(050) 426-0089', 'defai2012@meta.ua', '2013-07-31 08:23:26', '2013-07-31 08:23:26', 1),
(40, 'АФОНИЧЕВА АННА АНДРЕЕВНА', '16 Августа 2013 г.', '24 Августа 2013 г.', 2, '(050) 610-1414', 'vskm@ukr.net', '2013-07-31 08:27:25', '2013-07-31 08:27:25', 1),
(41, 'Саламатин Светлана Александровна', '14 Августа 2013 г.', '17 Августа 2013 г.', 5, '(050) 137-6056', 'alostor666@mail.ru', '2013-07-31 17:04:06', '2013-07-31 17:04:06', 2),
(42, 'ццццц', '7 Августа 2013 г.', '15 Августа 2013 г.', 4, '(067) 255-4193', 'ogurin@skmz.dn.ua', '2013-08-02 07:20:31', '2013-08-02 07:20:31', 2),
(43, 'Бочаров Виталий Игоревич', '11 Августа 2013 г.', '18 Августа 2013 г.', 2, '(095) 253-3535', 'ritabocharova@yandex.ua', '2013-08-04 14:41:47', '2013-08-04 14:41:47', 1),
(44, 'Прядченко Екатерина Вительевна', '11 Августа 2013 г.', '12 Августа 2013 г.', 4, '(066) 891-5060', 'ritabocharova@yandex.ua', '2013-08-04 14:43:57', '2013-08-04 14:43:57', 1),
(45, 'Ивченко Таня', '10 Августа 2013 г.', '12 Августа 2013 г.', 2, '(050) 567-1700', 'ivchenko_ti@vesy.com.ua', '2013-08-07 08:12:37', '2013-08-07 08:12:37', 1),
(46, 'Опалюк Александр Владимирович (заезд 09 августа в 20.00ч)(домик №34)', '9 Августа 2013 г.', '11 Августа 2013 г.', 4, '(050) 946-9681', 'Sannatmax@mail.ru', '2013-08-08 15:27:46', '2013-08-08 15:27:46', 2),
(47, 'Иванов Иван Иванович', '8 Августа 2013 г.', '23 Августа 2013 г.', 1, '(000) 000-0000', 'ref-dir@skmz.dn.ua', '2013-08-08 18:12:28', '2013-08-08 18:12:28', 1),
(48, 'Иванов Иван Иванович', '8 Августа 2013 г.', '8 Августа 2013 г.', 1, '(111) 111-1111', 'ivanov@mail.com', '2013-08-08 18:52:41', '2013-08-08 18:52:41', 1),
(49, 'Герняк Станислав Вячеславович', '8 Августа 2013 г.', '8 Августа 2013 г.', 1, '(066) 759-3382', 'stager94@gmail.com', '2013-08-08 18:54:32', '2013-08-08 18:54:32', 1),
(50, 'Минакова Наталья Викторовна', '25 Августа 2013 г.', '26 Августа 2013 г.', 20, '(050) 680-6143', 'nataliya20071982@mail.ru', '2013-08-09 10:30:01', '2013-08-09 10:30:01', 20),
(51, 'Зайцева Юлия Владимировна', '15 Августа 2013 г.', '18 Августа 2013 г.', 2, '(095) 697-3513', 'suzuki-dizayn@mail.ru', '2013-08-10 09:06:04', '2013-08-10 09:06:04', 1),
(52, 'Ткаченко Александр Владимирович', '19 Августа 2013 г.', '25 Августа 2013 г.', 3, '(095) 389-3462', 'tkachenko.alex@inbox.ru', '2013-08-10 21:29:12', '2013-08-10 21:29:12', 1),
(53, 'Ткаченко Александр Владимирович', '19 Августа 2013 г.', '25 Августа 2013 г.', 3, '(095) 389-3462', 'tkachenko.alex@inbox.ru', '2013-08-11 06:41:30', '2013-08-11 06:41:30', 1),
(54, 'Ткаченко Александр Владимирович', '19 Августа 2013 г.', '25 Августа 2013 г.', 3, '(095) 389-3462', 'super.caesar86@yandex.ua', '2013-08-11 06:54:27', '2013-08-11 06:54:27', 1),
(55, 'Портняга Елена Васильевна', '14 Августа 2013 г.', '18 Августа 2013 г.', 2, '(095) 709-0676', 'Portnyaga622@gmail.com', '2013-08-12 07:05:26', '2013-08-12 07:05:26', 1),
(56, 'Антонюк Елена Валерьевна', '19 Августа 2013 г.', '23 Августа 2013 г.', 3, '(050) 670-2389', 'super.caesar86@yandex.ua', '2013-08-13 10:13:00', '2013-08-13 10:13:00', 1),
(57, 'Швед Анна Николаевна', '22 Августа 2013 г.', '26 Августа 2013 г.', 2, '(099) 022-3727', 'twinligt@rambler.ru', '2013-08-15 06:53:29', '2013-08-15 06:53:29', 1),
(58, 'Онищенко Максим Михайлович', '28 Августа 2013 г.', '31 Августа 2013 г.', 2, '(066) 810-8739', 'maksim1980@mail.ru', '2013-08-26 11:27:07', '2013-08-26 11:27:07', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `category_galleries`
--

CREATE TABLE IF NOT EXISTS `category_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snippet` text COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `galleries_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `category_galleries`
--

INSERT INTO `category_galleries` (`id`, `title`, `slug`, `snippet`, `keywords`, `parent_id`, `lft`, `rgt`, `depth`, `display`, `created_at`, `updated_at`, `galleries_count`) VALUES
(1, 'Турбаза "Озерки"', 'turbaza-ozerki', '', '', NULL, 1, 2, 0, 1, '2013-07-04 14:24:06', '2013-07-04 14:24:06', 36),
(2, 'Домики', 'Домики', 'Домики', '', NULL, 3, 4, 0, 1, '2013-07-09 09:35:40', '2013-07-09 09:35:40', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `category_news`
--

CREATE TABLE IF NOT EXISTS `category_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snippet` text COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `category_news`
--

INSERT INTO `category_news` (`id`, `title`, `slug`, `snippet`, `keywords`, `parent_id`, `lft`, `rgt`, `depth`, `display`, `created_at`, `updated_at`) VALUES
(1, 'Пресс-центр', 'press-tsentr', '', '', NULL, 1, 2, 0, 1, '2013-07-04 13:16:53', '2013-07-04 13:16:53'),
(2, 'Акции', 'aktsii', '', '', NULL, 3, 4, 0, 1, '2013-07-04 13:17:06', '2013-07-04 13:17:06'),
(3, 'Досуг', 'dosug', '', '', NULL, 5, 6, 0, 1, '2013-08-21 08:27:28', '2013-08-21 08:27:28');

-- --------------------------------------------------------

--
-- Структура таблицы `ckeditor_assets`
--

CREATE TABLE IF NOT EXISTS `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Дамп данных таблицы `ckeditor_assets`
--

INSERT INTO `ckeditor_assets` (`id`, `data_file_name`, `data_content_type`, `data_file_size`, `assetable_id`, `assetable_type`, `type`, `width`, `height`, `created_at`, `updated_at`) VALUES
(1, 'content_scheme.png', 'image/png', 237213, 1, 'AdminUser', 'Ckeditor::Picture', 724, 579, '2013-07-04 14:15:30', '2013-07-04 14:15:30'),
(2, 'ozer1.jpg', 'image/jpeg', 109383, 2, 'AdminUser', 'Ckeditor::Picture', 500, 357, '2013-07-05 10:27:26', '2013-07-05 10:27:26'),
(3, 'ozer3.jpg', 'image/jpeg', 119405, 2, 'AdminUser', 'Ckeditor::Picture', 550, 413, '2013-07-05 10:28:23', '2013-07-05 10:28:23'),
(4, 'img_7481-1.jpg', 'image/jpeg', 727407, 2, 'AdminUser', 'Ckeditor::Picture', 1181, 1772, '2013-07-08 09:56:16', '2013-07-08 09:56:16'),
(5, 'dscf5180.jpg', 'image/jpeg', 101635, 2, 'AdminUser', 'Ckeditor::Picture', 500, 375, '2013-07-08 09:57:26', '2013-07-08 09:57:26'),
(6, 'dscf2940.jpg', 'image/jpeg', 176254, 2, 'AdminUser', 'Ckeditor::Picture', 709, 531, '2013-07-09 07:09:01', '2013-07-09 07:09:01'),
(7, 'dscf5179.jpg', 'image/jpeg', 86454, 2, 'AdminUser', 'Ckeditor::Picture', 375, 500, '2013-07-10 06:53:01', '2013-07-10 06:53:01'),
(8, 'img_1837.jpg', 'image/jpeg', 260587, 2, 'AdminUser', 'Ckeditor::Picture', 709, 709, '2013-07-11 09:11:44', '2013-07-11 09:11:44'),
(9, 'img_1840.jpg', 'image/jpeg', 228244, 2, 'AdminUser', 'Ckeditor::Picture', 709, 709, '2013-07-11 09:12:32', '2013-07-11 09:12:32'),
(10, 'img_1848.jpg', 'image/jpeg', 213121, 2, 'AdminUser', 'Ckeditor::Picture', 709, 709, '2013-07-11 09:13:18', '2013-07-11 09:13:18'),
(11, 'img_1837.jpg', 'image/jpeg', 260587, 2, 'AdminUser', 'Ckeditor::Picture', 709, 709, '2013-07-12 06:23:51', '2013-07-12 06:23:51'),
(12, 'img_1840.jpg', 'image/jpeg', 228244, 2, 'AdminUser', 'Ckeditor::Picture', 709, 709, '2013-07-12 06:24:57', '2013-07-12 06:24:57'),
(13, 'img_1848.jpg', 'image/jpeg', 213121, 2, 'AdminUser', 'Ckeditor::Picture', 709, 709, '2013-07-12 06:25:41', '2013-07-12 06:25:41'),
(14, 'plyazh11.jpg', 'image/jpeg', 594296, 1, 'AdminUser', 'Ckeditor::Picture', 1140, 500, '2013-08-12 08:09:22', '2013-08-12 08:09:22'),
(15, 'dsc01690.jpg', 'image/jpeg', 698912, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-12 08:18:02', '2013-08-12 08:18:02'),
(16, 'dsc01691.jpg', 'image/jpeg', 703980, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-12 08:20:40', '2013-08-12 08:20:40'),
(17, 'dsc01734.jpg', 'image/jpeg', 299075, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:14', '2013-08-16 13:46:14'),
(18, 'dsc01721.jpg', 'image/jpeg', 290224, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:19', '2013-08-16 13:46:19'),
(19, 'dsc01723.jpg', 'image/jpeg', 243853, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:20', '2013-08-16 13:46:20'),
(20, 'dsc01720.jpg', 'image/jpeg', 210284, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:24', '2013-08-16 13:46:24'),
(21, 'dsc01718.jpg', 'image/jpeg', 201922, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:27', '2013-08-16 13:46:27'),
(22, 'dsc01715.jpg', 'image/jpeg', 399126, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:30', '2013-08-16 13:46:30'),
(23, 'dsc01712.jpg', 'image/jpeg', 361041, 1, 'AdminUser', 'Ckeditor::Picture', 1000, 750, '2013-08-16 13:46:33', '2013-08-16 13:46:33'),
(24, 'dscn0548.jpg', 'image/jpeg', 494449, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:00:42', '2013-08-21 10:00:42'),
(25, 'dscn0519.jpg', 'image/jpeg', 493254, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:00:53', '2013-08-21 10:00:53'),
(26, 'dscn0537.jpg', 'image/jpeg', 484842, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:00:54', '2013-08-21 10:00:54'),
(27, 'dscn0480.jpg', 'image/jpeg', 469814, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:01:16', '2013-08-21 10:01:16'),
(28, 'dscn0517.jpg', 'image/jpeg', 495562, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:01:18', '2013-08-21 10:01:18'),
(29, 'dscn0465.jpg', 'image/jpeg', 460729, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:01:28', '2013-08-21 10:01:28'),
(30, 'dscn0451.jpg', 'image/jpeg', 507533, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:01:53', '2013-08-21 10:01:53'),
(31, 'dscn0400.jpg', 'image/jpeg', 546138, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:13', '2013-08-21 10:08:13'),
(32, 'dscn0399.jpg', 'image/jpeg', 548747, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:16', '2013-08-21 10:08:16'),
(33, 'dscn0398.jpg', 'image/jpeg', 553211, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:17', '2013-08-21 10:08:17'),
(34, 'dscn0401.jpg', 'image/jpeg', 552371, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:22', '2013-08-21 10:08:22'),
(35, 'dscn0424.jpg', 'image/jpeg', 506569, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:28', '2013-08-21 10:08:28'),
(36, 'dscn0425.jpg', 'image/jpeg', 507886, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:29', '2013-08-21 10:08:29'),
(37, 'dscn0454.jpg', 'image/jpeg', 481683, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:33', '2013-08-21 10:08:33'),
(38, 'dscn0419.jpg', 'image/jpeg', 552017, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:34', '2013-08-21 10:08:34'),
(39, 'dscn0549.jpg', 'image/jpeg', 492830, 1, 'AdminUser', 'Ckeditor::Picture', 1600, 1200, '2013-08-21 10:08:40', '2013-08-21 10:08:40'),
(40, 'dsc01918.jpg', 'image/jpeg', 75153, 2, 'AdminUser', 'Ckeditor::Picture', 500, 375, '2013-08-27 10:32:24', '2013-08-27 10:32:24'),
(41, 'dscn0555.jpg', 'image/jpeg', 60757, 2, 'AdminUser', 'Ckeditor::Picture', 375, 500, '2013-08-27 10:33:24', '2013-08-27 10:33:24'),
(42, 'dscn0572.jpg', 'image/jpeg', 65063, 2, 'AdminUser', 'Ckeditor::Picture', 375, 500, '2013-08-27 10:34:17', '2013-08-27 10:34:17'),
(43, 'dscn0585.jpg', 'image/jpeg', 59906, 2, 'AdminUser', 'Ckeditor::Picture', 500, 375, '2013-08-27 10:34:55', '2013-08-27 10:34:55'),
(44, 'dsc01881.jpg', 'image/jpeg', 58907, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:48:38', '2013-08-27 10:48:38'),
(45, 'dsc01885.jpg', 'image/jpeg', 56460, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:49:02', '2013-08-27 10:49:02'),
(46, 'dsc01898.jpg', 'image/jpeg', 52847, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:49:36', '2013-08-27 10:49:36'),
(47, 'dsc01902.jpg', 'image/jpeg', 53577, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:50:15', '2013-08-27 10:50:15'),
(48, 'dsc01908.jpg', 'image/jpeg', 55329, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:50:40', '2013-08-27 10:50:40'),
(49, 'dsc01910.jpg', 'image/jpeg', 54034, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:51:05', '2013-08-27 10:51:05'),
(50, 'dsc01912.jpg', 'image/jpeg', 53551, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:51:24', '2013-08-27 10:51:24'),
(51, 'dsc01888.jpg', 'image/jpeg', 51137, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:58:18', '2013-08-27 10:58:18'),
(52, 'dsc01896.jpg', 'image/jpeg', 39354, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:58:53', '2013-08-27 10:58:53'),
(53, 'dsc01914.jpg', 'image/jpeg', 43549, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 10:59:36', '2013-08-27 10:59:36'),
(54, 'dsc01915.jpg', 'image/jpeg', 42247, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-27 11:00:05', '2013-08-27 11:00:05'),
(55, 'dsc01898.jpg', 'image/jpeg', 52847, 2, 'AdminUser', 'Ckeditor::Picture', 375, 281, '2013-08-28 06:40:07', '2013-08-28 06:40:07');

-- --------------------------------------------------------

--
-- Структура таблицы `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_separator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `configures`
--

CREATE TABLE IF NOT EXISTS `configures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_separator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_per_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_news_per_page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `site_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_snippet` text COLLATE utf8_unicode_ci,
  `news_id` int(11) DEFAULT NULL,
  `book_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_days_num` int(11) DEFAULT '45',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'noreply@ozerki.dn.ua',
  `book_excel_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_excel_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_excel_file_size` int(11) DEFAULT NULL,
  `book_excel_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `configures`
--

INSERT INTO `configures` (`id`, `site_title`, `title_separator`, `news_per_page`, `module_news_per_page`, `created_at`, `updated_at`, `site_keywords`, `site_snippet`, `news_id`, `book_email`, `book_days_num`, `email`, `book_excel_file_name`, `book_excel_content_type`, `book_excel_file_size`, `book_excel_updated_at`) VALUES
(1, 'Турбаза ПАО "Старокраматорский машиностроительный завод"', '-', '10', '3', '2013-07-04 12:53:21', '2013-08-08 19:01:31', 'скмз, турбаза', 'Турбаза СКМЗ', 1, 'aho@skmz.dn.ua', 45, 'noreply@ozerki.dn.ua', 'jul.xls', 'application/vnd.ms-excel', 88064, '2013-08-01 06:38:24');

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_gallery_id` int(11) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display_on_root` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_category_gallery_id` (`category_gallery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `slug`, `category_gallery_id`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`, `author`, `description`, `keywords`, `display`, `created_at`, `updated_at`, `display_on_root`) VALUES
(1, 'Фото №1', 'foto-1', 1, '224.JPG', 'image/jpeg', 299515, '2013-07-04 14:26:09', '', '', '', 1, '2013-07-04 14:25:32', '2013-07-04 14:30:01', 1),
(2, 'Фото №2', 'foto-2', 1, '220.JPG', 'image/jpeg', 286982, '2013-07-04 14:26:50', '', 'Катание на лодке', '', 1, '2013-07-04 14:26:50', '2013-07-04 14:30:36', 1),
(3, 'Фото №3', 'foto-3', 1, '217.JPG', 'image/jpeg', 206151, '2013-07-04 14:27:39', '', 'Красивый вид', '', 1, '2013-07-04 14:27:26', '2013-07-04 14:30:21', 1),
(4, 'Фото №4', 'foto-4', 1, '214.JPG', 'image/jpeg', 413258, '2013-07-04 14:28:30', '', 'Вход на территорию базы отдыха охраняется...', '', 1, '2013-07-04 14:28:30', '2013-07-04 14:28:30', 0),
(5, 'Фото №5', 'foto-5', 1, '201.JPG', 'image/jpeg', 454574, '2013-07-04 14:28:55', '', '', '', 1, '2013-07-04 14:28:55', '2013-07-04 14:28:55', 0),
(6, 'Фото №6', 'foto-6', 1, '198.JPG', 'image/jpeg', 367243, '2013-07-04 14:29:26', '', '', '', 1, '2013-07-04 14:29:27', '2013-07-04 14:29:27', 0),
(7, 'Фото №7', 'foto-7', 1, '191.JPG', 'image/jpeg', 276979, '2013-07-04 14:29:43', '', '', '', 1, '2013-07-04 14:29:43', '2013-07-04 14:30:12', 1),
(8, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, '276.JPG', 'image/jpeg', 763872, '2013-07-08 09:43:31', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:43:31', '2013-07-08 09:43:31', 0),
(9, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, '278.JPG', 'image/jpeg', 713614, '2013-07-08 09:44:38', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:44:38', '2013-07-08 09:44:38', 0),
(10, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, '279.JPG', 'image/jpeg', 488107, '2013-07-08 09:45:41', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:45:41', '2013-07-08 09:45:41', 0),
(11, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, '280.JPG', 'image/jpeg', 558804, '2013-07-08 09:46:31', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:46:32', '2013-07-08 09:46:32', 0),
(12, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, 'DSCF5099.JPG', 'image/jpeg', 117025, '2013-07-08 09:48:22', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:48:22', '2013-07-08 09:48:22', 0),
(13, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, 'DSCF5154.JPG', 'image/jpeg', 87496, '2013-07-08 09:49:10', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:49:11', '2013-07-08 09:49:11', 0),
(14, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, 'DSCF5179.JPG', 'image/jpeg', 86454, '2013-07-08 09:49:48', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:49:49', '2013-07-08 09:49:49', 0),
(15, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, 'DSCF5180.JPG', 'image/jpeg', 101635, '2013-07-08 09:50:37', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:50:37', '2013-07-08 09:50:37', 0),
(16, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, 'DSCF5193.JPG', 'image/jpeg', 127479, '2013-07-08 09:51:23', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:51:23', '2013-07-08 09:51:23', 0),
(17, 'Турбаза "Озерки"', 'Турбаза "Озерки"', 1, 'DSCF5261.JPG', 'image/jpeg', 87123, '2013-07-08 09:51:55', '', '', 'Турбаза "Озерки"', 1, '2013-07-08 09:51:55', '2013-07-08 09:51:55', 0),
(18, '35', '35', 2, '298.JPG', 'image/jpeg', 217810, '2013-07-09 09:40:04', '', '', '35', 1, '2013-07-09 09:40:05', '2013-07-09 09:40:05', 0),
(19, '34', '34', 2, '296.JPG', 'image/jpeg', 216218, '2013-07-09 09:40:45', '', '', '34', 1, '2013-07-09 09:40:46', '2013-07-09 09:40:46', 0),
(20, 'Хозяйка бара', 'hozyayka-bara', 1, 'DSC01731.JPG', 'image/jpeg', 286704, '2013-08-16 13:52:51', '', 'Хозяйка бара', '', 1, '2013-08-16 13:52:51', '2013-08-16 13:52:51', 0),
(21, 'Хозяйка бара', 'hozyayka-bara', 1, 'DSC01733.JPG', 'image/jpeg', 319036, '2013-08-16 13:53:21', '', 'Хозяйка бара', '', 1, '2013-08-16 13:53:22', '2013-08-16 13:53:22', 0),
(22, 'Из жизи отдыхающих', 'iz-zhizi-otdyhayuschih', 1, 'DSC01738.JPG', 'image/jpeg', 386918, '2013-08-16 13:56:27', '', 'Из жизи отдыхающих', '', 1, '2013-08-16 13:56:28', '2013-08-16 13:56:28', 0),
(23, 'Из жизи отдыхающих', 'iz-zhizi-otdyhayuschih', 1, 'DSC01730.JPG', 'image/jpeg', 303235, '2013-08-16 13:56:52', '', 'Из жизи отдыхающих', '', 1, '2013-08-16 13:56:53', '2013-08-16 13:56:53', 0),
(24, 'Чемпионат турбазы', 'chempionat-turbazy', 1, 'DSC01727.JPG', 'image/jpeg', 290140, '2013-08-16 13:57:49', '', 'Чемпионат турбазы по настольному теннису', '', 1, '2013-08-16 13:57:49', '2013-08-16 13:57:49', 0),
(25, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0486.JPG', 'image/jpeg', 499358, '2013-08-21 09:04:19', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:04:19', '2013-08-21 09:04:19', 0),
(26, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0490.JPG', 'image/jpeg', 495329, '2013-08-21 09:04:42', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:04:43', '2013-08-21 09:04:43', 0),
(27, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0500.JPG', 'image/jpeg', 480090, '2013-08-21 09:05:06', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:05:07', '2013-08-21 09:05:07', 0),
(28, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0445.JPG', 'image/jpeg', 484067, '2013-08-21 09:05:22', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:05:22', '2013-08-21 09:05:22', 0),
(29, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0468.JPG', 'image/jpeg', 488764, '2013-08-21 09:05:50', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:05:50', '2013-08-21 09:05:50', 0),
(30, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0444.JPG', 'image/jpeg', 484888, '2013-08-21 09:06:50', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:06:51', '2013-08-21 09:06:51', 0),
(31, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0426.JPG', 'image/jpeg', 504256, '2013-08-21 09:07:10', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:07:11', '2013-08-21 09:07:11', 0),
(32, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0394.JPG', 'image/jpeg', 556377, '2013-08-21 09:07:29', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:07:30', '2013-08-21 09:07:30', 0),
(33, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0467.JPG', 'image/jpeg', 471340, '2013-08-21 09:07:48', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:07:48', '2013-08-21 09:07:48', 0),
(34, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0449.JPG', 'image/jpeg', 485544, '2013-08-21 09:08:08', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:08:09', '2013-08-21 09:08:09', 0),
(35, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0448.JPG', 'image/jpeg', 500225, '2013-08-21 09:08:43', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:08:44', '2013-08-21 09:08:44', 0),
(36, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0466.JPG', 'image/jpeg', 483140, '2013-08-21 09:09:54', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:09:55', '2013-08-21 09:09:55', 0),
(37, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0443.JPG', 'image/jpeg', 465947, '2013-08-21 09:10:42', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:10:42', '2013-08-21 09:10:42', 0),
(38, 'Из жизни  турбазы', 'iz-zhizni-turbazy', 1, 'DSCN0444_(1).JPG', 'image/jpeg', 484888, '2013-08-21 09:11:15', '', 'Из жизни  турбазы', '', 1, '2013-08-21 09:11:16', '2013-08-21 09:11:16', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `infolines`
--

CREATE TABLE IF NOT EXISTS `infolines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_infolines_on_new_id` (`new_id`),
  KEY `index_infolines_on_page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `infolines`
--

INSERT INTO `infolines` (`id`, `title`, `route`, `new_id`, `page_id`, `path`, `display`, `created_at`, `updated_at`, `position`) VALUES
(1, 'ВНИМАНИЕ!!! БЕСЕДКА ДЛЯ КОРПОРАТИВОВ, ДНЕЙ РОЖДЕНИЙ, ВСТРЕЧ С ДРУЗЬЯМИ НА БЕРЕГУ ДОНЦА...', 'static', NULL, NULL, '', 1, '2013-07-04 13:42:33', '2013-07-04 13:42:33', 0),
(2, 'Бесплатная автостоянка в Щурово на территории б/о "Озерки" . Акция продлена до 31.08.2013', 'new', 3, NULL, '', 1, '2013-07-04 14:16:21', '2013-08-27 10:00:34', 1),
(4, 'Внимание! C 31 августа проводится я праздник "ЗАКРЫТИЯ СЕЗОНА "ЛЕТО 2013"" В программе праздника: соревнование по волейболу,теннису, шахматам. Дегустация домашнего вина. Конкурс на лучшего шашлычного и рыбака. ПРИГЛАШАЕМ!', 'new', 11, NULL, '', 1, '2013-08-27 10:09:01', '2013-08-28 06:30:22', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snippet` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `root` tinyint(1) DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `category_new_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `precontent` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `lower_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `snippet`, `content`, `author`, `root`, `display`, `category_new_id`, `created_at`, `updated_at`, `precontent`, `slug`, `tag_list`, `position`, `lower_title`) VALUES
(1, 'Общие сведения', 'база отдыха', '<p>База отдыха &laquo;Озерки&raquo; находится в одном из самых известных курортных посёлках Краснолиманского района Донецкой области.</p>\r\n\r\n<p>Можно ли организовать насыщенный и запоминающийся отдых для всей семьи с минимальными денежными затратами? Мечтая о далеких странах, люди порой забывают, что рядом есть красивейшие места, где можно прекрасно отдохнуть, весело провести время взрослым и детям!</p>\r\n\r\n<p>Окружают базу отдыха сосновые и лиственные леса, которые привлекают туристов не только целебными свойствами сосны, но и прекрасными пейзажами, малоисследованными тропами. Отдых в &laquo;Озерках&raquo; - это великолепная и неповторимая природа, идеально чистый и целебный воздух, обилие грибных и ягодных мест.</p>\r\n\r\n<p>Это живописное место располагается на берегу реки Северский Донец. Сколько исторических тайн и загадок, народных легенд и казачьих баек хранят его берега, то упирающиеся в скалистые обрывы, то распластавшиеся на обширных зеленых полях, усыпанных мелкими кустарниками и песчаными холмами. Здесь открывается великолепный вид на реку и окрестности.</p>\r\n\r\n<p>Не забыли мы и про любителей рыбалки! Каждый имеет прекрасную возможность провести время на берегу с удочкой.</p>\r\n\r\n<p>База отдыха переполнена атмосферой праздника и переполнена исключительно положительными эмоциями.</p>\r\n\r\n<p>В чем же заключается секрет популярности отдыха у нас среди жителей Краматорска, Славянска, Красного Лимана и других близлежащих промышленных городов? Это сочетание ценовой доступности и удобного расположения. Вам не придется переносить перелет или длительный переезд, база отдыха &laquo;Озерки&raquo; совсем рядом! Особенно это касается детей, так как они плохо переносят долгую дорогу, перепады температур, изменение климата.</p>\r\n\r\n<p><strong>База отдыха &laquo;Озерки&raquo; приглашает Вас весело и полезно провести выходные дни, каникулы, отпуск!</strong></p>\r\n', '', 1, 1, NULL, '2013-07-04 13:20:11', '2013-07-05 21:01:25', '', 'obschie-svedeniya', NULL, 0, 'общие сведения'),
(2, 'Райский уголок – база отдыха «Озерки»', 'База отдыха «Озерки» Старокраматорского машиностроительного завода перед началом сезона в майские праздники проводит день открытых дверей. С лучами весеннего солнца мы стали задумываться о летнем отдыхе. При нынешнем развитии туристического бизнеса предложений много, возможности выбора неограниченны. Но, как говорил киношный герой, не всегда наши желания совпадают с нашими возможностями.', '<p>База отдыха &laquo;Озерки&raquo; Старокраматорского машиностроительного завода&nbsp;перед началом сезона в майские праздники проводит день открытых дверей.</p>\r\n\r\n<p>С лучами весеннего солнца мы стали задумываться о летнем отдыхе. При нынешнем развитии туристического бизнеса предложений много, возможности выбора неограниченны. Но, как говорил киношный герой, не всегда наши желания совпадают с нашими возможностями.</p>\r\n\r\n<p>Да и привычка &ndash; большое дело. Многие любят расслабиться в родном климате, недалеко от дома.</p>\r\n\r\n<p>И в таком случае привычный отдых в Щурово &ndash; лучший вариант.</p>\r\n\r\n<p><img alt="" src="/system/pictures/3/content_ozer3.jpg" style="height:413px; width:550px" /></p>\r\n\r\n<p>В этом году Генеральный директор ПАО &laquo;СКМЗ&raquo; Бондарь Юрий Григорьевич совместно с администрацией и профкомом приняли решение возобновить работу заводской базы отдыха &laquo;Озерки&raquo;.</p>\r\n\r\n<p>Как только сошел снег, на территории базы начались ремонтные работы. Восстановлены коммуникации, подходящие к турбазе, прочищена артезианская скважина, ремонтируются домики, чистится, благоустраивается территория. Прорабатываются необходимые документы с Краснолиманским территориальным комитетом о разрешении работы турбазы.</p>\r\n\r\n<p>База отдыха сейчас как-бы разделена на две части: часть домиков (на островке на озере) будет предоставляться для отдыха заводчан, а вторая часть ( на побережье Донца) &ndash; будет сдаваться в аренду.</p>\r\n\r\n<p>Заводские домики закреплены конкретно за определенными цехами и отделами и будут обслуживаться и оборудоваться, как всегда, цеховыми профсоюзными организациями.</p>\r\n\r\n<p>Вторая часть домиков, предоставляемая в аренду, оборудуется изначально полностью хозяйственным отделом завода и готовится &laquo;под ключ&raquo; для будущих отдыхающих. Домики будут оснащены необходимым бытовым инвентарем, электропечами, холодильниками.</p>\r\n\r\n<p>Те, кто уже отдыхал на &laquo;Озерках&raquo; знает, что у этой базы есть огромное преимущество: территориально турбаза находится как-бы в конце береговой линии Щуровских турбаз. Поэтому, это - действительно, райский уголок тихой природы. Здесь &ndash; идеальные условия для тихого семейного отдыха с детьми, нет сквозного движения, как на других турбазах и не слышны ночные вопли разгулявшейся молодежи. А любителям повеселиться совсем недалеко пройтись до шумных дискотек.</p>\r\n\r\n<p>&laquo;Озерки&raquo; имеют свой пляж, причал с катамаранами, спортивную площадку, детскую площадку, т.е. каждый может найти для себя занятие по душе. Любители рыбалки могут посидеть с удочкой на берегу озера, которое огибает турбазу с трех сторон или поискать рыбацкой удачи на берегу Донца.</p>\r\n\r\n<p>Надеемся, что краматорчане воспользуются возможностью отдыха на &laquo;Озерках&raquo;.</p>\r\n\r\n<p>Чтобы наглядно показать условия отдыха на своей турбазе, &laquo;Озерки&raquo; объявляют</p>\r\n\r\n<p>в майские праздники День открытых дверей.</p>\r\n\r\n<p>Приезжайте, посмотрите сами и влюбитесь в наши &laquo;Озерки&raquo;.</p>\r\n\r\n<p style="text-align:right"><strong>Зайченко Игорь Иванович,<br />\r\nдиректор базы отдыха &laquo;Озерки&raquo;</strong></p>\r\n', '', 0, 1, 1, '2013-07-04 13:30:56', '2013-07-05 21:01:15', '<p>База отдыха &laquo;Озерки&raquo; Старокраматорского машиностроительного завода&nbsp;перед началом сезона в майские праздники проводит день открытых дверей.&nbsp;С лучами весеннего солнца мы стали задумываться о летнем отдыхе. При нынешнем развитии туристического бизнеса предложений много, возможности выбора неограниченны. Но, как говорил киношный герой, не всегда наши желания совпадают с нашими возможностями.</p>\r\n\r\n<p><img alt="" src="/system/pictures/2/content_ozer1.jpg" style="height:357px; width:500px" /></p>\r\n', 'rayskiy-ugolok-baza-otdyha-ozerki', NULL, 0, 'райский уголок – база отдыха «озерки»'),
(3, 'Бесплатная автостоянка в Щурово на территории б/о "Озерки" . акция продлена до 31.09.2013', 'Многие автомобилисты предпочитают и на время отпуска (будь то море или другое место отдыха) не расставаться со своим авто, и добираться на нем до места назначения. Администрация базы отдыха "Озерки" заботится о своих отдыхающих, поэтому на на ее территории предоставляется автостоянка для всех тех, кто решит отдохнуть у нас, при чем абсолютно бесплатно! Теперь Вам не нужно будет думать о том, где оставить свой автомобиль и сколько это будет стоить.', '<p>Многие автомобилисты предпочитают и&nbsp;на время отпуска (будь то море или другое место отдыха)&nbsp;не расставаться со своим авто, и добираться на нем до места назначения. Администрация базы отдыха &quot;Озерки&quot; заботится о своих отдыхающих, поэтому на на ее территории предоставляется&nbsp;автостоянка для всех тех, кто решит отдохнуть у нас, при чем&nbsp;абсолютно бесплатно!&nbsp;Теперь Вам не нужно будет думать о том, где оставить свой автомобиль и сколько это будет стоить.</p>\r\n', '', 0, 1, 2, '2013-07-04 13:44:34', '2013-08-27 09:48:23', '<p>Многие автомобилисты предпочитают и&nbsp;на время отпуска (будь то море или другое место отдыха)&nbsp;не расставаться со своим авто, и добираться на нем до места назначения.</p>\r\n', 'besplatnaya-avtostoyanka-v-schurovo-na-teritorii-b-o-ozerki', NULL, 0, 'бесплатная автостоянка в щурово на территории б/о "озерки" . акция продлена до 31.09.2013'),
(5, 'ФОТОКОНКУРС ... Я И МОЙ ЛЮБИМЫЙ ШАШЛЫК ', 'ФОТОКОНКУРС ... Я И МОЙ ЛЮБИМЫЙ ШАШЛЫК ', '<p><img alt="" src="/system/pictures/4/content_img_7481-1.jpg" style="height:300px; width:200px" /> &nbsp;<img alt="" src="/system/pictures/5/content_dscf5180.jpg" style="height:150px; width:200px" />&nbsp;&nbsp;<img alt="" src="/system/pictures/6/content_dscf2940.jpg" style="height:150px; width:200px" />&nbsp;<img alt="" src="/system/pictures/7/content_dscf5179.jpg" style="height:267px; width:200px" /></p>\r\n', '', 0, 1, 3, '2013-07-08 09:59:56', '2013-08-21 08:48:54', '', 'фотоконкурс', NULL, 0, 'фотоконкурс ... я и мой любимый шашлык '),
(6, 'Автобус из Мариуполя', 'Автобус из Мариуполя', '<p>На выходных большая группа туристов из Мариуполя приехала на нашу базу отдыха</p>\r\n\r\n<p><img alt="" src="/system/pictures/11/content_img_1837.jpg" style="height:500px; width:500px" /></p>\r\n\r\n<p><img alt="" src="/system/pictures/12/content_img_1840.jpg" style="height:500px; width:500px" /><img alt="" src="/system/pictures/13/content_img_1848.jpg" style="height:500px; width:500px" /></p>\r\n', '', 0, 1, 1, '2013-07-11 09:16:32', '2013-07-12 06:35:21', '<p>На выходных большая группа туристов из Мариуполя приехала на нашу базу отдыха</p>\r\n\r\n<p><img alt="" src="/system/pictures/8/content_img_1837.jpg" style="height:200px; width:200px" /><img alt="" src="/system/pictures/9/content_img_1840.jpg" style="height:200px; width:200px" /></p>\r\n\r\n<p><img alt="" src="/system/pictures/10/content_img_1848.jpg" style="height:200px; width:200px" /></p>\r\n', 'Автобус из Мариуполя', NULL, 0, 'автобус из мариуполя'),
(7, 'Пляж базы отдыха «Озерки» - лучший на побережье Северского Донца', 'Сенсация!!! Пляж базы отдыха «Озерки» занял первое место в рейтинге пляжей Северского Донца в Краснолиманском районе. К такому выводу пришла Независимая комиссия журналистов и специалистов в курортологии, изучавшая в течение 2 месяцев организацию работы пляжей реки Северского Донца и оказание на них услуг для отдыхающих. ', '<p style="text-align:justify"><strong>Сенсация!!! Пляж базы отдыха &laquo;Озерки&raquo; занял первое место в рейтинге пляжей Северского Донца в Краснолиманском районе. К такому выводу пришла Независимая комиссия журналистов и специалистов в курортологии, изучавшая в течение 2 месяцев организацию работы пляжей реки Северского Донца и оказание на них услуг для отдыхающих.</strong></p>\r\n\r\n<p style="text-align:center"><strong>​<img alt="" src="/system/pictures/14/content_plyazh11.jpg" /></strong></p>\r\n\r\n<p style="text-align:justify">Первым условием работы пляжа является наличие разрешительных документов. Как правило, все турбазы, что работают с начала сезона &laquo;Лето-2013&raquo; и у них есть выход к реке, имеют паспорт на пляж. Это значит, что дно пляжа обследовано водолазами, представителями Краснолиманской СЭС взяты пробы воды и песка, на пляже работают профессионалы матрос-спасатель и медицинский работник, есть зона детского пляжа, отдыхающим предоставляются стеллажи и т.д. К большому сожалению, ряд турбаз не начал работу в этом летнем сезоне, но имея выход к воде, предоставляет территорию своих пляжей для отдыха людей, чем подвергает опасности жизни отдыхающих.</p>\r\n\r\n<p style="text-align:justify">По данным Краснолиманской СЭС все пляжи реки Донец по показателям качества воды, находятся в равных условиях и лучше чем пляжи Голубых озер. По качеству песка на пляже лидерами стали базы отдыха &laquo;Озерки&raquo;, &laquo;НКМЗ&raquo;, &laquo;Сосна&raquo;, &laquo;Ландыш&raquo; и набрали по 10 балльной шкале 10 баллов. Наличие на пляжах укрытия от солнца в виде &laquo;грибков&raquo; и разнообразных навесов, кабинок для переодевания, правил оказания помощи на воде, прекрасной спортивной зоны (это и волейбольные площадки и теннисные столы, турники и брусья), подвода питьевой воды, а также звучание музыки - подтвердили шансы лидеров на победу в рейтинге. Очень трудно было решить вопрос кадрового обеспечения пляжа медработником и сертифицированным матросом - спасателем. На многих пляжах эти условия не выполняются, но лидеры рейтинга с этой задачей справились успешно. Предоставление развлечений на воде, а это катамараны, водные горки и мотоциклы, инфраструктура рядом с пляжем - в фавориты вывели базу отдыха &laquo;НКМЗ&raquo;. Но наличие прекрасных беседок на пляже турбазы &laquo;Озерки&raquo;, соотношение количества отдыхающих к 1 квадратному метру пляжной зоны, наличие чистых туалетов, разумная ценовая политика в предоставление услуг, а главное размеры зеркала воды реки Донец вдоль &laquo;Озерков&raquo; и южная сторона расположения - однозначно сделали пляж летней здравницы ПАО &laquo;СКМЗ&raquo; лучшим в сезоне &laquo;Лето-2013&raquo;.</p>\r\n\r\n<p style="text-align:center"><a href="/system/pictures/15/content_dsc01690.jpg" target="_blank"><img alt="" src="/system/pictures/15/content_dsc01690.jpg" style="height:270px; width:360px" /></a>&nbsp;<a href="/system/pictures/16/content_dsc01691.jpg" target="_blank"><img alt="" src="/system/pictures/16/content_dsc01691.jpg" style="height:270px; width:360px" /></a></p>\r\n\r\n<p style="text-align:justify">Сенсация заключается в том, что база отдыха &laquo;Озерки&raquo; работает первый год после 4-летнего перерыва и показала достойный результат. Так держать, база отдыха &laquo;Озерки&raquo;.</p>\r\n', '', 0, 1, 1, '2013-08-12 08:12:13', '2013-08-12 08:22:38', '<p>Сенсация!!! Пляж базы отдыха &laquo;Озерки&raquo; занял первое место в рейтинге пляжей Северского Донца в Краснолиманском районе. К такому выводу пришла Независимая комиссия журналистов и специалистов в курортологии, изучавшая в течение 2 месяцев организацию работы пляжей реки Северского Донца и оказание на них услуг для отдыхающих.&nbsp;</p>\r\n\r\n<p style="text-align:center"><strong><img alt="" src="/system/pictures/14/content_plyazh11.jpg" /></strong></p>\r\n', 'plyazh-bazy-otdyha-ozerki-luchshiy-na-poberezhie-severskogo-dontsa', NULL, 0, 'пляж базы отдыха «озерки» - лучший на побережье северского донца'),
(8, 'Фотоконкурс.. Я и моя любимая рыбалка', 'Фотоконкурс "Я и моя любимая рыбалка" от турбазы "ПАО СКМЗ Озерки"', '<p><a href="/system/pictures/17/content_dsc01734.jpg" target="_blank"><img alt="" src="/system/pictures/17/content_dsc01734.jpg" style="height:263px; width:351px" /></a>&nbsp;&nbsp;&nbsp;<a href="/system/pictures/18/content_dsc01721.jpg" target="_blank"><img alt="" src="/system/pictures/18/content_dsc01721.jpg" style="height:263px; width:351px" /></a></p>\r\n\r\n<p>&nbsp;<a href="/system/pictures/19/content_dsc01723.jpg" target="_blank"><img alt="" src="/system/pictures/19/content_dsc01723.jpg" style="height:263px; width:351px" /></a>&nbsp;&nbsp;&nbsp;<a href="/system/pictures/20/content_dsc01720.jpg" target="_blank"><img alt="" src="/system/pictures/20/content_dsc01720.jpg" style="height:263px; width:351px" /></a></p>\r\n\r\n<p>&nbsp;<a href="/system/pictures/22/content_dsc01715.jpg" target="_blank"><img alt="" src="/system/pictures/22/content_dsc01715.jpg" style="height:263px; width:351px" /></a>&nbsp;&nbsp;&nbsp;<a href="/system/pictures/23/content_dsc01712.jpg" target="_blank"><img alt="" src="/system/pictures/23/content_dsc01712.jpg" style="height:263px; width:351px" /></a></p>\r\n', '', 0, 1, 3, '2013-08-16 13:49:49', '2013-08-21 08:48:28', '', 'fotokonkurs-ya-i-moya-lyubimaya-rybalka', NULL, 0, 'фотоконкурс.. я и моя любимая рыбалка'),
(9, 'Рыбалка', 'Рыбалка', '<p><a href="/system/pictures/24/content_dscn0548.jpg"><img alt="" src="/system/pictures/24/content_dscn0548.jpg" style="height:248px; width:331px" /></a>&nbsp;&nbsp;<a href="/system/pictures/25/content_dscn0519.jpg" target="_blank"><img alt="" src="/system/pictures/25/content_dscn0519.jpg" style="height:248px; width:331px" /></a> &nbsp;<a href="/system/pictures/26/content_dscn0537.jpg" target="_blank"><img alt="" src="/system/pictures/26/content_dscn0537.jpg" style="height:248px; width:331px" /></a> &nbsp;<a href="/system/pictures/27/content_dscn0480.jpg" target="_blank"><img alt="" src="/system/pictures/27/content_dscn0480.jpg" style="height:248px; width:331px" /></a> &nbsp;<a href="/system/pictures/28/content_dscn0517.jpg" target="_blank"><img alt="" src="/system/pictures/28/content_dscn0517.jpg" style="height:248px; width:331px" /></a> &nbsp;<a href="/system/pictures/29/content_dscn0465.jpg"><img alt="" src="/system/pictures/29/content_dscn0465.jpg" style="height:248px; width:331px" /></a> &nbsp;<a href="/system/pictures/30/content_dscn0451.jpg" target="_blank"><img alt="" src="/system/pictures/30/content_dscn0451.jpg" style="height:248px; width:331px" /><img alt="Верига В.А. модельщик МТЦ" src="/system/pictures/40/content_dsc01918.jpg" style="height:248px; width:331px" /><img alt="" src="/system/pictures/41/content_dscn0555.jpg" style="height:331px; width:248px" /><img alt="" src="/system/pictures/42/content_dscn0572.jpg" style="height:331px; width:248px" /><img alt="" src="/system/pictures/43/content_dscn0585.jpg" style="height:248px; width:331px" /></a></p>\r\n', '', 0, 1, 3, '2013-08-21 10:04:55', '2013-08-28 06:46:56', '', 'rybalka', NULL, 0, 'рыбалка'),
(10, 'Спорт', 'Спорт', '<p><a href="/system/pictures/31/content_dscn0400.jpg" target="_blank"><img alt="" src="/system/pictures/31/content_dscn0400.jpg" style="height:248px; width:330px" /></a>&nbsp;&nbsp;<a href="/system/pictures/32/content_dscn0399.jpg" target="_blank"><img alt="" src="/system/pictures/32/content_dscn0399.jpg" style="height:248px; width:331px" /></a></p>\r\n\r\n<p><a href="/system/pictures/33/content_dscn0398.jpg" target="_blank"><img alt="" src="/system/pictures/33/content_dscn0398.jpg" style="height:248px; width:331px" /></a>&nbsp;&nbsp;<a href="/system/pictures/34/content_dscn0401.jpg" target="_blank"><img alt="" src="/system/pictures/34/content_dscn0401.jpg" style="height:248px; width:331px" /></a></p>\r\n\r\n<p><a href="/system/pictures/35/content_dscn0424.jpg" target="_blank"><img alt="" src="/system/pictures/35/content_dscn0424.jpg" style="height:248px; width:331px" /></a>&nbsp;&nbsp;<a href="/system/pictures/36/content_dscn0425.jpg" target="_blank"><img alt="" src="/system/pictures/36/content_dscn0425.jpg" style="height:248px; width:331px" /></a></p>\r\n\r\n<p><a href="/system/pictures/37/content_dscn0454.jpg" target="_blank"><img alt="" src="/system/pictures/37/content_dscn0454.jpg" style="height:248px; width:331px" /></a>&nbsp;&nbsp;<a href="/system/pictures/38/content_dscn0419.jpg" target="_blank"><img alt="" src="/system/pictures/38/content_dscn0419.jpg" style="height:248px; width:331px" /></a></p>\r\n\r\n<p><a href="/system/pictures/39/content_dscn0549.jpg" target="_blank"><img alt="" src="/system/pictures/39/content_dscn0549.jpg" style="height:248px; width:331px" /><img alt="" src="/system/pictures/51/content_dsc01888.jpg" style="height:248px; width:331px" /></a></p>\r\n\r\n<p><a href="/system/pictures/39/content_dscn0549.jpg" target="_blank"><img alt="" src="/system/pictures/53/content_dsc01914.jpg" style="height:248px; width:331px" /><img alt="" src="/system/pictures/52/content_dsc01896.jpg" style="height:248px; width:331px" /></a></p>\r\n\r\n<p><img alt="" src="/system/pictures/54/content_dsc01915.jpg" style="height:248px; width:331px" /><img alt="" src="/system/pictures/55/content_dsc01898.jpg" style="height:248px; width:331px" /></p>\r\n', '', 0, 1, 3, '2013-08-21 10:14:02', '2013-08-28 06:40:31', '', 'sport', NULL, 0, 'спорт'),
(11, 'Внимание! 31 августа на турбазе состоится праздник закрытия оздоровительного сезона «ЛЕТО 2013»', 'Внимание! 31 августа на турбазе состоится праздник закрытия оздоровительного сезона «ЛЕТО 2013» В программе праздника: соревнования по волейболу, соревнования по теннису, соревнования по шахматам. Дегустация домашнего вина. Конкурс на лучшего шашлычного и рыбака. ПРИГЛАШАЕМ  НА ПРАЗДНИК  ВСЕХ ЖЕЛАЮЩИХ!', '<p>Внимание! 31 августа на турбазе состоится праздник закрытия оздоровительного сезона &laquo;ЛЕТО 2013&raquo; В программе праздника: соревнования по волейболу, соревнования по теннису, соревнования по шахматам. Дегустация домашнего вина. Конкурс на лучшего шашлычного и рыбака. ПРИГЛАШАЕМ &nbsp;НА ПРАЗДНИК &nbsp;ВСЕХ ЖЕЛАЮЩИХ!</p>\r\n', '', 0, 1, 2, '2013-08-27 10:07:02', '2013-08-27 10:12:16', '<p>Внимание! 31 августа на турбазе состоится праздник закрытия оздоровительного сезона &laquo;ЛЕТО 2013&raquo;&nbsp;</p>\r\n', 'Vnimanie!', NULL, 0, 'внимание! 31 августа на турбазе состоится праздник закрытия оздоровительного сезона «лето 2013»'),
(12, 'Шахматный турнир', 'шахматы', '<p>Когда пылающее солнце добралось к&nbsp; зениту, в тени навесов уютных беседок&nbsp; между отдыхающими базы &laquo;Озерки&raquo; начались жаркие сражения за шахматными досками. Турнир посвящен Дню Независимости Украины. Упорные сражения развернулись между командами &laquo;Берег&raquo; и &laquo;Остров&raquo;, представителями из городов Донецкой, Харьковской и Луганской областей, а именно такая география проживания отдыхающих. В личном первенстве профсоюзный комитет ПАО &laquo;СКМЗ&raquo; установил денежные премии за первых 3 места, что естественно усилило накал борьбы. Среди опытных шахматистов были и начинающие &laquo;пономаревы&raquo;. В игре использовались как стандартные шахматы, так и шахматные фигуры, с любовью выточенные заводским умельцем из модельного цеха Трофимовым А.А., для большого шахматного стола. Соревнования проходили по Олимпийской системе. Через пару часов упорной борьбы была определена команда победительница &ndash; это команда &laquo;Берег&raquo;, а в личном первенстве победу одержал представитель города Макеевки&nbsp;Чернышенко В.В., второе место Пасько А.С.&nbsp;и третье Ткаченко&nbsp;В торжественно - веселой &nbsp;обстановке председатель ПК Голов В.М. вручил победителям грамоты &nbsp;и денежные призы. И обязательно фото на память о турнире и прекрасно проведенном времени летом на базе отдыха &laquo;Озерки&raquo;.</p>\r\n\r\n<p><img alt="" src="/system/pictures/46/content_dsc01898.jpg" style="height:281px; width:375px" /><img alt="" src="/system/pictures/48/content_dsc01908.jpg" style="height:281px; width:375px" /><img alt="" src="/system/pictures/49/content_dsc01910.jpg" style="height:281px; width:375px" /><img alt="" src="/system/pictures/50/content_dsc01912.jpg" style="height:281px; width:375px" /></p>\r\n', '', 0, 1, 1, '2013-08-27 10:52:34', '2013-08-28 06:33:12', '', 'chess', NULL, 0, 'шахматный турнир');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `snippet` text COLLATE utf8_unicode_ci,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lower_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `text`, `snippet`, `keywords`, `author`, `created_at`, `updated_at`, `slug`, `lower_title`) VALUES
(1, 'Услуги', '<p>База отдыха &laquo;Озерки&raquo; находится в одном из красивейших мест побережья Северского Донца - станции Брусин Краснолиманского района.&nbsp;База стоит в лиственном лесу, имеет собственный пляж на побережье Донца.</p>\r\n\r\n<p>На территории Базы отдыха &laquo;Озерки&raquo; расположены двух-, трех- и четырехместные домики, душевые, спортивная площадка, теннисные столы, детская площадка.&nbsp;&nbsp;</p>\r\n\r\n<p>В отдельном здании оборудовано помещение для приготовления пищи с промышленными электропечами. &nbsp;Все домики укомплектованы необходимым для проживания инветтарем, посудой.</p>\r\n\r\n<p>В летний период на территории базы работает бар-буфет.</p>\r\n\r\n<p>К турбазе &laquo;Озерки&raquo; очень удобный подъезд автотранспортом, недалеко останавливаются рейсовые автобусы из Краматорска, Славянска, Красного Лимана, железнодорожная станция Брусин также находится недалеко от базы.</p>\r\n\r\n<p>Территорию базы с трех сторон окружает озеро, на котором можно порыбачить. Здесь - поистине райский уголок для любителей тишины и семейного отдыха.</p>\r\n', 'База отдыха «Озерки» находится в одном из красивейших мест побережья Северского Донца - станции Брусин Краснолиманского района. База стоит в лиственном лесу, имеет собственный пляж на побережье Донца.', 'страница, обновится, позже, 404', 'СКМЗ', '2013-07-04 13:13:29', '2013-07-25 11:05:46', 'uslugi', 'услуги'),
(2, 'Контакты', '<h2><strong>Наши координаты:</strong></h2>\r\n\r\n<p>Украина, Донецкая область, г.Краматорск<br />\r\nПАО &quot;Старокраматорский машиностроительный завод&quot;</p>\r\n\r\n<p><span style="font-family:helvetica,arial,freesans,sans-serif; font-size:12px">Телефоны:<strong>(050)348-95-47, (067)255-41-92,</strong></span><strong>&nbsp;(098)571-04-99</strong></p>\r\n\r\n<p style="text-align:center"><img alt="" src="/system/pictures/1/content_content_scheme.png" style="height:579px; width:724px" /></p>\r\n', 'Как найти нас...', 'контакты, скмз, краматорск, украина', '', '2013-07-04 13:14:07', '2013-07-17 06:11:58', 'kontakty', 'контакты'),
(3, 'История', '<p>ПАО &laquo;СКМЗ&raquo; - старейшее предприятие Украины с более чем вековой&nbsp;историей. &nbsp;Руководство предприятия всегда уделяло должное внимание&nbsp;оздоровлению и отдыху трудящихся. В 60-е годы, когда в Щурово были&nbsp;выделены участки для строительства заводских баз отдыха, СКМЗ в числе&nbsp;первых начал строительство собственной базы &laquo;Озерки&raquo;. &nbsp;Трудящиеся&nbsp;завода с энтузиазмом участвовали в строительстве &nbsp;- каждый цех, отдел&nbsp;оборудовали себе домики. Со временем &laquo;Озерки&raquo; стали любимым местом&nbsp;отдыха заводчан. Здесь всегда приятно отдохнуть семьей и пообщаться с&nbsp;коллегами в непринужденной обстановке.</p>\r\n\r\n<p>Щурово, также Адамовка и Шабельск, сколько помнят жители села, принадлежало фамилии Помещиков Адамовых и состоя&shy;ло в приходе Петропавловской Церкви, расположенной в слобо&shy;де Лиман Изюмского уезда Харь&shy;ковской губернии (до 1919 года северные и северо-западные ча&shy;сти нынешней Донецкой области входили в состав Харьковской губер&shy;нии).В конце XVIII века поселился здесь поручик Николай Степанович Адамов, который был очень набожный и прожив в Щурово чуть более 30 лет, он возвел каменный храм в честь Рождества Пресвятой Бого&shy;родицы. Освящен храм был в 1822 году. Крестьяне любили Адамо&shy;ва и отзывались, как о добром панеТак, о голодном 1833 годе онивспоминают с некоторым довольством. Не смотря на то, что хлеб доходил в тот год до 35 рублей за четвертину, Николай Степанович заботился о жителях и весь сбор со своих доходных жите&shy;лям села и, когда этого стало недостаточно, покупал хлеб в курской губернии. Умер Н.С. Адамов в 1840 году, когда ему было 89 лет. Похоронили его в устроенном им фамильном скле&shy;пе за церковью около своей жены, которая ушла из жизни в 1825 году . Новой хозяйкой щуровских мест становится Екатерина Васильевна Шабельская. Муж ее Павел Васильевич Шабельский был действительным членом импера&shy;торского общества сельского хо&shy;зяйства южной России. Екатери&shy;на-Васильевна по собственному усердию к устроению и украшению храмов Схожих, во все време&shy;на владения сим селом не пере&shy;ставала украшать и снабжать щуровский храм утварью, ризницей и другими богослужебными веща&shy; В 1847 году муж ее умер, и она перешла в свое имение, а&nbsp;Щуро&shy;водосталось младшему сыну Помпею. После его смерти, в 1848 году внуку Николаю Помпеевичу. &laquo;Усердствуя в память супруга своего &laquo; Екатерина Васильев&shy;на сделала в церкви парчовую ризу в 100 рублей серебром и се&shy;ребряный крест для престола с подножием - тоже в 100 рублей серебром. &laquo;И прихожане церкви сей часто видели над собой руку Божию и почти всегда милующую и редко карающую&raquo;. И какие бы беды не случались в это время, а щуровских крестьян они, как будто, обходили стороной. Например, в 1847 году свиреп&shy;ствовала холера, для многих, гу&shy;бительная, а в Щурово Умерло, от нее всего 2 человека. В1849 году был голод, а щуровские крестьяне большой нужды не знали и корму для ско&shy;та было достаточно даже прода&shy;вали его, также и огородные рас&shy;тения. По данным на 1908 год церк&shy;ви села Щурово принадлежало 1,5 десятины усадебной земли и 33 десятины - пахотной. Церковь имела неприкосновенный капи&shy;тал в размере 6 тысяч рублей. По штатному расписанию имелись священник и псаломщик. Священник - Сергей Шипулин окончил семинарию по 2 разряду. С 1902года служил в щуровскои церкви, за что получал жалование - 294 рубля. Петр Чернявский - пса&shy;ломщик - обучался в приходской школе, в настоящей церкви с 1894 года получал жалование - 98 руб&shy;лей. Церковным старостой крес&shy;тьян был Иосиф Губарь.До 1920 года село Щурово от&shy;носилось к Изюмскому уезду. В 1920 году Донецкий губернский революционный комитет своим приказом определил новые грани&shy;цы Бахмутского уезда, куда вош&shy;ли 17 новых волостей Изюмского уезда. Но местное руководство этих волостей не захотело признать власть Бахмутского уезда и продолжало подчиняться Сла&shy;вянскому уездному исполкому потому, что. по расположению были ближе к нему. И только в 1923 году на основании приказа Донгубисполкома был утвержден список волостей Славянского уез&shy;да, присоединенных к Бахмутскому уезду. В списках значилась Лиманская волость куда входило село Щурово.По итогам демографической переписи 1923 года в селе Щуро&shy;во всего было 659 человек, из них 323 мужчины и 336 женщины. По национальности все были ук&shy;раинцы среди них грамотных жители села занимались сельским хозяйством выращивали пшеницу, рожь, ячмень, кукурузу, разводили скот. По дан&shy;ным экономического, обследова&shy;ния Лиманского района за 1925 год в пользовании у жителей Щу&shy;рово было 360 десятин земли, из них 127 посевной, 10 лошадей, 47 волов, 99 коров, 35 свиней, 15 овец и коз. Имелась одна пасека состоящая из 18 ульев. В селе работало 5 водяных мельниц. Одной мельницей владело кооперативное товарищество &laquo;Артель&raquo;.С приходом советской власти в Щурово образовался сельский совет. С 1924 года председате&shy;лем сельсовета стал житель села - Удовиченко Иван Яковле&shy;вич. В 1931 году организован кол&shy;хоз &laquo;Зелёный гай&raquo;, Щуровского сельского совета. Расположен он был на хуторе Старый Караван. Когда началась Великая Отече&shy;ственная воина, колхоз времен&shy;но прекратил свою деятель&shy;ность.В июне 1942 года при вступ&shy;лении фашистов в хутор Караван были уничтожены посевы, раз&shy;граблено и разрушено колхозное имущество. По словам очевидцев , руководил этим немецкий офицер Шварц.Пострадали и люди - при бомбежках и на минных полях было убито 10 человек, из них двое детей, ранено - 6, угнано в Германию - три человека. Всего пострадало в селе Щурово - 21 человек.Волков Иван Павлович и Сущенко Василии Семенович были арестованы в январе 1943 года Лиманской полицией. Впослед&shy;ствии их нашли среди убитых в лесу на окраине города Красный Лиман.После освобождения села Щурово от фашистских захватчи&shy;ков перед жителями стала большая задача восстановить разрушенное. На заседании исполкома сель&shy;ского совета от 25 июля 1944 года постановили: &laquo;Для быстрейшего отстроения и ремонта жилых домов и колхозных ферм создать бригады по селу Щурово с 12 человек, по хутору Старый Караван колхозу &laquo;Зеленый Гаи&raquo; с 6человек. Разрушенную церковь решением Сталинской областного совета было разрешено разобрать, а стройматери&shy;алы использовать на постройку и ремонт Школы и клуба.В восстановлении нуждалось и сельское хозяйство села. Возобновил свою деятельность колхоз. Государство обеспечило ёго посевным материалом. Благодаря этой помощи своевременно были завершены полевые работы. И уже в апреле 1945 года, решением исполкома Краснолиманского райсовета колхоз &laquo;Зеленый гай&raquo; Щуровского сельского Совета (Председатель Колхоза тов. Овчаренко, председатель сельсовета тов. Тарасенко) вы&shy;несен на районную Доску почета, за выполнение плана посева зер&shy;новых на 100%.Так шаг за шагом возрождалось Щурово и начинался новый этап жизни села.</p>\r\n', 'Страница обновится позже...', 'Страница обновится позже...', '', '2013-07-04 13:14:36', '2013-07-05 21:17:54', 'tseny', 'история'),
(4, 'Цены', '<p><strong>Цены&nbsp;за проживание&nbsp;указаны из расчета&nbsp;за одного&nbsp;человека&nbsp;в&nbsp;сутки.</strong></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" class="tbl" style="width:100%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="col">Категория номера</th>\r\n			<th scope="col">Характеристика номера</th>\r\n			<th scope="col">июнь</th>\r\n			<th scope="col">июль</th>\r\n			<th scope="col">август</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>2-х&nbsp;местный номер</td>\r\n			<td>2 кровати, стол, стулья, холодильник, эл.плита(газ. плита)</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3-х&nbsp;местный номер</td>\r\n			<td>3 кровати, стол, стулья, холодильник, эл.плита(газ. плита)</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4-х&nbsp;местный номер</td>\r\n			<td>4 кровати, стол, стулья, холодильник, эл.плита(газ. плита)</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n			<td style="text-align:center">35 грн.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'Цены', 'цены, скидки, акции, ПАО СКМЗ, озерки, щурово, краснолиманский район', '', '2013-07-04 13:15:28', '2013-07-05 21:17:32', 'istoriya', 'цены'),
(5, 'Досуг', '<p>Досугц</p>\r\n', 'Досуг', 'Досуг', '', '2013-07-04 13:15:57', '2013-07-05 21:17:22', 'dosug', 'досуг');

-- --------------------------------------------------------

--
-- Структура таблицы `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20130409164317'),
('20130409164321'),
('20130409164322'),
('20130409164525'),
('20130409180745'),
('20130409181242'),
('20130409182310'),
('20130409182957'),
('20130409184736'),
('20130409200023'),
('20130409200132'),
('20130409235526'),
('20130412174955'),
('20130412175808'),
('20130412180456'),
('20130412190049'),
('20130412205535'),
('20130413115550'),
('20130413124439'),
('20130413164107'),
('20130413182209'),
('20130413183419'),
('20130413183805'),
('20130413194610'),
('20130414111934'),
('20130414144937'),
('20130415172819'),
('20130415173419'),
('20130416174959'),
('20130416180456'),
('20130416183935'),
('20130416195858'),
('20130417165358'),
('20130417174942'),
('20130417182718'),
('20130417183202'),
('20130419201939'),
('20130419202210'),
('20130503111317'),
('20130612073015'),
('20130613114625'),
('20130613115757'),
('20130613121436'),
('20130626125916'),
('20130627190728'),
('20130705182002'),
('20130705201401'),
('20130705203631');

-- --------------------------------------------------------

--
-- Структура таблицы `socials`
--

CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `socials`
--

INSERT INTO `socials` (`id`, `title`, `path`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`, `display`, `position`, `created_at`, `updated_at`, `image_class`) VALUES
(1, 'ВКонтакте', 'http://vk.com', NULL, NULL, NULL, NULL, 1, 0, '2013-07-04 14:17:35', '2013-07-04 14:17:35', 'vkontakte'),
(2, 'Twitter', 'http://twitter.com', NULL, NULL, NULL, NULL, 1, 1, '2013-07-04 14:17:48', '2013-07-04 14:17:48', 'twitter'),
(3, 'Facebook', 'http://facebook.com', NULL, NULL, NULL, NULL, 1, 2, '2013-07-04 14:18:02', '2013-07-04 14:18:02', 'facebook'),
(4, 'Одноклассники', 'http://odnoklassniki.ru', NULL, NULL, NULL, NULL, 1, 3, '2013-07-04 14:18:18', '2013-07-04 14:18:18', 'odnoklassniki'),
(5, 'YouTube', 'http://youtube.com', NULL, NULL, NULL, NULL, 1, 4, '2013-07-04 14:18:32', '2013-07-04 14:18:32', 'youtube'),
(6, 'Мой Мир', 'http://my.mail.ru', NULL, NULL, NULL, NULL, 1, 5, '2013-07-04 14:18:53', '2013-07-04 14:18:53', 'mail-ru');

-- --------------------------------------------------------

--
-- Структура таблицы `taggings`
--

CREATE TABLE IF NOT EXISTS `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `taggings`
--

INSERT INTO `taggings` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `tagger_id`, `tagger_type`, `context`, `created_at`) VALUES
(3, 4, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:12:13'),
(4, 5, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:12:13'),
(5, 6, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:12:13'),
(6, 7, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:12:13'),
(7, 8, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:12:13'),
(9, 10, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:13:53'),
(11, 2, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:22:38'),
(12, 3, 7, 'New', NULL, NULL, 'tags', '2013-08-12 08:22:38'),
(13, 12, 8, 'New', NULL, NULL, 'tags', '2013-08-21 08:48:28'),
(14, 13, 8, 'New', NULL, NULL, 'tags', '2013-08-21 08:48:28'),
(15, 14, 8, 'New', NULL, NULL, 'tags', '2013-08-21 08:48:28'),
(16, 15, 5, 'New', NULL, NULL, 'tags', '2013-08-21 08:48:54'),
(17, 13, 5, 'New', NULL, NULL, 'tags', '2013-08-21 08:48:54'),
(18, 14, 5, 'New', NULL, NULL, 'tags', '2013-08-21 08:48:54');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Автобус из Мариуполя'),
(2, 'краснолиманский район'),
(3, 'турбаза'),
(4, 'лучшая база отдыха'),
(5, 'турбаза озерки'),
(6, 'НКМЗ'),
(7, 'лето 2013'),
(8, 'сосна'),
(9, 'ландыщ'),
(10, 'ландыш'),
(11, 'сенсация'),
(12, 'рыбалка'),
(13, 'досуг'),
(14, 'турбаза пао скмз озерки'),
(15, 'шашлык');

-- --------------------------------------------------------

--
-- Структура таблицы `testimonals`
--

CREATE TABLE IF NOT EXISTS `testimonals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testimonal` text COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `display` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- Дамп данных таблицы `testimonals`
--

INSERT INTO `testimonals` (`id`, `testimonal`, `author`, `address`, `email`, `created_at`, `updated_at`, `display`) VALUES
(3, 'Огромное спасибо персоналу базы отдыха за отличный отдых. Все было на высшем уровне. Приятно провели время семьей и друзьями. Было чем заняться и не о чем не пожалели. будем приезжать как только будет возможность. Желаем процветания и дальнейшего развития. Спасибо!', 'Коневские', 'Краматорск, Украина', 'alena_popovskaya@mail.ru', '2013-07-11 07:03:53', '2013-07-11 07:18:51', 1),
(5, 'Получили огромное удовольствие от отдыха на базе отдыха "Озерки". Очень радует прекрасная природа, радушное, доброжелательное отношение работников к отдыхающим. Особо хочеться выделить из работников турбазы Валентину Николаевну, Игоря Николаевича, Григория Александровича низкий Вам поклон за Ваш нелегкий, благородный труд. Желаем процветания.', 'Махиборда П.В.,Остерникова Л.И.', '', 'mahibord@mail.ru', '2013-07-11 07:11:15', '2013-07-11 07:16:24', 1),
(7, 'Огромное спасибо за открытие базы отдыха. Не могу представить себя без турбазы "Озерки". Много лет, каждое лето проводил я и моя семья здесь. Тихо, спокойно для нас уютно и очень красиво. Ни на какую турбазу я наши "Озерки" не променяю.\r\n Еще раз огромное Вам спасибо, я получил огромное удовлитворение. Спасибо!', 'семья Власовых', '', 'alena_popovskaya@mail.ru', '2013-07-11 07:18:28', '2013-07-11 07:19:02', 1),
(8, 'Просто и убедительно!\r\n Отдых прошел прекрасно!', 'Семья Трофимовых.', '', 'alena_popovskaya@mail.ru', '2013-07-11 07:20:09', '2013-07-11 07:20:27', 1),
(10, 'Отдохнули замечательно. Будем в следующем году.\r\nСпасибо!', 'Отдыхающие', '', 'alena_popovskaya@mail.ru', '2013-07-11 07:22:22', '2013-07-11 07:53:35', 1),
(11, 'Дом №24 спасибо за прекрасный отдых. Нам очень у Вас понравилось планирум приехать к Вам еще нам здесь все понравилось мне и моей семье большое Вам спасибо.', 'Демчук Ю.М.', '', 'alena_popovskaya@mail.ru', '2013-07-11 07:44:03', '2013-07-11 07:53:57', 1),
(13, 'Спасибо за то, что наконец-то открыли снова эту замечательную турбазу! Приедем сюда обязательно и в этом году и в следующие года! Спасибо коллективу работников турбазы за замечательную уютную обстановку и чистоту на б/о.', 'Романко С.Н.', '', 'alena_popovskaya@mail.ru', '2013-07-11 07:51:12', '2013-07-11 07:54:27', 1),
(15, 'Спасибо! Все очень хорошо!\r\nЕсли хочешь отдохнуть, то все здесь в твоих руках!\r\nСпасибо Всей администрации турбазы и завода СКМЗ!!!', 'Отдыхающие', '', 'alena_popvskaya@mail.ru', '2013-07-11 07:53:36', '2013-07-11 07:54:54', 1),
(16, 'Спасибо большое за отдых ждем следующего года, чтобы приехать. Персонал супер, так держать.', 'семья Петренко', '', 'alena_popovskaya@mail.ru', '2013-07-11 07:55:32', '2013-07-11 07:57:30', 1),
(17, 'Сегодня выезжаем(( Так грустно! Будем помнить этот отдых весь год и в 2014г. обязательно вернемся. Спасибо!!!', 'Александр, Денис, Мирослава.', 'г. Мариуполь', 'alena_popovskaya@mail.ru', '2013-07-11 07:58:21', '2013-07-11 09:04:13', 1),
(19, 'Спасибо за отдых, прекрасное обслуживание, отличная природа, чистая река.', 'Семья Бошни', 'г. Славянск', 'alena_popovskaya@mail.ru', '2013-07-11 08:00:22', '2013-07-11 09:02:46', 1),
(22, 'Спасибо за хороший отдых. отличная природа. Побольше хороших отдыхающих.', 'Отдыхающие', '', 'alena_popovskaya@mail.ru', '2013-07-11 08:01:28', '2013-07-11 09:03:26', 1),
(24, 'Большое спасибо за отдых. Тихая, спокойная атмосфера, замечательная природа, хорошая рыбалка.\r\nНадеемся еще приехать сюда отдыхать!', 'Семья Николаюк', '', 'alena_popovskaya@mail.ru', '2013-07-11 08:08:29', '2013-07-11 09:03:04', 1),
(26, 'Мы отдыхающие, бывшие работники СКМЗ с внуками благодарим работников турбазы за душевное и радушное к нам отношение.\r\nСпасибо Валентине Николаевне, Игорю Николаевичу, Григорию Александровичу за человеческое отношение к нам отдыхающим. Здоровья Вам крепкого благополучия в их семьх и всего самого наилучшего. С уважением к Вам работникам турбызы "Озерки".', 'Мовчан В.Н., Мовчан Л.И.', '', 'alena_popovskaya@mail.ru', '2013-07-11 08:16:02', '2013-07-11 09:02:21', 1),
(27, 'Мы отдыхающие, бывшие работники СКМЗ с внуками благодарим работников турбазы за душевное и радушное к нам отношение.\r\nСпасибо Валентине Николаевне, Игорю Николаевичу, Григорию Александровичу за человеческое отношение к нам отдыхающим. Здоровья Вам крепкого благополучия в их семьх и всего самого наилучшего. С уважением к Вам работникам турбызы "Озерки".', 'Мовчан В.Н., Мовчан Л.И.', '', 'alena_popovskaya@mail.ru', '2013-07-11 08:16:02', '2013-07-11 08:34:15', 1),
(29, 'Отпуск начался на славу, можно поставить твердую "5". Рыбалка, пляж, отзывчивый коллектив, прекрасные домики. Отдыхаль здесь, отдыхаем и будем отдыхать.', 'Жижко В.В', '', 'alena_popovskaya@mail.ru', '2013-07-11 08:18:43', '2013-07-11 08:33:22', 1),
(30, 'Подскажите, имеются ли мангалы на территории? Спасибо', 'Андрей', 'Крымки, Украина', 'andrey_kaleda@ukr.net', '2013-07-18 10:30:50', '2013-08-27 07:13:55', 1),
(31, 'Добрый день подскажите есть ли у вас 2-х местный отдельный домик(на 1 -го хозяина) со своим холодильником и печкой? ', 'Оксана', 'Макеевка, Украина', 'ksanka.salamatova@mail.ru', '2013-07-25 10:30:43', '2013-07-25 10:30:43', 0),
(32, 'только приехали,отдохнули хорошо.большое всем спасибо', 'Ольга', 'Донецк, Украина', 'garbyzic@mail.ru', '2013-07-31 10:56:25', '2013-08-27 07:16:51', 1),
(33, 'Отдыхали здесь впервые. Понравилось все: и уютные домики, и прекрасный пляж, и тихая спокойная обстановка. Провели время именно так, как хотелось - с огромным удовольствием! А особо хорошее впечатление оставило отношение Валентины Николаевны к отдыхающим! Спасибо большое за ее труд и понимание!', 'Семья Анисимовых', 'Краматорск, Украина', 'olobinskaya@ukr.net', '2013-08-12 11:28:38', '2013-08-27 09:18:00', 1),
(34, 'Турбаза просто отличная, отдых понравился, чистый пляж, людей очень мало, тихо, спокойно.. приятный общительный коллектив, ухоженные домики,вообщем всё понравилось.', 'Зоя Петровна', 'Краматорск, Украина', 'durak_34@mail.ru', '2013-08-15 10:26:01', '2013-08-27 09:42:00', 1),
(35, 'тишина турбазы и относительное личное спокойствие; отличный пляж; прекрасные, теплые, большие кирпичные домики с решетками на окнах; большие веранды в домиках для ужина или игры в карты; много чего для досуга; сказочно-живописное месторасположения, турбаза на полуострове; неплохое обслуживание; нет мусора; чистый воздух и атмосфера для уединенного отдыха подальше от цивилизации. ', 'Дмитрий', 'Краматорск', 'DimonKot91@yandex.ru', '2013-08-15 10:34:49', '2013-08-27 09:20:06', 1),
(36, 'Первый год приехали сюда,\r\nдолго думали куда поехать.\r\nТак хотелось просто отдохнуть,\r\nа не чисто пицца, дискотеки.\r\nЭтот вариант нам по душе:\r\nтихо, мирно, хорошая погода.\r\nЕсть катамараны и вообще\r\nТут такая четкая природа!\r\nЗдесь очень круто отдыхать:\r\nприрода, солнце, пляж.\r\nНо никому так не понять,\r\nкак радует все глаз.\r\nИ домики приличные,\r\nв них так уютно жить.\r\nВодичка здесь отличная, нельзя не полюбить.\r\nИ если вы хотите клево отдохнуть\r\nвещички собирите и сразу в путь!\r\nВолненья все оставить, здесь рядом все свои.\r\nМы рады Вам представить турбаза "Озерки".\r\nP.S Спасибо за прекрасный отдых!\r\n       Ждите снова в гости!', 'Семья Анисимовых', 'Краматорск, Украина', 'alena.popovskaya@mail.ru', '2013-08-23 05:24:46', '2013-08-27 09:39:44', 1),
(37, 'С мая месяца просмотрела весь интернет в поисках отдыха на базах и пансионатах. Привлекла внимание база отдыха "Озерки". Приехали и не разочеровались!\r\nОчень приятный и комфортный отдых в домике № 27 1/2, радушное и доброжелательное отношение руководства и персонала б/о.\r\nОтличное настроение придает природа и близость реки. Молодцы все те, кто поднимает эту базу и обеспечивает людям полноценный отдых.', 'Хохлова Ю.И.', 'Краматорск', 'alena.popovskaya@mail.ru', '2013-08-23 05:32:08', '2013-08-27 07:14:57', 1),
(38, 'Отдыхали с семьей, очень понравилось. Хорошее обслуживание, чистота и порядок.\r\nСпасибо за отдых.', 'Постернак мех №5', 'Краматорск, Украина', 'alena.popovskaya@mail.ru', '2013-08-23 06:21:49', '2013-08-27 07:14:47', 1),
(39, 'Мы отдыхающие с домика № 34/1 хотим  поблагодарить сотрудников турбызы за их обслуживание за внимательное отношение, за быстрое оказание помощи в неполадках. Желаем в дальнейшем процветания и работы турбазы и оказании сотрудникам помощи для благоустройства турбазы.', 'отдыхающие', 'Краматорск', 'alena.popovskaya@mail.ru', '2013-08-23 06:32:57', '2013-08-27 07:14:18', 1),
(40, 'Выражаем огромную благодаоность за отличный отдых. Очень понравилась турбаза, обслуживающий персонал. Спасибо за чистоту, уют, тишину и красивую природу. С удовольствием приедем в следующий раз.', 'Семья Гребец', 'Краматорск, Украина', 'alena.popovskaya@mail.ru', '2013-08-23 07:00:02', '2013-08-27 07:14:06', 1),
(41, 't3oMuP http://www.MHyzKpN7h4ERauvS72jUbdI0HeKxuZom.com', 'ronny', 'xDixWNajdoL', 'barny182@hotmail.com', '2013-09-20 00:51:37', '2013-09-20 00:51:37', 0),
(42, 'мы отдыхали в конце июня 2013.на сайте все хорошо а когда в селились кошмар в домиках грязно.очень пыльно что дышать не чем.матрасы подушки воняют плесенью.грязные. постельное в дырках.посуды нет.дали кастрюли в которой сами мешали какой то раствор мы ее и не пользовались.вода ужасная даже зубы нельзя чистить.воду только покупать. пляж с мулякой. в магазине дороже всех магазинов в щюрова .душ платный.\r\nбольше суда не поедим и не кому не рекомендуем', 'татьяна', 'Украина Макеевка', 'dilyara-jusipova@mail.ru', '2013-09-26 13:30:18', '2013-09-26 13:30:18', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display` tinyint(1) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
