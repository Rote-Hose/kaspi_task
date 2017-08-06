-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 06 2017 г., 20:35
-- Версия сервера: 10.1.25-MariaDB
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task_db`
--
CREATE DATABASE IF NOT EXISTS `task_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `task_db`;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `iin` varchar(12) NOT NULL,
  `cell_phone` varchar(20) NOT NULL,
  `birthdate` text NOT NULL,
  `gender` int(2) NOT NULL,
  `docnumber` varchar(100) NOT NULL,
  `docwhom` varchar(100) NOT NULL,
  `docdate` date NOT NULL,
  `docissuedate` date NOT NULL,
  `sallary` int(100) NOT NULL,
  `rent` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`ID`, `Firstname`, `Lastname`, `middlename`, `iin`, `cell_phone`, `birthdate`, `gender`, `docnumber`, `docwhom`, `docdate`, `docissuedate`, `sallary`, `rent`) VALUES
(1, 'ILYA', 'LIZIKOV', '', '920603300169', '', '', 0, '', '', '0000-00-00', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `credit_application`
--

CREATE TABLE `credit_application` (
  `ID` int(11) NOT NULL,
  `amount` int(100) NOT NULL,
  `period` int(10) NOT NULL,
  `percent` int(10) NOT NULL,
  `monthpay` int(100) NOT NULL,
  `currency_amount` int(100) NOT NULL,
  `full_summ` int(100) NOT NULL,
  `overpayment` int(100) NOT NULL,
  `opendate` date NOT NULL,
  `closedate` date NOT NULL,
  `status` int(1) NOT NULL,
  `CLIENT_ID` int(11) NOT NULL,
  `app_number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `credit_application`
--

INSERT INTO `credit_application` (`ID`, `amount`, `period`, `percent`, `monthpay`, `currency_amount`, `full_summ`, `overpayment`, `opendate`, `closedate`, `status`, `CLIENT_ID`, `app_number`) VALUES
(223, 3000, 12, 10, 10, 348, 3300, 300, '2017-08-01', '2017-08-10', 1, 1, 354654),
(224, 6000, 18, 20, 10, 348, 6300, 600, '2017-08-01', '2017-08-10', 1, 1, 5646254),
(225, 3000001, 10, 10, 1111, 22, 331554, 4545, '2017-08-01', '2017-08-01', 1, 1, 4676);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`ID`, `username`, `pass`, `firstname`, `Lastname`, `middlename`) VALUES
(5, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IIN_IDX` (`iin`);

--
-- Индексы таблицы `credit_application`
--
ALTER TABLE `credit_application`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `credit_application`
--
ALTER TABLE `credit_application`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
