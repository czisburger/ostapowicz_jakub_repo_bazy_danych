-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Lut 2021, 13:44
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
-- Baza danych: `jakub_ostapowicz_2ptn`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `imie`
--

CREATE TABLE `imie` (
  `ID_Imie` int(11) NOT NULL,
  `Imie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `imie`
--

INSERT INTO `imie` (`ID_Imie`, `Imie`) VALUES
(1, 'Adam'),
(2, 'Artur'),
(3, 'Marek'),
(4, 'Anna'),
(5, 'Wlademar'),
(6, 'Wioletta'),
(7, 'Jakub'),
(8, 'Monika'),
(9, 'Jarosław'),
(10, 'Rafał'),
(11, 'Aleksandra'),
(12, 'Robert'),
(13, 'Magdalena'),
(14, 'Róża');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `ID_Klasa` int(11) NOT NULL,
  `Klasa` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`ID_Klasa`, `Klasa`) VALUES
(1, '3 A'),
(2, '3 B'),
(3, '3 C');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsce_zamieszkania`
--

CREATE TABLE `miejsce_zamieszkania` (
  `ID_Miejsce_Zamieszkania` int(11) NOT NULL,
  `Miejsce_Zamieszkania` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `miejsce_zamieszkania`
--

INSERT INTO `miejsce_zamieszkania` (`ID_Miejsce_Zamieszkania`, `Miejsce_Zamieszkania`) VALUES
(1, 'Bydgoszcz'),
(2, 'Koronowo'),
(3, 'Białe Błota'),
(4, 'Szubin'),
(5, 'Nakło nad Notecią'),
(6, 'Inowrocław'),
(7, 'Otorowo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nazwisko`
--

CREATE TABLE `nazwisko` (
  `ID_Nazwisko` int(11) NOT NULL,
  `Nazwisko` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `nazwisko`
--

INSERT INTO `nazwisko` (`ID_Nazwisko`, `Nazwisko`) VALUES
(14, 'Andrzejczak'),
(15, 'Borowicz'),
(16, 'Cybul'),
(17, 'Dębowska'),
(18, 'Jędrych'),
(19, 'Kowalik'),
(20, 'Lorentz'),
(21, 'Muszyńska'),
(22, 'Nowak'),
(23, 'Oparczyk'),
(24, 'Oller'),
(25, 'Priewe'),
(26, 'Spitza'),
(27, 'Sikorska'),
(28, 'Tomczak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `ID` int(11) NOT NULL,
  `ID_Nazwisko` int(11) DEFAULT NULL,
  `ID_Imie` int(11) DEFAULT NULL,
  `ID_Klasa` int(11) DEFAULT NULL,
  `ID_Miejsce_Zamieszkania` int(11) DEFAULT NULL,
  `Data_Urodzenia` date DEFAULT NULL,
  `Telefon` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `imie`
--
ALTER TABLE `imie`
  ADD PRIMARY KEY (`ID_Imie`);

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`ID_Klasa`);

--
-- Indeksy dla tabeli `miejsce_zamieszkania`
--
ALTER TABLE `miejsce_zamieszkania`
  ADD PRIMARY KEY (`ID_Miejsce_Zamieszkania`);

--
-- Indeksy dla tabeli `nazwisko`
--
ALTER TABLE `nazwisko`
  ADD PRIMARY KEY (`ID_Nazwisko`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `imie`
--
ALTER TABLE `imie`
  MODIFY `ID_Imie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `ID_Klasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `miejsce_zamieszkania`
--
ALTER TABLE `miejsce_zamieszkania`
  MODIFY `ID_Miejsce_Zamieszkania` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `nazwisko`
--
ALTER TABLE `nazwisko`
  MODIFY `ID_Nazwisko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
