-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 04 2017 г., 18:30
-- Версия сервера: 5.5.45-log
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `lutskadesign_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '', 'Яна Луцкая@|;Yana LUTSKAYA@|;', '<p>член Британского союза дизайна SBID, руководитель студии интерьерного дизайна</p>@|;<p>short_description</p>@|;', '<p>Собственный стиль &ndash; привилегия избранных, а его поиск &ndash; интрига новых впечатлений.</p>\r\n\r\n<p>Я создаю особенные интерьеры для особенных клиентов. Пространство, которое соответствует Вашему представлению о luxury living. Интерьеры, которые являются продолжением Вашего стиля.</p>\r\n\r\n<p>Со мной Вы не требуете совершенства, а просто рассчитываете на него!</p>@|;<p>description</p>@|;', '{"\\u0424\\u043e\\u0442\\u043e":"upload\\/articles\\/1\\/img\\/1-5908efb575588.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 1, '2017-04-27 20:51:12', '2017-05-04 13:54:50'),
(2, 3, 0, '', 'Неординарные и яркие идеи@|;title_en@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/2\\/img\\/2-59025a96a9249.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 1, '2017-04-27 20:53:23', '2017-05-03 12:45:48'),
(3, 3, 0, '', 'Интерьеры в стиле Luxury living@|;Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/3\\/img\\/3-59025ab982281.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 1, '2017-04-27 20:55:21', '2017-05-03 12:46:37'),
(4, 3, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/4\\/img\\/4-59025ad30f91e.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:55:47', '2017-04-27 20:55:47'),
(5, 3, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/5\\/img\\/5-59025aea1d5a5.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:56:10', '2017-04-27 20:56:10'),
(6, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0413\\u043e\\u0434":"2017","\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/6\\/img\\/6-590b29fe5fead.jpg","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"White Penthouse@|;White Penthouse@|;","\\u041c\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435":"\\u041a\\u0438\\u0435\\u0432@|;Kyiv@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:59:52', '2017-05-04 13:27:06'),
(7, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0413\\u043e\\u0434":"2016","\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/7\\/img\\/7-59025be27e583.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:00:18', '2017-05-04 09:33:44'),
(8, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/8\\/img\\/8-59025bfb0d613.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:00:43', '2017-04-27 21:00:43'),
(9, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/9\\/img\\/9-59025c10d34fe.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:01:04', '2017-04-27 21:01:04'),
(10, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/10\\/img\\/10-59025c310809f.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:01:37', '2017-04-27 21:01:37'),
(11, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/11\\/img\\/11-59025c4dd2b9f.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:02:05', '2017-04-27 21:02:05'),
(12, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Интерьеры в стиле Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/12\\/img\\/12-59025c62f3d08.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:02:26', '2017-04-27 21:02:27'),
(13, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/13\\/img\\/13-59025c7768086.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:02:47', '2017-04-27 21:02:47'),
(14, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/14\\/img\\/14-59025c9342cd0.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:03:15', '2017-04-27 21:03:15'),
(15, 4, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0413\\u043e\\u0434":"","\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/15\\/img\\/15-59025cf3cba12.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-04-27 21:04:51', '2017-05-04 12:49:12'),
(16, 5, 0, '', 'Facebook@|;Facebook@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-facebook\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/@|;https:\\/\\/www.facebook.com\\/@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:18:59', '2017-05-03 13:15:40'),
(17, 5, 0, '', 'Вконтакте@|;VK@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-vk\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":"https:\\/\\/vk.com\\/@|;https:\\/\\/vk.com\\/@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:20:36', '2017-05-03 13:23:31'),
(18, 5, 0, '', 'Инстаграм@|;Instagram@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-instagram\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/@|;https:\\/\\/www.instagram.com\\/@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:21:39', '2017-05-03 13:24:09'),
(19, 6, 0, '', 'Дизайн интерьера@|;Interior Design@|;', '@|;@|;', '@|;@|;', '{"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f":"2-3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430\\r\\n@|;2-3 months, depending on the size of the object\\r\\n\\r\\n@|;","\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<p>\\u041f\\u043e \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440\\u0430 \\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c \\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u043e \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u0433\\u043e \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430.<br \\/>\\r\\n\\u0412 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0435 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 &mdash; \\u043f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u0442 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440 \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u0442\\u0430\\u043a, \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e\\u0433\\u043e \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0432\\u044b<\\/p>\\r\\n@|;At your request, we will design the interior and shape the space of the future object.\\r\\nAs a result of this work, you will receive a design project - a complete guide that will allow professional artists to realize the interior exactly the way you want it\\r\\n\\r\\n@|;","\\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<ul>\\r\\n\\t<li>\\t\\r\\n\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t\\r\\n\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n@|;<ul>\\r\\n\\t<li>\\t\\r\\nRegular departure of the designer to the object\\r\\n\\t<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bRegular departure of the designer to the object<\\/li>\\r\\n\\t<li>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bRegular departure of the designer to the object\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b<\\/li>\\r\\n\\t<br \\/>\\r\\n\\t<li>&nbsp;<\\/li>\\r\\n<\\/ul>\\r\\n@|;"}', 'upload/articles/19/main/19-1493908718.jpg', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-04 14:38:38', '2017-05-04 15:09:22'),
(20, 6, 0, '', 'Дизайн интерьера@|;Interior Design@|;', '@|;@|;', '@|;@|;', '{"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f":"2-3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430\\r\\n@|;2-3 months, depending on the size of the object\\r\\n\\r\\n@|;","\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<p>\\u041f\\u043e \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440\\u0430 \\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c \\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u043e \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u0433\\u043e \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430.<br \\/>\\r\\n\\u0412 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0435 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 &mdash; \\u043f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u0442 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440 \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u0442\\u0430\\u043a, \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e\\u0433\\u043e \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0432\\u044b<\\/p>\\r\\n@|;At your request, we will design the interior and shape the space of the future object.\\r\\nAs a result of this work, you will receive a design project - a complete guide that will allow professional artists to realize the interior exactly the way you want it\\r\\n\\r\\n@|;","\\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<ul>\\r\\n\\t<li>\\t\\r\\n\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t\\r\\n\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n@|;<ul>\\r\\n\\t<li>\\t\\r\\nRegular departure of the designer to the object\\r\\n\\t<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bRegular departure of the designer to the object<\\/li>\\r\\n\\t<li>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bRegular departure of the designer to the object\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b<\\/li>\\r\\n\\t<br \\/>\\r\\n\\t<li>&nbsp;<\\/li>\\r\\n<\\/ul>\\r\\n@|;"}', 'upload/articles/20/main/20-1493909653.jpg', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-04 14:54:13', '2017-05-04 14:56:00'),
(21, 6, 0, '', 'Инженерный комплекс@|;Interior Design@|;', '@|;@|;', '@|;@|;', '{"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f":"2-3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430\\r\\n@|;2-3 months, depending on the size of the object\\r\\n\\r\\n@|;","\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<p>\\u041f\\u043e \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440\\u0430 \\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c \\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u043e \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u0433\\u043e \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430.<br \\/>\\r\\n\\u0412 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0435 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 &mdash; \\u043f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u0442 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440 \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u0442\\u0430\\u043a, \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e\\u0433\\u043e \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0432\\u044b<\\/p>\\r\\n@|;At your request, we will design the interior and shape the space of the future object.\\r\\nAs a result of this work, you will receive a design project - a complete guide that will allow professional artists to realize the interior exactly the way you want it\\r\\n\\r\\n@|;","\\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<ul>\\r\\n\\t<li>\\t\\r\\n\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t\\r\\n\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n\\t<li>\\r\\n\\t<pre>\\r\\n\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/pre>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n@|;<ul>\\r\\n\\t<li>\\t\\r\\nRegular departure of the designer to the object\\r\\n\\t<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>Regular departure of the designer to the object<\\/li>\\r\\n\\t<li>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bRegular departure of the designer to the object<\\/li>\\r\\n\\t<li>\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200bRegular departure of the designer to the object\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b\\u200b<\\/li>\\r\\n\\t<br \\/>\\r\\n\\t<li>&nbsp;<\\/li>\\r\\n<\\/ul>\\r\\n@|;"}', 'upload/articles/21/main/21-1493909811.jpg', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-04 14:56:51', '2017-05-04 14:56:51');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `article_parent` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'main', 'Главная@|;Main@|;', '', '@|;@|;', '@|;@|;', '', '{"base":["title","short_description"],"attributes":{}}', '1970-01-01 01:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-04-27 20:45:45', '2017-04-27 20:45:45'),
(2, 0, 0, 'myself', 'О нас@|;title@|;', '', '@|;<p>short_description</p>@|;', '@|;<p>description</p>@|;', '[]', '{"base":["title","short_description","description","active","meta_title","meta_description","meta_keywords"],"attributes":{"Фото":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 0, '2017-04-27 20:48:33', '2017-05-03 10:44:30'),
(3, 0, 0, 'slider', 'Слайдер@|;title@|;', '', '@|;<p>short_description</p>@|;', '@|;<p>description</p>@|;', '[]', '{"base":["title","active","meta_title","meta_description","meta_keywords"],"attributes":{"Слайд":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 0, '2017-04-27 20:52:18', '2017-04-27 20:54:26'),
(4, 0, 0, 'portfolio', 'Портфолио@|;Portfolio@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","description","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка":{"type":"files","lang_active":false,"active":false},"Год":{"type":"input","lang_active":false,"active":false},"Название проекта":{"type":"input","lang_active":true,"active":false},"Месторасположение":{"type":"input","lang_active":true,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-04-27 20:58:19', '2017-05-04 13:24:40'),
(5, 0, 0, 'social', 'Соц сети@|;title@|;', '', '@|;<p>short_description</p>@|;', '@|;<p>description</p>@|;', '[]', '{"base":["title","active"],"attributes":{"Ссылка":{"type":"input","lang_active":true,"active":true},"Иконка":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 0, '2017-04-27 21:14:56', '2017-04-27 21:19:14'),
(6, 0, 0, 'services', 'Услуги@|;Services@|;', '', '@|;@|;', '@|;@|;', '', '{"base":["title","img","active","meta_title","meta_description","meta_keywords"],"attributes":{"Время исполнения":{"type":"textarea","lang_active":true,"active":false},"Описание услуги":{"type":"textarea","lang_active":true,"active":false},"Содержание услуги":{"type":"textarea","lang_active":true,"active":false}}}', '1970-01-01 01:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-04 14:20:59', '2017-05-04 14:20:59');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'ru', '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(2, 'en', '2017-01-14 20:44:58', '2017-01-14 20:44:58');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_14_124503_create_articles_table', 1),
('2016_09_14_124813_create_categories_table', 1),
('2016_09_14_124942_create_langs_table', 1),
('2016_10_06_124518_create_texts_table', 1),
('2016_11_04_094627_create_comments_table', 1),
('2016_12_26_140118_change_text_table_soft', 1),
('2017_01_02_155628_create_orders_table', 1),
('2017_02_06_120655_create_settings_table', 2),
('2017_02_13_144141_add_parent_id_categories', 3),
('2017_02_13_174128_add_article_id', 4),
('2017_02_13_174631_add_article_id', 5),
('2017_02_14_110847_add_article_parrent_category', 6),
('2017_02_14_111446_add_article_parrent_category', 7),
('2017_02_24_163342_add_field_img', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('webdesignstudio@gmail.com', 'fbde7c2090b1432792a7b0caee4dcfa185c155d6cc24beff39508ff5271224ba', '2017-02-06 14:40:36');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'config.email', 'Пошта для отримання повідомлень', 'webtestingstudio@gmail.com', '0000-00-00 00:00:00', '2017-04-03 20:48:45', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'telephone 1', 'input', 'Телефон 1', '+380508094570', 0, 0, '2017-04-27 21:07:53', '2017-04-27 21:07:53', NULL),
(2, 0, 'telephone 2', 'input', 'Телефон 2', '+380966610363', 0, 0, '2017-04-27 21:08:41', '2017-04-27 21:08:41', NULL),
(3, 0, 'address', 'input', 'Адрес', 'Киев, Ул. Болсуновская, 2@|;Kyiv, st. Bolsunovskaya, 2@|;', 0, 1, '2017-04-27 21:10:42', '2017-04-27 21:10:42', NULL),
(4, 0, 'email', 'input', 'Email', 'mail@lutskaya.com', 0, 0, '2017-04-27 21:11:40', '2017-04-27 21:11:40', NULL),
(5, 0, 'name_studio', 'input', 'Название студии', 'Студия дизайна интерьера@|;Interior design studio@|;', 0, 1, '2017-05-04 15:28:04', '2017-05-04 15:28:04', NULL),
(6, 0, 'owner', 'input', 'Владелец', 'Яны Луцкой@|;Yana Lutskoy@|;', 0, 1, '2017-05-04 15:29:47', '2017-05-04 15:29:47', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'root', 'webtestingstudio@gmail.com', '$2y$10$6NO1CpFCQr/JpWLQzETEgeoERlyd4xT3BIDSM6SKULihbZFI61L/u', 'lJNrmXlKYfYx9TSVgaWQxZAPfYyeRp5uWBADgQwGmS941YRr150OFmeeWXIE', '2017-04-03 21:35:00', '2017-04-27 20:23:29'),
(3, 'admin', 'info@lutskadesign.com.ua', '$2y$10$xvLdkFTvX8T0h08SS46VLuvtMZhTPov47o7/w2VJXFJlFw8FgOBye', 'iz64DyX0waI767n6RBXwsRjhJJfPJQM3chRJ32DsGKsFxRtb9JW5LJFpZrAT', '2017-04-27 20:18:57', '2017-04-27 20:21:11');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;