-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 01 2020 г., 17:05
-- Версия сервера: 5.6.43
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `products`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `categoryName`, `value`) VALUES
(1, 'Фотоаппараты', 'camera'),
(2, 'Объективы', 'lens'),
(3, 'Штативы', 'tripods'),
(4, 'Вспышки', 'flash');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `fultext` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `showproduct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `fultext`, `picture`, `category`, `showproduct`) VALUES
(21, 'Canon EF 100mm', 'Объектив Canon EF 100mm f/2.8L Macro IS USM для качественной макросъемки Разработанный, главным образом, для макросъемки объектив ЕФ 100мм f/2.8Л Макро ИС УСМ от Кэнон – короткий телефото фикс-объектив из серии L,', 'Разработанный, главным образом, для макросъемки объектив ЕФ 100мм f/2.8Л Макро ИС УСМ от Кэнон – короткий телефото фикс-объектив из серии L, который также хорошо подойдет для портретной съемки и для работе на средних дистанциях. Однако, как макро-объектив, он обеспечивает максимальное увеличение в масштабе 1:1 и минимальную дистанцию фокусировки в 30 см. Для улучшения качества съемки крупным планом в объективе используется система стабилизации изображения, которая обеспечивает до двух стопов стабилизации на полном увеличении 1:1 или до четырех стопов при меньшем увеличении. В объективе применяются специальные элементы и покрытия, увеличивающие качество изображения в различных условиях съемки. Как и другие объективы серии L, 100mm f/2.8 защищен от пыли и влаги, что позволяет использовать его в различных погодных условиях. Этот короткий телефото фикс разработан специально для полнокадровых камер с байонетом Canon EF, однако он подойдет и для APS-C моделей, на которых он обеспечивает эквивалентное фокусное расстояние 160мм.', 'upload/Canon100.jpg', 'lens', 1),
(22, 'Nikon D5600 Body', 'Nikon D5600 Body – надежный прибор начального уровня.', 'Зеркальный фотоаппарат Nikon D5600 Body – отличный выбор начинающих фотографов Зеркальный фотоаппарат Nikon D5600 Body – надежный прибор начального уровня. Он был выпущен несколько лет назад, но все равно пользуется востребованностью у фотографов. Это такой же компактный, легкий и высокопроизводительный девайс, который не слишком отличается от предшествующих', 'upload/Nicon.jpg', 'camera', 1),
(23, 'Canon EOS 77D', 'Зеркальный фотоаппарат Canon EOS 77D Body - отличная зеркальная фототехника с широкими возможностями', 'Зеркальный фотоаппарат Canon EOS 77D Body - отличная зеркальная фототехника с широкими возможностями Новая зеркальная камера от бренда Кенон позволяет каждому реализовать свой творческий потенциал в фотографировании. Техническое и программное оснащение дает возможность лично испробовать новые способы съемки, открыть для себя невиданные горизонты', 'upload/Canon77.jpg', 'camera', 0),
(24, 'Raylab Travel 63', 'Штатив Raylab Travel 63” с быстросъемной площадкой', 'Штатив Raylab Travel 63” с быстросъемной площадкой, крюком для груза противовеса и клипсовыми зажимами ног штатива.\r\nШтатив рассчитан на использование с максимальной нагрузкой до 4 кг.\r\n3D голова штатива оснащена возможностью независимой регулировки усилия во всех трех плоскостях, удобной ручкой для установки направления съемки, быстросъемной площадкой со страховкой от случайного падения камеры и пузырьковым уровнем.', 'upload/Raylab.png', 'tripods', 1),
(26, 'Canon Speedlite 430EX III-RT', 'вспышка Canon Speedlite 430EX III-RT', 'Speedlite 430EX III-RT – портативная вспышка от Canon с поддержкой беспроводного TTL, а также возможностью работы в роли ведущей и ведомой. Как и у прошлой модели серии, ведущее число 430EX III-RT составляет 43 метра на ISO 100, а угол освещения 24-105мм (с диффузором максимальный угол освещения составляет 14 мм).', 'upload/flash-Canon.jpg', 'tripods', 1),
(27, 'Canon Speedlite 430EX III-RT', 'Портативная вспышка Canon Speedlite 430EX III-RT', 'Портативная вспышка Canon Speedlite 430EX III-RT Speedlite 430EX III-RT – портативная вспышка от Canon с поддержкой беспроводного TTL, а также возможностью работы в роли ведущей и ведомой. Как и у прошлой модели серии, ведущее число 430EX III-RT составляет 43 метра на ISO 100, а угол освещения 24-105мм (с диффузором максимальный угол освещения составляет 14 мм).', 'upload/flash-Canon.jpg', 'flash', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
