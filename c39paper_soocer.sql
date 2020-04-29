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
(30, 'dawid', '$2y$10$WMdroVWPA8OzJp0Uu8Q3hObZ9wHt8VYBA7xFNzZasaYfbxd4J2Tta');

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
