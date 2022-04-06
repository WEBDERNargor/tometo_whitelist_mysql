<h3>Facebook : https://www.facebook.com/webder2020</h3>
<h3>Video Tutorial : </h3>


[<p align="center"><img src="https://user-images.githubusercontent.com/96941642/161931565-491dcfb2-179a-457a-a14d-f04a22b990d3.jpg" width="50%"></p>](https://youtu.be/5NAcj0M0NtU "Now in Android: 55")

<br>
mysql<br>
code :

<pre>
-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2022 at 10:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esmode`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowlist`
--

CREATE TABLE `allowlist` (
  `id` float NOT NULL,
  `identifier` text COLLATE utf8mb4_bin NOT NULL,
  `allow_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `allowlist`
--

INSERT INTO `allowlist` (`id`, `identifier`, `allow_at`) VALUES
(1, 'steam:555', '2022-04-06 03:15:06'),
(2, 'steam:666', '2022-04-06 03:20:21'),
(4, 'steam:110000113c5b36d', '2022-04-06 03:41:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowlist`
--
ALTER TABLE `allowlist`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `allowlist` ADD FULLTEXT KEY `identifier` (`identifier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowlist`
--
ALTER TABLE `allowlist`
  MODIFY `id` float NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

</pre>
