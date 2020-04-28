-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 27 Kwi 2020, 17:12
-- Wersja serwera: 10.1.44-MariaDB-0+deb9u1
-- Wersja PHP: 7.2.30-1+0~20200419.40+debian9~1.gbpb1b799

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `c39paper_soocer`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `session`
--

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `player1_color` int(1) NOT NULL,
  `user2` int(11) NOT NULL,
  `player2_color` int(1) NOT NULL,
  `game_data` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `whose_move` tinyint(1) NOT NULL,
  `who_win` int(1) NOT NULL,
  `game_password` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `ping_at_start` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `login` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`) VALUES
(29, 'bp181', '$2y$10$.evJVo24C0UWkQDGXJKdOOwckiBDTP0LN5Cgi6mLoBVhkUYgOjwvi'),
(30, 'dawid', '$2y$10$WMdroVWPA8OzJp0Uu8Q3hObZ9wHt8VYBA7xFNzZasaYfbxd4J2Tta'),
(31, 'zyd', '$2y$10$.aDPWrvHStBl3W1KPDzcP.YU.ovoVyXcvVH4afUj7hT7a7YZdg9D.'),
(32, 'Pedofil', '$2y$10$cj1G0Wou..hMhJTGyJYYxeV1kMUBNLMeYVSI2dD7BacEHsHO2cO72'),
(33, 'baquardo', '$2y$10$2Dv6dhvuzOftJVC/rZUA7uYEAJZiQ5qBXg4a/b23ghvNM8Q4ar8WO'),
(34, 'Olka', '$2y$10$g/.VrDpennu82K0Oz9C5POFZ8gnXvim71BUu2aaNM.tXjYRizU77O'),
(35, 'aaa', '$2y$10$RsDr3SqlJdshMO5c/Lt.ZOOkW8zkUOtwcKQfHWdNSdMSe4FF94JrO'),
(36, 'Sciana', '$2y$10$6DksM0J1B.tEHOtTeeNLH..hhUFh8IxC94C7DDyNIb6jyEuvHGp5u'),
(37, 'zaq12wsx', '$2y$10$L41xciBzT3RPpTFji1PA6eOshIAsWqwS5yN.4J7vhfCclbOdO094.'),
(38, 'Mmm', '$2y$10$iRDfwRs5bv6lso6HFFPCqeQwzCaWNepubhXjz19nzAjEAyRLEhVI2'),
(39, 'qqqqq', '$2y$10$beZAO7D5e2lJptEsgP4U8Ot9sRMlvXnQ1JXqshO1O5YCB27kXKs1.'),
(40, 'Andrzej', '$2y$10$qFS0eZpK4TwqJd4Su8Fv4eg.xGFmNorOq6rwdCG/bB.n6kphQEB2W'),
(41, 'mamak', '$2y$10$uoK.srYJPRdbfth4R.o1JuFcwSGnsycFMYwXroC/h5Ci5AhwTQa32'),
(42, 'BarPaw', '$2y$10$vQvaxI/GpqwfhslwWLHGT.tajVmtbVbBj8qcs90OPyRxsSTlgY/jS'),
(43, 'Pedofill', '$2y$10$372rmvfznEqMyPDO/CF/Eu/QOXfyCqwitPWyUCpcV36vDneZPwx4S'),
(44, 'andrei', '$2y$10$dX9og16dmlMWN/luwN8HJO/tZ2UkNs0qPXGJ9PHg/HDofsdUFU7fy'),
(45, 'george', '$2y$10$Llo3HY.rl.JXCrDqWpyU/.Iodpw22CmHK5tp7xRblRJ4rXIDz1ib2'),
(46, 'bartek', '$2y$10$WcE9MYMoyuULkj0R.cYduuEZPQlafKEBbYXyjy5p5xePT93uSbHEi');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `session_fk0` (`user1`),
  ADD KEY `session_fk1` (`user2`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `session`
--
ALTER TABLE `session`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
