-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 09 mars 2023 kl 13:29
-- Serverversion: 10.4.27-MariaDB
-- PHP-version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `webserverprogrammering`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `uploadtime` datetime NOT NULL,
  `snuskig` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `uploads`
--

INSERT INTO `uploads` (`id`, `user`, `filename`, `uploadtime`, `snuskig`) VALUES
(0, 'manfol', 'semesteriörebro.jpg', '2023-03-09 12:57:36', 0),
(1, 'holros', 'profilbild.png', '2023-03-09 12:57:37', 0),
(2, 'holros', 'dickpic.jpg', '2023-03-09 12:57:37', 1),
(3, 'goskor', 'profilbild.jpg', '2023-03-09 13:01:22', 1),
(4, 'manfol', 'profilbild.jpg', '2023-03-09 13:01:22', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `userId`, `passwd`) VALUES
(0, 'Holger', 'Rosencrantz', 'holros', 'pass123'),
(1, 'Magnus', 'Folkesson', 'manfol', 'lösen666'),
(2, 'Gösta', 'Körlof', 'goskor', 'abc123'),
(3, 'Wille', 'Hagberg', 'wilhag', 'lösen777'),
(4, 'Wille', 'Hagberg', 'hagwil', 'lösen888');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
