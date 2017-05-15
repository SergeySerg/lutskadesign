-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Хост: citymoto.mysql.ukraine.com.ua
-- Время создания: Май 15 2017 г., 14:08
-- Версия сервера: 5.6.27-75.0-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `citymoto_test2`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '', 'Яна Луцкая@|;Yana Lutska@|;', '<p>дизайнер интерьера, руководитель студии интерьеров Lutska Design и обладатель титулов <a href="https://www.mrsinternational.com/mrs-international-contestant-details.php?id=1112" target="_blank">&laquo;Mrs. Ukraine International 2017&raquo;</a>, <a href="http://mrsworldopen.com/mrs-ukraine/delegates2016/yana-luckaya.html" target="_blank">&laquo;Mrs. Universe Ukraine 2016&raquo;</a> и <a href="http://www.mrsuniverseltd.com/images/big/history/2016/group/v12.jpg" target="_blank">&laquo;Mrs. Universe Ambassador 2016&raquo;</a>.</p>@|;<p>The interior designer, the head of the interiors studio Lutska Design and the owner of the titles <a href="https://www.mrsinternational.com/mrs-international-contestant-details.php?id=1112" target="_blank">&laquo;Mrs. Ukraine International 2017&raquo;</a>, <a href="http://mrsworldopen.com/mrs-ukraine/delegates2016/yana-luckaya.html" target="_blank">&laquo;Mrs. Universe Ukraine 2016&raquo;</a>&nbsp;and&nbsp;<a href="http://www.mrsuniverseltd.com/images/big/history/2016/group/v12.jpg" target="_blank">&laquo;Mrs. Universe Ambassador 2016&raquo;</a>.</p>@|;', '<p>Я &ndash; эстет. Люблю красоту и гармонию деталей, окружающие нас в повседневной жизни.</p>\r\n\r\n<p>Главной задачей для меня является создание уникальных проектов, в которых каждый человек чувствовал бы себя уютно и комфортно. В каждое дизайнерское решение я вкладываю частичку души и веду объект от начала и до конца.</p>\r\n\r\n<p>Дизайн интерьера для меня &ndash; это искусство создания гармонии и уюта в наших домах. Создавая эстетическое пространство в помещениях я помогаю людям быть более счастливыми.</p>@|;<p>I&#39;m an esthete. I love the beauty and harmony of details that surround us in everyday life.</p>\r\n\r\n<p>The main task for me is to create unique projects in which every person would feel comfortable and comfortable. In every design decision I put a little bit of soul and lead the object from the beginning to the end.</p>\r\n\r\n<p>Interior design for me is the art of creating harmony and coziness in our homes. Creating an aesthetic space in the rooms, I help people to be more happy.</p>@|;', '{"\\u0424\\u043e\\u0442\\u043e":"upload\\/articles\\/1\\/img\\/1-5918973ce4eb5.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', 'Яна Луцкая |  Дизайн интерьеров@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:51:12', '2017-05-14 17:43:24'),
(2, 3, 0, '', 'Неординарные и яркие идеи@|;Unconventional and bright ideas@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/2\\/img\\/2-59104c7e8b514.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:53:23', '2017-05-11 21:41:29'),
(4, 3, 0, '', 'Интерьеры в стиле Luxury living@|;Interiors in the style of Luxury living@|;', '@|;@|;', '@|;@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/4\\/img\\/4-59105072dd817.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:55:47', '2017-05-11 21:37:48'),
(6, 4, 0, '', 'Зов Скандинавии@|;Call of Scandinavia@|;', '@|;@|;', '<div class="item-img he2"><a class="swipebox" href="/upload/editor/images/kitchen.jpg" title="Кухня"><img alt="Кухня" src="/upload/editor/images/kitchen.jpg" style="height:267px; width:200px" /></a></div>\r\n\r\n<div class="item w2">\r\n<p>О бъект, с которым работала дизайнер, &mdash; личный офис студии флористики &laquo;Blossom Design&raquo;. В связи с его расширением, архитектору была поставлена задача грамотно и функционально зонировать пространство, а также удобно расположить мастерскую, склад и магазин. Чтобы воплотить пожелания заказчиков в жизнь, в проекте запланирован демонтаж стен на складе, хотят также добавить дверной проем в магазине и перепланировать санузлы &mdash; избавиться от ненужных узких зон, тем самым увеличив площадь помещений. &nbsp;</p>\r\n</div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/fin.jpg" title="Финансовый отдел"><img alt="Финансовый отдел" src="/upload/editor/images/fin.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/zona1.jpg" title="Зал ожидания для клиентов"><img alt="Зал ожидания для клиентов" src="/upload/editor/images/zona1.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item w2">\r\n<p>Что же касается стилистического наполнения интерьера, то дизайнер остановились на скандинавской манере оформления. И это понятно, ведь помимо общей актуальности этого стиля сегодня, он позволит архитектору воплотить пожелания заказчиков &mdash; сделать помещения более свободными, просторными. Стены,мебель и пол будут очень светлыми или чисто-белыми. Предполагается простое оформление окон: минимум занавесок, только струящиеся кисейные ткани, максимально пропускающие свет. В качестве акцентов используются сочные оттенки синего цвета.</p>\r\n</div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/zona2.jpg" title="Зал ожидания для клиентов"><img alt="Зал ожидания для клиентов" src="/upload/editor/images/zona2.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img w3 he2"><a class="swipebox" href="/upload/editor/images/talk2.jpg" title="Переговорная"><img alt="Переговорная" src="/upload/editor/images/talk2.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item w2">\r\n<p>Именно эти моменты являются основополагающими в скандинавском стиле.Удивительно, насколько легко и просто возможно добиться новых эффектов в дизайне и совместить эксклюзивность с экологичностью. Непривычно в городском офисе, при входе, видеть и деревянную стену. Сразу же создается ощущение уютного загородного дома. Продолжает природную тематику оригинальный стол для оформления букетов &mdash; он изготовлен из акрилового камня и дерева (хворост) по индивидуальному заказу. И все это органично вписывается в общий стиль интерьера.</p>\r\n</div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/flower.jpg" title="Зона продажи живых цветов"><img alt="Зона продажи живых цветов" src="/upload/editor/images/flower.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/flower2.jpg" title="Зона продажи живых цветов"><img alt="Зона продажи живых цветов" src="/upload/editor/images/flower2.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/master.jpg" title="Мастерская"><img alt="Мастерская" src="/upload/editor/images/master.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/talk.jpg" title="Переговорная"><img alt="Переговорная" src="/upload/editor/images/talk.jpg" style="height:150px; width:200px" /></a></div>@|;<div class="item-img he2"><a class="swipebox" href="/upload/editor/images/kitchen.jpg" title="Kitchen"><img alt="Kitchen" src="/upload/editor/images/kitchen.jpg" style="height:267px; width:200px" /></a></div>\r\n\r\n<div class="item w2">\r\n<p>The object with which the designer worked was the personal office of the floristic studio &quot;Blossom Design&quot;. In connection with its expansion, the architect was tasked to intelligently and functionally zonate space, and also conveniently place a workshop, a warehouse and a store. To realize the wishes of customers, the project plans to dismantle the walls in the warehouse, they also want to add a doorway in the store and reschedule the bathrooms - get rid of unnecessary narrow zones, thereby increasing the area of the premises.&nbsp;</p>\r\n</div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/fin.jpg" title="Financial department"><img alt="Financial department" src="/upload/editor/images/fin.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/zona1.jpg" title="Customer waiting room"><img alt="Customer waiting room" src="/upload/editor/images/zona1.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item w2">\r\n<p>As for the stylistic filling of the interior, the designer settled on the Scandinavian style of design. And this is understandable, in addition to the general relevance of this style today, it will allow the architect to realize the wishes of customers - to make the premises more free and spacious. The walls, furniture and floor will be very light or pure white. It assumes a simple design of windows: a minimum of curtains, only flowing muslin fabrics that maximally skip the light. As accents, juicy shades of blue are used.</p>\r\n</div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/zona2.jpg" title="Customer waiting room"><img alt="Customer waiting room" src="/upload/editor/images/zona2.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img w3 he2"><a class="swipebox" href="/upload/editor/images/talk2.jpg" title="Negotiated"><img alt="Negotiated" src="/upload/editor/images/talk2.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item w2">\r\n<p>It is these moments that are fundamental in the Scandinavian style. A very interesting design find is a planned green wall of stabilized Finnish moss (yagel) Artis Green in the entrance group (tambour). By stroking her, you imagine that you are in a forest where grass and moss grow on tree trunks. It&#39;s amazing how easy it is to achieve new design effects and to combine exclusivity with environmental friendliness. It&#39;s uncommon in the city office, at the entrance, to see and a wooden wall. Immediately creates a feeling of a cozy country house. Continues the natural theme of the original table for the design of bouquets - it is made of acrylic stone and wood (brushwood) by individual order. And all of this organically fits into the overall style of the interior.</p>\r\n</div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/flower.jpg" title="Zone for sale of fresh flowers"><img alt="Zone for sale of fresh flowers" src="/upload/editor/images/flower.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/flower2.jpg" title="Zone for sale of fresh flowers"><img alt="Zone for sale of fresh flowers" src="/upload/editor/images/flower2.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/master.jpg" title="Workshop"><img alt="Workshop" src="/upload/editor/images/master.jpg" style="height:150px; width:200px" /></a></div>\r\n\r\n<div class="item-img"><a class="swipebox" href="/upload/editor/images/talk.jpg" title="Negotiated"><img alt="Negotiated" src="/upload/editor/images/talk.jpg" style="height:150px; width:200px" /></a></div>@|;', '{"\\u0413\\u043e\\u0434":"2017","\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/6\\/img\\/6-59137bb98c0c0.jpg","\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430":"  \\u0417\\u043e\\u0432 \\u0421\\u043a\\u0430\\u043d\\u0434\\u0438\\u043d\\u0430\\u0432\\u0438\\u0438                        @|; Call of Scandinavia @|;","\\u041c\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0435":"  \\u041a\\u0438\\u0435\\u0432                         @|; Kyiv                         @|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', 'Зов Скандинавии | Портфолио Дизайн интерьеров@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 20:59:52', '2017-05-15 07:28:03'),
(16, 5, 0, '', 'Facebook@|;Facebook@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-facebook\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/@|;https:\\/\\/www.facebook.com\\/@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:18:59', '2017-05-03 13:15:40'),
(18, 5, 0, '', 'Инстаграм@|;Instagram@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-instagram\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/@|;https:\\/\\/www.instagram.com\\/@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-27 21:21:39', '2017-05-03 13:24:09'),
(19, 6, 0, '', 'Дизайн интерьера@|;Interior Design@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/19\\/img\\/19-5914d3647aa79.jpg","\\u0412\\u0440\\u0435\\u043c\\u044f \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f":"<p>2-3 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n@|;<p>2-3 months, depending on the size of the object<\\/p>\\r\\n@|;","\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<p>\\u041f\\u043e \\u0432\\u0430\\u0448\\u0435\\u043c\\u0443 \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441\\u0443 \\u043c\\u044b \\u0440\\u0430\\u0437\\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440\\u0430 \\u0438 \\u0441\\u0444\\u043e\\u0440\\u043c\\u0438\\u0440\\u0443\\u0435\\u043c \\u043f\\u0440\\u043e\\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u043e \\u0431\\u0443\\u0434\\u0443\\u0449\\u0435\\u0433\\u043e \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430.<br \\/>\\r\\n\\u0412 \\u0440\\u0435\\u0437\\u0443\\u043b\\u044c\\u0442\\u0430\\u0442\\u0435 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u0430\\u0431\\u043e\\u0442\\u044b \\u0432\\u044b \\u043f\\u043e\\u043b\\u0443\\u0447\\u0438\\u0442\\u0435 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 &mdash; \\u043f\\u043e\\u043b\\u043d\\u043e\\u0435 \\u0440\\u0443\\u043a\\u043e\\u0432\\u043e\\u0434\\u0441\\u0442\\u0432\\u043e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0435 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u0438\\u0442 \\u043f\\u0440\\u043e\\u0444\\u0435\\u0441\\u0441\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u043c \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044f\\u043c \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u0438\\u043d\\u0442\\u0435\\u0440\\u044c\\u0435\\u0440 \\u0438\\u043c\\u0435\\u043d\\u043d\\u043e \\u0442\\u0430\\u043a, \\u043a\\u0430\\u043a \\u044d\\u0442\\u043e\\u0433\\u043e \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0432\\u044b<\\/p>\\r\\n@|;<p>At your request, we will design the interior and shape the space of the future object. As a result of this work, you will receive a design project - a complete guide that will allow professional artists to realize the interior exactly the way you want it<\\/p>\\r\\n@|;","\\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<ul>\\r\\n\\t<li>\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442<\\/li>\\r\\n\\t<li>\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044f\\u043c \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0430 \\u0434\\u043e\\u0440\\u043e\\u0433\\u043e\\u0439 \\u0441\\u0430\\u043d\\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438, \\u0441\\u0432\\u0435\\u0442\\u0430, \\u0440\\u0430\\u0437\\u0434\\u0432\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0438 \\u0442.\\u0434.<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441\\u043c\\u0435\\u0436\\u043d\\u044b\\u0445 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439 (\\u043e\\u0442\\u043e\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435, \\u0432\\u0435\\u043d\\u0442\\u0438\\u043b\\u044f\\u0446\\u0438\\u044f, \\u0443\\u043c\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043c) \\u043f\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443<\\/li>\\r\\n\\t<li>\\u0412\\u043d\\u0435\\u0441\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043a\\u043e\\u0440\\u0440\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u043a \\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u043f\\u043e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u044c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430<\\/li>\\r\\n\\t<li>\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c \\u0432 \\u0432\\u044b\\u0431\\u043e\\u0440\\u0435 \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438, \\u0434\\u0435\\u043a\\u043e\\u0440\\u0430, \\u0442\\u0435\\u043a\\u0441\\u0442\\u0438\\u043b\\u044f, \\u043e\\u0442\\u0434\\u0435\\u043b\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432<\\/li>\\r\\n\\t<li>\\u041a\\u0443\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438 \\u0438 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0434\\u043b\\u044f \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u0421\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0433\\u043e\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443 \\u0438 \\u0432\\u0438\\u0437\\u0443\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438<\\/li>\\r\\n<\\/ul>\\r\\n@|;<ul>\\r\\n\\t<li>Regular departure to the object<\\/li>\\r\\n\\t<li>Personal Project Manager<\\/li>\\r\\n\\t<li>Planning of the main phases and deadlines<\\/li>\\r\\n\\t<li>Documentation advisory by the developers<\\/li>\\r\\n\\t<li>Developer&rsquo; s consultation on the specifics of expensive plumbing installation, lightning, sliding systems, etc.<\\/li>\\r\\n\\t<li>Advice from related organizations (heating, ventilation, smart home)<\\/li>\\r\\n\\t<li>Possibility of small adjustments to the project if it&rsquo;s necessary<\\/li>\\r\\n\\t<li>Building quality control<\\/li>\\r\\n\\t<li>Assistance in the selection of furniture, decoration, textiles, decorative materials<\\/li>\\r\\n\\t<li>Supervision of the manufacture of exclusive furniture and objects for the project<\\/li>\\r\\n\\t<li>Adequacy of a facility project to the project design and visualization<\\/li>\\r\\n\\t<br \\/>\\r\\n\\t&nbsp;\\r\\n<\\/ul>\\r\\n@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-04 14:38:38', '2017-05-11 21:50:52'),
(20, 6, 0, '', 'Авторский надзор@|;Author’s supervision@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/20\\/img\\/20-5914d3e4aff4b.jpg","\\u0412\\u0440\\u0435\\u043c\\u044f \\u0438\\u0441\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u044f":"<p>6-9 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0435\\u0432, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0440\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430<\\/p>\\r\\n@|;<p>An average time of completion would be six&nbsp;to nine&nbsp;months, dependant on the size and complexity of the project.<\\/p>\\r\\n@|;","\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<p>\\u0412\\u044b \\u0437\\u0430\\u043d\\u044f\\u0442\\u044b \\u0438 \\u043d\\u0435 \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u044c \\u043f\\u043e\\u043b\\u0433\\u043e\\u0434\\u0430 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043d\\u0430 \\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0443? \\u0422\\u043e\\u0433\\u0434\\u0430 \\u043c\\u044b \\u0433\\u043e\\u0442\\u043e\\u0432\\u044b \\u043f\\u0440\\u0435\\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c \\u0432\\u0430\\u043c \\u0443\\u0441\\u043b\\u0443\\u0433\\u0443 \\u0430\\u0432\\u0442\\u043e\\u0440\\u0441\\u043a\\u043e\\u0433\\u043e \\u043d\\u0430\\u0434\\u0437\\u043e\\u0440\\u0430 \\u0438 \\u0441\\u043e\\u043f\\u0440\\u043e\\u0432\\u043e\\u0434\\u0438\\u0442\\u044c \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u0434\\u043e \\u043f\\u043e\\u043b\\u043d\\u043e\\u0439 \\u0433\\u043e\\u0442\\u043e\\u0432\\u043d\\u043e\\u0441\\u0442\\u0438.<\\/p>\\r\\n\\r\\n<p>\\u041c\\u044b \\u0440\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u043e \\u0432\\u044b\\u0435\\u0437\\u0436\\u0430\\u0435\\u043c \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442 \\u0438 \\u043a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u0438\\u0440\\u0443\\u0435\\u043c \\u0440\\u0435\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u044e \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430, \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u0435\\u043c \\u0432\\u0430\\u043c \\u0441 \\u0432\\u044b\\u0431\\u043e\\u0440\\u043e\\u043c \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438, \\u043e\\u0442\\u0434\\u0435\\u043b\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432, \\u0442\\u0435\\u043a\\u0441\\u0442\\u0438\\u043b\\u044f, \\u0434\\u0435\\u043a\\u043e\\u0440\\u0430.<\\/p>\\r\\n\\r\\n<p>\\u0412\\u0430\\u043c \\u043d\\u0435 \\u043d\\u0443\\u0436\\u043d\\u043e \\u0442\\u0440\\u0430\\u0442\\u0438\\u0442\\u044c \\u0432\\u0440\\u0435\\u043c\\u044f \\u0438 \\u0432\\u043d\\u0438\\u043a\\u0430\\u0442\\u044c \\u0432 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u043d\\u0441\\u0442\\u0432\\u043e \\u0430\\u0441\\u043f\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0441\\u0442\\u0440\\u043e\\u0439\\u043a\\u0438, \\u0442\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0434\\u0435\\u0442\\u0430\\u043b\\u0438 \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0430 \\u0438\\u043d\\u0436\\u0435\\u043d\\u0435\\u0440\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c, \\u0441\\u0430\\u043d\\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438 \\u0438 \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438, \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043e\\u0432\\u044b\\u0432\\u0430\\u0442\\u044c \\u0440\\u0430\\u0431\\u043e\\u0442\\u0443 \\u043f\\u043e\\u0434\\u0440\\u044f\\u0434\\u0447\\u0438\\u043a\\u043e\\u0432 &mdash; \\u043c\\u044b \\u0441\\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u044d\\u0442\\u043e \\u0437\\u0430 \\u0432\\u0430\\u0441.<\\/p>\\r\\n@|;<p>The monitoring and supervision of construction sites is time consuming and complicated at times. Our company provides a construction design supervision service that is present on site until the completion date.&nbsp;The new space is visited on a regular basis and the implementation of the design project is supervised.&nbsp;<\\/p>\\r\\n\\r\\n<p>The headaches of organizing the work of contractors and going through technical details such as engineering systems, plumbing, furnishing supervision and furniture installation are taken away from you by our professional team.<\\/p>\\r\\n@|;","\\u0421\\u043e\\u0434\\u0435\\u0440\\u0436\\u0430\\u043d\\u0438\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438":"<ul>\\r\\n\\t<li>\\u0420\\u0435\\u0433\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439 \\u0432\\u044b\\u0435\\u0437\\u0434 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u0430 \\u043d\\u0430 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442<\\/li>\\r\\n\\t<li>\\u041f\\u0435\\u0440\\u0441\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u041f\\u043b\\u0430\\u043d\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0445 \\u044d\\u0442\\u0430\\u043f\\u043e\\u0432 \\u0438 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u0438 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u0434\\u043e\\u043a\\u0443\\u043c\\u0435\\u043d\\u0442\\u0430\\u0446\\u0438\\u0438 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043f\\u043e \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044f\\u043c \\u043c\\u043e\\u043d\\u0442\\u0430\\u0436\\u0430 \\u0434\\u043e\\u0440\\u043e\\u0433\\u043e\\u0439 \\u0441\\u0430\\u043d\\u0442\\u0435\\u0445\\u043d\\u0438\\u043a\\u0438, \\u0441\\u0432\\u0435\\u0442\\u0430, \\u0440\\u0430\\u0437\\u0434\\u0432\\u0438\\u0436\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u0438 \\u0442.\\u0434.<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0441\\u0443\\u043b\\u044c\\u0442\\u0430\\u0446\\u0438\\u044f \\u0441\\u043c\\u0435\\u0436\\u043d\\u044b\\u0445 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0439 (\\u043e\\u0442\\u043e\\u043f\\u043b\\u0435\\u043d\\u0438\\u0435, \\u0432\\u0435\\u043d\\u0442\\u0438\\u043b\\u044f\\u0446\\u0438\\u044f, \\u0443\\u043c\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043c) \\u043f\\u043e \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443<\\/li>\\r\\n\\t<li>\\u0412\\u043d\\u0435\\u0441\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0437\\u043d\\u0430\\u0447\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0445 \\u043a\\u043e\\u0440\\u0440\\u0435\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u043e\\u043a \\u0432 \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u043f\\u043e \\u043d\\u0435\\u043e\\u0431\\u0445\\u043e\\u0434\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438<\\/li>\\r\\n\\t<li>\\u041a\\u043e\\u043d\\u0442\\u0440\\u043e\\u043b\\u044c \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430 \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430<\\/li>\\r\\n\\t<li>\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c \\u0432 \\u0432\\u044b\\u0431\\u043e\\u0440\\u0435 \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438, \\u0434\\u0435\\u043a\\u043e\\u0440\\u0430, \\u0442\\u0435\\u043a\\u0441\\u0442\\u0438\\u043b\\u044f, \\u043e\\u0442\\u0434\\u0435\\u043b\\u043e\\u0447\\u043d\\u044b\\u0445 \\u043c\\u0430\\u0442\\u0435\\u0440\\u0438\\u0430\\u043b\\u043e\\u0432<\\/li>\\r\\n\\t<li>\\u041a\\u0443\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f \\u044d\\u043a\\u0441\\u043a\\u043b\\u044e\\u0437\\u0438\\u0432\\u043d\\u043e\\u0439 \\u043c\\u0435\\u0431\\u0435\\u043b\\u0438 \\u0438 \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u043e\\u0432 \\u0434\\u043b\\u044f \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0430<\\/li>\\r\\n\\t<li>\\u0421\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435 \\u0433\\u043e\\u0442\\u043e\\u0432\\u043e\\u0433\\u043e \\u043e\\u0431\\u044a\\u0435\\u043a\\u0442\\u0430 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d \\u043f\\u0440\\u043e\\u0435\\u043a\\u0442\\u0443 \\u0438 \\u0432\\u0438\\u0437\\u0443\\u0430\\u043b\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438<\\/li>\\r\\n<\\/ul>\\r\\n@|;<ul>\\r\\n\\t<li>Regular departure to the object<\\/li>\\r\\n\\t<li>Personal Project Manager<\\/li>\\r\\n\\t<li>Planning of the main phases and deadlines<\\/li>\\r\\n\\t<li>Documentation advisory by the developers<\\/li>\\r\\n\\t<li>Developer&rsquo; s consultation on the specifics of expensive plumbing installation, lightning, sliding systems, etc.<\\/li>\\r\\n\\t<li>Advice from related organizations (heating, ventilation, smart home)<\\/li>\\r\\n\\t<li>Possibility of small adjustments to the project if it&rsquo;s necessary<\\/li>\\r\\n\\t<li>Building quality control<\\/li>\\r\\n\\t<li>Assistance in the selection of furniture, decoration, textiles, decorative materials<\\/li>\\r\\n\\t<li>Supervision of the manufacture of exclusive furniture and objects for the project<\\/li>\\r\\n\\t<li>Adequacy of a facility project to the project design and visualization<\\/li>\\r\\n<\\/ul>\\r\\n@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-04 14:54:13', '2017-05-11 21:51:52'),
(22, 7, 0, '', 'Domus 05-2017@|;Domus 05-2015@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/22\\/img\\/22-590ccc82adb59.jpg"}', 'upload/articles/22/main/22-1493971477.jpg', '[{"full":"upload\\/articles\\/22\\/full\\/Domus_05_2015-120.jpg","min":"upload\\/articles\\/22\\/min\\/Domus_05_2015-120.jpg"},{"full":"upload\\/articles\\/22\\/full\\/Domus_05_2015-122.jpg","min":"upload\\/articles\\/22\\/min\\/Domus_05_2015-122.jpg"},{"full":"upload\\/articles\\/22\\/full\\/Domus_05_2015-124.jpg","min":"upload\\/articles\\/22\\/min\\/Domus_05_2015-124.jpg"}]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-05 08:04:37', '2017-05-05 19:03:30'),
(23, 8, 0, '', 'Встреча с известным дизайнером Matali Crasset@|;Meeting with the famous designer Matali Crasset@|;', '<p style="text-align:justify">&quot;Дизайн не столько профессия, сколько отношение к жизни&quot;<br />\r\nMatali Crasset, французский дизайнер<br />\r\nВстреча с известным дизайнером Matali Crasset вдохновила! Мастер-класс от &quot;живого классика&quot; французского промышленного дизайна прошел на одном дыхании!</p>@|;<p style="text-align:justify">&quot;Design is not so much a profession as an attitude toward life&quot;<br />\r\nMatali Crasset, French designer<br />\r\nMeeting with the famous designer Matali Crasset inspired! A master class from the &quot;living classic&quot; of the French industrial design was a breeze!</p>@|;', '<p>&quot;Дизайн не столько профессия, сколько отношение к жизни&quot;<br />\r\nMatali Crasset, французский дизайнер<br />\r\nВстреча с известным дизайнером Matali Crasset вдохновила! Мастер-класс от &quot;живого классика&quot; французского промышленного дизайна прошла&nbsp;на одном дыхании!</p>\r\n\r\n<p>Matali Crasset (Матали Крассе) &ndash; французский дизайнер абсолютно новой формации, с помощью своих проектов Матали меняет предметную среду повседневного обитания человека, ее также называют &laquo;живым классиком&raquo; французского промышленного дизайна. Ее неиссякаемое желание исследовать новые возможности в дизайне и создания предметов, которые обладают модульностью и функциональной гибкостью &ndash; вдохновляет и завораживает!&nbsp;</p>\r\n\r\n<p>Матали Крассе - офицер ордена Искусств и литературы, она также награждена национальным французским орденом &laquo;За заслуги&raquo;, её многочисленные работы включены в постоянную экспозицию ведущих мировых музеев &ndash; МОМА (New York) и Центра Помпиду (Paris), а в 2006 году жюри &laquo;Мебельного салона Парижа&raquo; присудило Матали Крассе титул &laquo;Творец&nbsp;года&raquo;, назвав её одной из сильнейших личностей мирового дизайна.</p>\r\n\r\n<p>Долгое время Матали работала с Филиппом Старком, а затем отправилась в одиночное плавание. Творения Матали Крассе &ndash; это не игра с цветом и формой, а своего рода переосмысление предмета. На своих лекциях, проведенных в Киеве в рамках &laquo;Французской весны&raquo;, молодых украинских дизайнеров французский дизайнер призывала к такому же формату работы. В своем выступлении Матали поведала об интересе к советской архитектуре и о правильном интерьере для детей.&nbsp;</p>\r\n\r\n<p>&laquo;Вы, украинцы, - открыты и любознательны! Мне это очень нравится! Я наблюдаю, что французы сейчас весьма замкнуты и не интересуются тем, что происходит вокруг, у людей отсутствует желания делиться друг с другом. Полагаю, это может быть связано с нестабильной ситуацией в мире и мне бы хотелось, что скоро в нас проснется сознательность!&raquo;&nbsp;- Матали Крассе</p>@|;<p>&quot;Design is not so much a profession as an attitude toward life&quot;<br />\r\nMatali Crasset, French designer<br />\r\nMeeting with the famous designer Matali Crasset inspired! The master class from the &quot;living classic&quot; of the French industrial design was at one go!</p>\r\n\r\n<p>Matali Crasset (Matali Crasset) is a French designer of a completely new formation, with the help of her projects Matali changes the subject&#39;s everyday environment, it is also called the &quot;living classic&quot; of French industrial design. Her inexhaustible desire to explore new possibilities in design and creation of objects that possess modularity and functional flexibility - inspires and fascinates!</p>\r\n\r\n<p>Matali Crasset is an officer of the Order of Arts and Literature, she is also awarded the National French Order of Merit, her numerous works are included in the permanent exhibition of the world&#39;s leading museums - New York and Pompidou Center, and in 2006 the jury of the &quot;Furniture&quot; Salon of Paris &quot;awarded Matali Crasset the title of&quot; The Creator of the Year &quot;, calling her one of the strongest personalities of world design.</p>\r\n\r\n<p>For a long time Matali worked with Philippe Starck, and then went on a solitary voyage. The creations of Matali Crasset are not a game with color and form, but a kind of rethinking of the subject. At their lectures held in Kiev within the framework of the French Spring, young Ukrainian designers, the French designer called for the same format of work. In her speech Matali told about the interest in Soviet architecture and about the correct interior for children.</p>\r\n\r\n<p>&quot;You Ukrainians are open and inquisitive! I love it! I observe that the French are now very closed and are not interested in what is happening around, people do not have the desire to share with each other. I think this can be connected with the unstable situation in the world and I would like that soon consciousness will wake up in us! &quot;- Matali Crasset</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/23\\/img\\/23-590cd20e89c92.jpg"}', '', '[{"full":"upload\\/articles\\/23\\/full\\/18033952_1887777698137782_3651492809781950263_n.jpg","min":"upload\\/articles\\/23\\/min\\/18033952_1887777698137782_3651492809781950263_n.jpg"},{"full":"upload\\/articles\\/23\\/full\\/18157164_1887777728137779_3578418262584489159_n.jpg","min":"upload\\/articles\\/23\\/min\\/18157164_1887777728137779_3578418262584489159_n.jpg"},{"full":"upload\\/articles\\/23\\/full\\/18194214_1887777694804449_2165354089359235893_n.jpg","min":"upload\\/articles\\/23\\/min\\/18194214_1887777694804449_2165354089359235893_n.jpg"}]', '', 0, '2017-04-17 21:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-05 19:25:27', '2017-05-15 06:54:02'),
(24, 5, 0, '', 'Houzz@|;Houzz@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-houzz\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":"  https:\\/\\/www.houzz.ru\\/ @|;  https:\\/\\/www.houzz.ru\\/ @|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-09 16:09:15', '2017-05-09 16:10:56'),
(25, 5, 0, '', 'Behance@|;Behance@|;', '@|;@|;', '@|;@|;', '{"\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-behance\\"><\\/i>","\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430":" https:\\/\\/www.behance.net\\/@|; https:\\/\\/www.behance.net\\/@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-09 16:13:09', '2017-05-09 16:13:09');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'main', 'Главная@|;Main@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","short_description"],"attributes":{}}', '0000-00-00 00:00:00', 1, 'Дизайнер интерьеров Яна Луцкая@|;Interior Designer Yana Lutska@|;', '@|;@|;', '@|;@|;', 0, '2017-04-27 20:45:45', '2017-05-12 10:24:09'),
(2, 0, 0, 'myself', 'О нас@|;title@|;', '', '@|;<p>short_description</p>@|;', '@|;<p>description</p>@|;', '[]', '{"base":["title","short_description","description","active","meta_title","meta_description","meta_keywords"],"attributes":{"Фото":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, 'О нас | Дизайн интерьеров Яна Луцкая@|;About Us | Interior Designer Yana Lutskaya@|;', '@|;@|;', '@|;meta_keywords@|;', 0, '2017-04-27 20:48:33', '2017-05-12 10:31:20'),
(3, 0, 0, 'slider', 'Слайдер@|;title@|;', '', '@|;<p>short_description</p>@|;', '@|;<p>description</p>@|;', '[]', '{"base":["title","active","meta_title","meta_description","meta_keywords"],"attributes":{"Слайд":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 0, '2017-04-27 20:52:18', '2017-04-27 20:54:26'),
(4, 0, 0, 'portfolio', 'Портфолио@|;Portfolio@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","description","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка":{"type":"files","lang_active":false,"active":false},"Год":{"type":"input","lang_active":false,"active":false},"Название проекта":{"type":"input","lang_active":true,"active":false},"Месторасположение":{"type":"input","lang_active":true,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-04-27 20:58:19', '2017-05-04 13:24:40'),
(5, 0, 0, 'social', 'Соц сети@|;title@|;', '', '@|;<p>short_description</p>@|;', '@|;<p>description</p>@|;', '[]', '{"base":["title","active"],"attributes":{"Ссылка":{"type":"input","lang_active":true,"active":true},"Иконка":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;meta_title@|;', '@|;meta_description@|;', '@|;meta_keywords@|;', 0, '2017-04-27 21:14:56', '2017-04-27 21:19:14'),
(6, 0, 0, 'services', 'Услуги@|;Services@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","active","meta_title","meta_description","meta_keywords"],"attributes":{"Время исполнения":{"type":"textarea","lang_active":true,"active":false},"Описание услуги":{"type":"textarea","lang_active":true,"active":false},"Содержание услуги":{"type":"textarea","lang_active":true,"active":false},"Картинка":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-04 14:20:59', '2017-05-05 18:56:01'),
(7, 0, 0, 'publication', 'Публикации@|;Publication@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","gallery","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-05 07:53:44', '2017-05-05 19:03:06'),
(8, 0, 0, 'calendar', 'Календарь мероприятий@|;Сalendar of events@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","short_description","description","gallery","date","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-05 19:11:49', '2017-05-05 19:25:55');

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
(1, 0, 'telephone 1', 'input', 'Телефон 1', '+38 050 809 45 70', 0, 0, '2017-04-27 21:07:53', '2017-05-08 11:19:49', NULL),
(2, 0, 'telephone 2', 'input', 'Телефон 2', '+38 096 661 03 63', 0, 0, '2017-04-27 21:08:41', '2017-05-08 11:19:29', NULL),
(3, 0, 'address', 'input', 'Адрес', 'Контакты@|;Contacts@|;', 0, 1, '2017-04-27 21:10:42', '2017-05-08 12:55:50', NULL),
(4, 0, 'email', 'input', 'Email', 'lutskie.kiev@gmail.com', 0, 0, '2017-04-27 21:11:40', '2017-05-08 12:54:32', NULL),
(5, 0, 'name_studio', 'input', 'Название студии', 'Студия дизайна интерьера@|;Interior design studio@|;', 0, 1, '2017-05-04 15:28:04', '2017-05-04 15:28:04', NULL),
(6, 0, 'owner', 'input', 'Владелец', 'Яны Луцкой@|;Yana Lutska@|;', 0, 1, '2017-05-04 15:29:47', '2017-05-11 21:58:23', NULL);

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
