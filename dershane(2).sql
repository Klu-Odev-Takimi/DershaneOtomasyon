-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 26 Ara 2021, 16:37:46
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dershane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders`
--

DROP TABLE IF EXISTS `ders`;
CREATE TABLE IF NOT EXISTS `ders` (
  `ders_id` int(11) NOT NULL AUTO_INCREMENT,
  `ders_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ders_kayittarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ders_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ders`
--

INSERT INTO `ders` (`ders_id`, `ders_ad`, `ders_kayittarih`) VALUES
(1, 'Bilişim', '2021-12-20 14:10:06'),
(2, 'İngilizce', '2021-12-25 00:11:11'),
(3, 'Türkçe', '2021-12-25 00:11:11'),
(4, 'Matematik', '2021-12-20 14:10:06'),
(5, 'Kimya', '2021-12-25 00:11:11'),
(6, 'Fizik', '2021-12-25 00:11:11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dershane_ayar`
--

DROP TABLE IF EXISTS `dershane_ayar`;
CREATE TABLE IF NOT EXISTS `dershane_ayar` (
  `dershane_ayar_id` int(11) NOT NULL AUTO_INCREMENT,
  `dershane_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dershane_telefon` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dershane_mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dershane_fax` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `dershane_hakkinda` text COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`dershane_ayar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders_gun`
--

DROP TABLE IF EXISTS `ders_gun`;
CREATE TABLE IF NOT EXISTS `ders_gun` (
  `ders_gun_id` int(11) NOT NULL AUTO_INCREMENT,
  `ders_gun_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ders_gun_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ders_gun`
--

INSERT INTO `ders_gun` (`ders_gun_id`, `ders_gun_ad`) VALUES
(1, 'Pazartesi'),
(2, 'Salı'),
(3, 'Çarşamba'),
(4, 'Perşembe'),
(5, 'Cuma'),
(6, 'Cumartesi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders_program`
--

DROP TABLE IF EXISTS `ders_program`;
CREATE TABLE IF NOT EXISTS `ders_program` (
  `ders_program_id` int(11) NOT NULL AUTO_INCREMENT,
  `ders_id` int(11) NOT NULL,
  `personel_id` int(11) NOT NULL,
  `ders_gun_id` int(11) NOT NULL,
  `ders_saat_id` int(11) NOT NULL,
  `sinif_id` int(11) NOT NULL,
  `ders_kayittarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ders_program_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ders_program`
--

INSERT INTO `ders_program` (`ders_program_id`, `ders_id`, `personel_id`, `ders_gun_id`, `ders_saat_id`, `sinif_id`, `ders_kayittarih`) VALUES
(1, 1, 1, 1, 1, 2, '2021-12-25 00:12:07'),
(2, 2, 2, 2, 2, 3, '2021-12-25 00:12:07'),
(3, 3, 3, 3, 3, 4, '2021-12-25 00:12:07'),
(4, 3, 3, 6, 7, 4, '2021-12-25 00:12:07'),
(5, 1, 2, 1, 1, 1, '2021-12-25 13:44:50'),
(6, 1, 2, 1, 2, 1, '2021-12-25 13:44:53'),
(7, 3, 1, 1, 3, 1, '2021-12-25 13:45:00'),
(8, 3, 1, 1, 4, 1, '2021-12-25 13:45:02'),
(9, 3, 3, 1, 6, 1, '2021-12-25 13:45:09'),
(10, 6, 2, 2, 1, 1, '2021-12-25 13:45:38'),
(11, 6, 2, 2, 2, 1, '2021-12-25 13:45:40'),
(13, 5, 2, 2, 4, 1, '2021-12-25 13:45:47'),
(16, 6, 1, 2, 7, 1, '2021-12-25 13:46:01'),
(17, 2, 3, 4, 1, 1, '2021-12-25 13:46:23'),
(20, 2, 3, 4, 6, 1, '2021-12-25 13:46:31'),
(22, 4, 2, 4, 4, 1, '2021-12-25 13:46:42'),
(23, 2, 1, 1, 1, 1, '2021-12-26 14:55:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ders_saat`
--

DROP TABLE IF EXISTS `ders_saat`;
CREATE TABLE IF NOT EXISTS `ders_saat` (
  `ders_saat_id` int(11) NOT NULL AUTO_INCREMENT,
  `ders_saat_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ders_saat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ders_saat`
--

INSERT INTO `ders_saat` (`ders_saat_id`, `ders_saat_ad`) VALUES
(1, '1.Ders'),
(2, '2.Ders'),
(3, '3.Ders'),
(4, '4.Ders'),
(5, '5.Ders'),
(6, '6.Ders'),
(7, '7.Ders');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ogrenci_id` int(11) NOT NULL AUTO_INCREMENT,
  `ogrenci_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_tc` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_tel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ogrenci_sinif` int(11) NOT NULL,
  `ogrenci_kayittarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ogrenci_durum` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ogrenci_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`ogrenci_id`, `ogrenci_ad`, `ogrenci_soyad`, `ogrenci_mail`, `ogrenci_sifre`, `ogrenci_tc`, `ogrenci_tel`, `ogrenci_sinif`, `ogrenci_kayittarih`, `ogrenci_durum`) VALUES
(1, 'Ahmet', 'Saatci', 'tankal55@gmail.com', '123', '2958125002', '05377777777', 1, '2021-12-20 14:08:23', 1),
(11, 'Aylin', 'Anlı', 'tankal55@gmail.com', '123', '2958125002', '05377777777', 1, '2021-12-20 14:08:23', 1),
(3, 'Mehmet', 'Yıldırım', '125125@gm.com', '521152512512', '212412512', '0512551215', 2, '2021-12-20 14:08:23', 1),
(10, 'Ceyhun', 'Altıntaş', 'dasda', 'ads', '125', '124', 2, '2021-12-23 22:35:30', 1),
(12, 'Ayşe', 'Yıldırım', '125125@gm.com', '521152512512', '212412512', '0512551215', 3, '2021-12-20 14:08:23', 1),
(13, 'Tolga', 'Karpuz', 'dasda', 'ads', '125', '124', 2, '2021-12-23 22:35:30', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE IF NOT EXISTS `personel` (
  `personel_id` int(11) NOT NULL AUTO_INCREMENT,
  `personel_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `personel_soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `personel_mail` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `personel_sifre` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `personel_tc` int(11) NOT NULL,
  `personel_tel` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `personel_turu` int(11) NOT NULL,
  `personel_durum` int(1) NOT NULL DEFAULT '1',
  `personel_kayittarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yetki` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`personel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`personel_id`, `personel_ad`, `personel_soyad`, `personel_mail`, `personel_sifre`, `personel_tc`, `personel_tel`, `personel_turu`, `personel_durum`, `personel_kayittarih`, `yetki`) VALUES
(1, 'Batuhan', 'Küçükarslan', 'kucukarslanbatuhan@gmail.com', '123', 1000000000, '5370000000', 1, 1, '2021-12-20 14:09:08', 1),
(2, 'Sefa', 'Tankal', 'tankal55@gmail.com', 'aa', 1000001242, '537000124', 2, 1, '2021-12-20 14:09:08', 1),
(3, 'Eray', 'Altun', 'vizyonless@gmail.com', '123', 1000000000, '5370000000', 3, 1, '2021-12-20 14:09:08', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel_turu`
--

DROP TABLE IF EXISTS `personel_turu`;
CREATE TABLE IF NOT EXISTS `personel_turu` (
  `personel_turu_id` int(11) NOT NULL AUTO_INCREMENT,
  `personel_turu_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`personel_turu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `personel_turu`
--

INSERT INTO `personel_turu` (`personel_turu_id`, `personel_turu_ad`) VALUES
(1, 'Bilişim Öğretmeni'),
(2, 'Türkçe Öğretmeni'),
(3, 'Biyoloji Öğretmeni'),
(4, 'Matematik Öğretmeni'),
(5, 'Fizik Öğretmeni'),
(6, 'Kimya Öğretmeni'),
(7, 'İngilizce Öğretmeni'),
(8, 'Din Kültürü Ve Ahlak Bilgisi Öğretmeni');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sinif`
--

DROP TABLE IF EXISTS `sinif`;
CREATE TABLE IF NOT EXISTS `sinif` (
  `sinif_id` int(11) NOT NULL AUTO_INCREMENT,
  `sinif_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `sinif_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sinif_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sinif`
--

INSERT INTO `sinif` (`sinif_id`, `sinif_ad`, `sinif_tarih`) VALUES
(1, '12 A', '2021-12-20 14:08:07'),
(2, '12 B', '2021-12-20 14:08:07'),
(3, '12 C', '2021-12-24 14:08:07'),
(4, '12 D', '2021-12-20 14:08:07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
