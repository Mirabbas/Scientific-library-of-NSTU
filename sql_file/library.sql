-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 03 2017 г., 00:43
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Mirabbas Bagirov', 'bagirov_mirabbas@mail.ru', 'root', '1234', '2017-10-02 17:53:39');

-- --------------------------------------------------------

--
-- Структура таблицы `book country`
--

CREATE TABLE `book country` (
  `id` int(11) NOT NULL,
  `Type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(255) DEFAULT NULL,
  `Surname` varchar(255) DEFAULT NULL,
  `Firstname` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `DateOfDeath` date DEFAULT NULL,
  `CityOfBirth` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `Surname`, `Firstname`, `DateOfBirth`, `DateOfDeath`, `CityOfBirth`, `creationDate`, `UpdationDate`) VALUES
(1, NULL, 'Andrey Vasilkov', NULL, NULL, NULL, NULL, '2017-09-30 12:49:09', '2017-09-30 15:16:59'),
(2, NULL, 'Vasya Pupkin', NULL, NULL, NULL, NULL, '2017-09-30 14:30:23', '2017-09-30 15:15:09'),
(3, NULL, 'Shildt', NULL, NULL, NULL, NULL, '2017-09-30 14:35:08', NULL),
(4, NULL, 'Bagira', NULL, NULL, NULL, NULL, '2017-09-30 14:35:21', NULL),
(5, NULL, 'Ph. Alex', NULL, NULL, NULL, NULL, '2017-09-30 14:35:36', NULL),
(9, NULL, 'Anton', NULL, NULL, NULL, NULL, '2017-09-30 15:22:03', NULL),
(11, 'saca', 'pupkins', 'sacac', '2017-10-02', '2017-10-29', 'scaca', '2017-10-02 20:21:34', '2017-10-02 22:34:03'),
(13, 'sacsacas', 'acascs', 'saccac', '2017-10-05', '2017-10-14', 'csacsa', '2017-10-02 22:32:17', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 11, 222333, 20, '2017-09-30 20:04:55', '2017-10-02 22:34:25'),
(3, 'physics', 6, 4, 1111, 15, '2017-09-30 20:17:31', '2017-10-01 06:13:17'),
(4, 'Physics', 5, 1, 3213, 242, '2017-10-02 20:31:54', NULL),
(5, 'Mathematics', 5, 2, 123987, 123, '2017-10-02 20:36:40', NULL),
(6, 'Mathematika', 5, 3, 21334, 2414124, '2017-10-02 20:42:43', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2017-09-30 18:35:25', '2017-10-01 16:00:42'),
(5, 'Technology', 1, '2017-09-30 18:35:39', '2017-10-01 17:13:03'),
(6, 'Science', 1, '2017-09-30 18:35:55', '2017-10-01 17:28:00'),
(7, 'Management', 0, '2017-09-30 18:36:16', '2017-10-01 17:36:09');

-- --------------------------------------------------------

--
-- Структура таблицы `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-10-01 06:09:47', '2017-10-02 15:30:15', 1, 0),
(2, 1, 'SID002', '2017-10-01 06:12:27', '2017-10-01 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-10-01 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-10-01 06:23:23', '2017-10-01 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-10-01 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-10-01 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Andrew', 'andrew@mail.ru', '9601732211', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-09-30 15:37:05', '2017-10-02 16:25:30'),
(4, 'SID005', 'sdfsd', 'vasko@mail.ru', '9876543211', '92228410fc8b872914e023160cf4ae8f', 0, '2017-09-30 15:41:27', '2017-10-01 17:43:03'),
(8, 'SID009', 'test', 'test@gmail.com', '1234567890', '1234', 1, '2017-09-30 15:58:28', '2017-10-01 13:42:44'),
(9, 'SID010', 'Anton', 'anton@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-10-01 13:40:30', NULL),
(10, 'SID011', 'Olga Pavlovna', 'olga@gmail.com', '9871234567', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-10-01 18:00:59', NULL),
(12, 'SID003', 'mirko', 'mirko@gmail.com', '9871231122', 'd2ccbde7c49e5d2963577d4add96337f', 1, '2017-10-02 16:50:28', NULL),
(13, 'SID004', 'masha', 'masha@gmail.com', '1239875643', 'Masha123', 1, '2017-10-02 16:58:43', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book country`
--
ALTER TABLE `book country`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Индексы таблицы `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
