-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 07:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` varchar(5) NOT NULL,
  `bookIMG` varchar(255) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `bookTypeID` varchar(255) NOT NULL,
  `bookDescript` varchar(500) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `bstatusID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `bookIMG`, `bookName`, `bookTypeID`, `bookDescript`, `author`, `publisher`, `bstatusID`) VALUES
('551', 'lf.webp', 'IF', '551', 'basketball player who become billionare', 'Pesu western', 'pesu western', 'b0000'),
('m0001', 'book1.jpg', 'Blue Box (Ao no Hako)', 'MG001', 'The witch is a traveler who embarks on a long journey, meeting people and kingdoms while exploring the world freely.', 'Jougi Shiraishi', 'Animag, Publisher', 'b0001'),
('m0003', 'book3.jpg', 'Dandadan ', 'MG001', 'Ayase Momo, a girl who believes in ghosts and likes muscular men, meets a nerdy boy who believes in UFOs and aliens. Their different beliefs lead them to investigate the supernatural. What will happen? Find out in Dandadan.', 'Yukinobu Tatsu', 'Siam Inter Comics, Publisher', 'b0001');

-- --------------------------------------------------------

--
-- Table structure for table `booktype`
--

CREATE TABLE `booktype` (
  `bookTypeID` varchar(255) NOT NULL,
  `bookTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktype`
--

INSERT INTO `booktype` (`bookTypeID`, `bookTypeName`) VALUES
('', ''),
('551', 'Sports'),
('FR001', 'Fairy Tail'),
('MG001', 'Manga'),
('SC001', 'Science'),
('SL001', 'Social Life');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowID` int(5) NOT NULL,
  `bookID` varchar(5) NOT NULL,
  `memberID` int(5) NOT NULL,
  `dateBorrow` date NOT NULL,
  `dateRet` date NOT NULL,
  `retDate` date NOT NULL,
  `statusID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowID`, `bookID`, `memberID`, `dateBorrow`, `dateRet`, `retDate`, `statusID`) VALUES
(21, 'm0001', 14, '2022-10-19', '2022-11-18', '2022-10-19', 'b0002'),
(22, 'm0001', 14, '2022-10-20', '2022-11-19', '2022-10-20', 'b0002'),
(29, 'm0003', 14, '2022-10-20', '2022-11-19', '0000-00-00', 'b0002'),
(30, 'm0003', 14, '2022-10-20', '2022-11-19', '2022-10-20', 'b0002'),
(31, 'm0001', 15, '2022-10-20', '2022-11-19', '2022-10-20', 'b0002'),
(32, 'm0003', 15, '2022-10-20', '2022-11-19', '2022-10-20', 'b0002'),
(33, 'm0001', 15, '2022-10-20', '2022-11-19', '2022-10-20', 'b0002'),
(34, 'm0001', 14, '2022-10-20', '2022-11-19', '2022-10-20', 'b0002'),
(35, 'm0003', 18, '2025-01-21', '2025-02-20', '0000-00-00', 'b0003'),
(36, 'm0001', 18, '2025-01-21', '2025-02-20', '0000-00-00', 'b0003');

-- --------------------------------------------------------

--
-- Table structure for table `borrowstatus`
--

CREATE TABLE `borrowstatus` (
  `bstatusID` varchar(5) NOT NULL,
  `bName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowstatus`
--

INSERT INTO `borrowstatus` (`bstatusID`, `bName`) VALUES
('b0000', 'Available'),
('b0001', 'Borrowed'),
('b0002', 'Returned'),
('b0003', 'Borrowing');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(5) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `BirthDate` date NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `statusmem` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `Firstname`, `Lastname`, `Gender`, `BirthDate`, `Tel`, `Username`, `Password`, `Email`, `statusmem`) VALUES
(10, 'admin', 'admin', '', '0000-00-00', '(+60)', 'admin', 'admin1234', 'admin@example.com', 'ADMIN'),
(14, 'pesu', '1', '', '1999-12-07', '0652316455', 'pesu1', 'pesu1123', 'pesu1@gmail.com', 'MEMBER'),
(15, 'mak ang', '', 'Male', '2022-10-20', '0946340735', 'mak', '1234', 'makhang@email.com', 'MEMBER'),
(16, 'ustaz abdul ', 'somad', 'Male', '2022-09-26', '0123456789', 'somad', '123456', 'somad@mail.com', 'MEMBER'),
(17, 'gucy', 'meow', 'Male', '2002-06-04', '0526548796', 'gucykuda', 'gucy123', 'gucy@email.com', 'ADMIN'),
(18, 'Heikal', 'Iskandar', 'Male ', '2025-01-02', '0184002365', 'pesuwestern', 'pesu123', 'heikal.iskandar88@gmail.com', 'MEMBER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`bookTypeID`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowID`,`bookID`,`memberID`);

--
-- Indexes for table `borrowstatus`
--
ALTER TABLE `borrowstatus`
  ADD PRIMARY KEY (`bstatusID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
