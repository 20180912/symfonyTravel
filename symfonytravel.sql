-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 01. pro 2020, 14:15
-- Verze serveru: 10.4.14-MariaDB
-- Verze PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `symfonytravel`
--
CREATE DATABASE IF NOT EXISTS `symfonytravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `symfonytravel`;

-- --------------------------------------------------------

--
-- Struktura tabulky `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `destination` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` date NOT NULL,
  `arrival` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `offer`
--

INSERT INTO `offer` (`id`, `destination`, `departure`, `arrival`, `price`) VALUES
(1, 'Miami', '2021-01-12', '2021-01-24', 1000),
(2, 'Kingston', '2021-03-03', '2021-03-24', 1200),
(3, 'London', '2020-12-28', '2021-01-07', 500),
(4, 'Paris', '2021-01-09', '2021-01-24', 800);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
