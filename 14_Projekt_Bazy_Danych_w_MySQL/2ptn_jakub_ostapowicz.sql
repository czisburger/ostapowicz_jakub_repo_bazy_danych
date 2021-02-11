-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Lut 2021, 15:10
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `2ptn_jakub_ostapowicz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `ID` int(11) NOT NULL,
  `Nazwisko` char(30) DEFAULT NULL,
  `Imie` char(20) DEFAULT NULL,
  `Klasa` varchar(5) DEFAULT NULL,
  `Miejsce_Zamieszkania` varchar(30) DEFAULT NULL,
  `Data_Urodzenia` date DEFAULT NULL,
  `Telefon` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`ID`, `Nazwisko`, `Imie`, `Klasa`, `Miejsce_Zamieszkania`, `Data_Urodzenia`, `Telefon`) VALUES
(1, 'Andrzejczak', 'Adam', '3C', 'Bydgoszcz', '1995-02-12', 634213643),
(2, 'Borowicz', 'Artur', '3B', 'Koronowo', '1995-11-21', 829192322),
(3, 'Cybul', 'Marek', '3C', 'Bydgoszcz', '1995-08-30', 509834231),
(4, 'Dębowska', 'Anna', '3A', 'Białe Błota', '1995-06-12', 526643983),
(5, 'Jędrych', 'Wlademar', '3B', 'Bydgoszcz', '1995-02-21', 645543234),
(6, 'Kowalik', 'Wioletta', '3C', 'Szubin', '1995-10-23', 643212322),
(7, 'Lorentz', 'Jakub', '3A', 'Bydgoszcz', '1995-01-04', 523437456),
(8, 'Muszyńska', 'Monika', '3B', 'Bydgoszcz', '1995-06-17', 524312345),
(9, 'Nowak', 'Jarosław', '3C', 'Nakło nad Notecią', '1995-03-12', 675423325),
(10, 'Oparczyk', 'Rafał', '3A', 'Bydgoszcz', '1995-12-22', 543453321),
(11, 'Oller', 'Aleksandra', '3B', 'Inowrocław', '1995-11-04', 524365421),
(12, 'Priewe', 'Robert', '3A', 'Bydgoszcz', '1995-02-15', 524323423),
(13, 'Spitza', 'Adam', '3C', 'Białe Błota', '1995-08-23', 506231334),
(14, 'Sikorska', 'Magdalena', '3B', 'Otorowo', '1995-04-05', 607543543),
(15, 'Tomczak', 'Róża', '3A', 'Bydgoszcz', '1995-04-18', 524323244);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
