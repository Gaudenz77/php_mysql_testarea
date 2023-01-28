-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 26, 2023 at 07:43 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.19

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
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` enum('science-fiction','fantasy','poetry','comedy','comix','novel') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISBN` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `currency` enum('CHF','USD') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_of_print` tinyint(1) NOT NULL,
  `modification_date` date DEFAULT NULL,
  `modification_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `genre`, `author`, `description`, `publisher`, `ISBN`, `price`, `currency`, `out_of_print`, `modification_date`, `modification_time`) VALUES
(1, '\"2000 Miles under the Sea\"', 'novel', 'Jules Verne', 'Captain Nemo travels as alone warrior against war in a Submarine under the Sea. A group of passengers that went overboard a boat in a storm are been taken in by Cpt. Nemo.', 'Penguin Books', '978-3-219-11884-1', '10.00', 'CHF', 0, '2023-01-24', '08:58:50'),
(2, '\"Lord Of The Ring\"  - The Fellowship Of The Ring', 'fantasy', 'J. R. R. Tolkien', 'The beginning of a fantastic journey .', 'Kindle Books', '978-0-261-10325-2', '20.00', 'USD', 1, '2023-01-07', '19:59:41'),
(3, '\"Lord Of The Rings\"  - The Two Towers', 'fantasy', 'J. R. R. Tolkien', 'The second part of the saga, where stuff starts to happen.', 'Penguin Books', '978-0-261-25325-2', '25.00', 'USD', 0, '2023-01-05', '09:23:18'),
(4, '\"Lord Of The Rings\" - The Return Of The King', 'fantasy', 'J. R. R. Tolkien', 'No Comment', 'Books ltd.', '978-0-331-10455-2', '13.00', 'USD', 0, '2013-01-05', '00:00:00'),
(5, '\"The Grinch\"', 'poetry', 'Dr. Suess', 'Funny Child stuff', 'Dr. Suess Roylty Books', '978-0-261-10455-4', '23.00', 'USD', 0, '1924-01-15', '10:08:04'),
(7, '\"No Sleep Til Brooklyn\" - Beastie Boys Saga', 'comedy', 'BB Boys, Adam Jauch', 'B-Boys Do their thing....', 'NY Brooklyn Books ltd.', '978-0-261-10565-2', '25.99', 'USD', 0, '2023-01-06', '09:13:13'),
(8, 'Bible 2 - the Sequel', '', 'God', 'MAh Holy Book', 'But Mah Holy Buk Ltd', '666-0-261-10325-3', '66.66', 'CHF', 0, '2000-01-03', '15:02:33'),
(9, 'The Holy Buk', 'comix', 'God', 'Cough Cough', 'Jeebus', '333-0-261-10455-2', '20.00', 'USD', 0, '2077-01-04', '34:03:09'),
(10, 'Star Wars - Old Republic: Glossary', '', 'John Doe', 'Glossary Star Wars Lore etc', 'SCi Fi-Bks_Goo', '978-0-261-166525-3', '23.99', 'USD', 0, '1977-01-02', '15:15:15'),
(11, '50 Shades Of Grey', 'novel', 'Jean Goddall', 'book about SEX', 'Climax Books LTd.', '978-0-261-69695-2', '69.69', 'USD', 0, '2023-01-03', '00:00:00'),
(12, 'Ja', 'novel', 'Thomas Bernhard', 'none', 'Suhrkamp', '123-321564-12', '20.22', 'USD', 1, '1981-05-12', '00:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `testuser01`
--

CREATE TABLE `testuser01` (
  `id` int NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `dateofbirth` date NOT NULL,
  `countryoforigin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testuser01`
--

INSERT INTO `testuser01` (`id`, `firstname`, `lastname`, `age`, `dateofbirth`, `countryoforigin`, `profession`) VALUES
(1, 'Gaudenz', 'Raiber', 44, '1977-11-01', 'Switzerland', 'WebDev'),
(2, 'Peter', 'Storm', 22, '1999-02-01', 'Germany', 'Medical Assistant'),
(3, 'Johnny', 'Silver', 22, '2001-01-03', 'UK', 'Tinkerer'),
(4, 'James', 'Charles', 23, '2000-12-12', 'USA', 'Beauty Influencer'),
(5, 'Getsit', 'Whitsit', 33, '1990-01-01', 'USA', 'Flat Earther/Idiot'),
(6, 'Lara', 'Croft', 40, '1983-05-13', 'UK', 'Explorer/Archeologist'),
(7, 'Anikan', 'Skywalker', 60, '1963-12-05', 'Tatoine?', 'Darth Vader');

-- --------------------------------------------------------

--
-- Table structure for table `testuser02`
--

CREATE TABLE `testuser02` (
  `id` int NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `dateofbirth` date NOT NULL,
  `countryoforigin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testuser02`
--

INSERT INTO `testuser02` (`id`, `firstname`, `lastname`, `age`, `dateofbirth`, `countryoforigin`, `profession`) VALUES
(1, 'Gaudenz', 'Raiber', 44, '1977-11-01', 'Switzerland', 'WebDev'),
(2, 'Johny', 'Storm', 22, '1999-02-01', 'Germany', 'Medical Assistant'),
(3, 'Johnny', 'Peters', 22, '2001-01-03', 'UK', 'Tinkerer'),
(4, 'James', 'Charles', 23, '2000-12-12', 'USA', 'Beauty Influencer'),
(5, 'Getsit', 'Whitsit', 33, '1990-01-01', 'USA', 'Flat Earther/Idiot'),
(6, 'Lara', 'Croft', 40, '1983-05-13', 'UK', 'Explorer/Archeologist'),
(7, 'Luke', 'Skywalker', 60, '1963-12-05', 'Tatoine?', 'Darth Vader-Son'),
(8, 'Fatima', 'Morgana', 2, '2021-01-05', 'Switzerland', 'Toddler');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `testuser01`
--
ALTER TABLE `testuser01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testuser02`
--
ALTER TABLE `testuser02`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testuser01`
--
ALTER TABLE `testuser01`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testuser02`
--
ALTER TABLE `testuser02`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
