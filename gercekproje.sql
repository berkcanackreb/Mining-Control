-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Ara 2017, 20:36:32
-- Sunucu sürümü: 10.1.29-MariaDB
-- PHP Sürümü: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gercekproje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isi`
--

CREATE TABLE `isi` (
  `id` int(11) NOT NULL,
  `isi_sensor` varchar(50) NOT NULL,
  `tarih` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `isi`
--

INSERT INTO `isi` (`id`, `isi_sensor`, `tarih`) VALUES
(484, '21.00', '20.12.2017 15:15:46'),
(485, '21.00', '20.12.2017 15:15:46'),
(486, '21.00', '20.12.2017 15:15:47'),
(487, '21.00', '20.12.2017 15:15:48'),
(488, '21.00', '20.12.2017 15:15:48'),
(489, '21.00', '20.12.2017 15:15:49'),
(490, '21.00', '20.12.2017 15:15:50'),
(491, '21.00', '20.12.2017 15:15:50'),
(492, '21.00', '20.12.2017 15:15:51'),
(493, '21.00', '20.12.2017 15:15:51'),
(494, '21.00', '20.12.2017 15:15:52'),
(495, '21.00', '20.12.2017 15:15:53'),
(496, '21.00', '20.12.2017 15:15:53'),
(497, '21.00', '20.12.2017 15:15:54'),
(498, '21.00', '20.12.2017 15:15:55'),
(499, '21.00', '20.12.2017 15:15:55'),
(500, '21.00', '20.12.2017 15:15:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `metan_gazi`
--

CREATE TABLE `metan_gazi` (
  `id` int(11) NOT NULL,
  `gaz_sensor` varchar(50) NOT NULL,
  `tarih` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `metan_gazi`
--

INSERT INTO `metan_gazi` (`id`, `gaz_sensor`, `tarih`) VALUES
(484, '143\r', '20.12.2017 15:15:46'),
(485, '142\r', '20.12.2017 15:15:46'),
(486, '143\r', '20.12.2017 15:15:47'),
(487, '144\r', '20.12.2017 15:15:48'),
(488, '143\r', '20.12.2017 15:15:48'),
(489, '143\r', '20.12.2017 15:15:49'),
(490, '142\r', '20.12.2017 15:15:50'),
(491, '142\r', '20.12.2017 15:15:50'),
(492, '143\r', '20.12.2017 15:15:51'),
(493, '143\r', '20.12.2017 15:15:51'),
(494, '142\r', '20.12.2017 15:15:52'),
(495, '142\r', '20.12.2017 15:15:53'),
(496, '142\r', '20.12.2017 15:15:53'),
(497, '142\r', '20.12.2017 15:15:54'),
(498, '141\r', '20.12.2017 15:15:55'),
(499, '141\r', '20.12.2017 15:15:55'),
(500, '142\r', '20.12.2017 15:15:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `id` int(11) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`id`, `admin`, `sifre`) VALUES
(1, '', ''),
(2, 'adem', 'adem'),
(3, 'berkcan', 'berkcan');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `isi`
--
ALTER TABLE `isi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `metan_gazi`
--
ALTER TABLE `metan_gazi`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `isi`
--
ALTER TABLE `isi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- Tablo için AUTO_INCREMENT değeri `metan_gazi`
--
ALTER TABLE `metan_gazi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici`
--
ALTER TABLE `yonetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
