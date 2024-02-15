-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 15 2024 г., 11:16
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Vegetables_and_fruits`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Vegetables_and_fruits`
--

CREATE TABLE `Vegetables_and_fruits` (
  `ID` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Calorie` int DEFAULT '0',
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Vegetables_and_fruits`
--

INSERT INTO `Vegetables_and_fruits` (`ID`, `Name`, `Type`, `Color`, `Calorie`, `Description`) VALUES
(1, 'Огурец', 'Овощ', 'Зеленый', 15, 'Вкусный когда соленый'),
(2, 'Арбуз', 'Фрукт', 'Зеленый', 30, 'Вкусный летом'),
(3, 'Помидор', 'Овощ', 'Красный', 25, 'Вкусный в салатах'),
(4, 'Груша', 'Фрукт', 'Желтый', 57, 'Очень вкусная'),
(5, 'Банан', 'Фрукт', 'Желтый', 89, 'Бывают еще зеленые'),
(6, 'Яблоко', 'Фрукт', 'Зеленый', 52, 'Всегда вкусные');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Vegetables_and_fruits`
--
ALTER TABLE `Vegetables_and_fruits`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Vegetables_and_fruits`
--
ALTER TABLE `Vegetables_and_fruits`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
