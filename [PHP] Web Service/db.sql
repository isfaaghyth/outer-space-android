-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Inang: localhost:3306
-- Waktu pembuatan: 20 Agu 2016 pada 23.09
-- Versi Server: 10.0.25-MariaDB-cll-lve
-- Versi PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wrshop_planet`
--

CREATE TABLE IF NOT EXISTS `wrshop_planet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planet_icon` varchar(50) NOT NULL,
  `planet_name` varchar(50) NOT NULL,
  `date_created` varchar(30) NOT NULL,
  `header_img` varchar(50) NOT NULL,
  `wiki_site` varchar(100) NOT NULL,
  `surface_area` varchar(50) NOT NULL,
  `equator` varchar(50) NOT NULL,
  `mass` varchar(50) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `wrshop_planet`
--

INSERT INTO `wrshop_planet` (`id`, `planet_icon`, `planet_name`, `date_created`, `header_img`, `wiki_site`, `surface_area`, `equator`, `mass`, `volume`, `description`) VALUES
(1, 'merkurius.png', 'Merkurius', '1:26 AM 16-August-2016', 'merkurius.jpg', 'https://id.wikipedia.org/wiki/Merkurius', '0,108 Bumi', '-', '0,055 Bumi', '0,054 Bumi', 'Merkurius adalah planet terkecil di dalam tata surya dan juga yang terdekat dengan Matahari dengan kala revolusi 88 hari dan kala rotasi 59 hari. Kecerahan planet ini berkisar di antara -2 sampai 5,5 dalam magnitudo tampak namun tidak mudah terlihat karena sudut pandangnya dengan Matahari kecil (den'),
(2, 'venus.png', 'Venus', '1:29 AM 16-August-2016', 'venus.jpg', 'https://id.wikipedia.org/wiki/Venus', '0,902 Bumi', '-', '0,815 Bumi', '0,866 Bumi', 'Venus adalah planet terdekat kedua dari Matahari setelah Merkurius. Planet ini mengorbit Matahari selama 224,7 hari Bumi. Venus tidak memiliki satelit alami dan dinamai dari dewi cinta dan kecantikan dalam mitologi Romawi. Setelah Bulan, planet ini merupakan objek alami tercerah di langit malam, den'),
(3, 'bumi.png', 'Bumi', '1:32 AM 16-August-2016', 'bumi.jpg', 'https://id.wikipedia.org/wiki/Bumi', '510.072.000 km2', '6.378,1 km', '5,97219×10^24 kg', '1,08321×10^12 km', 'Bumi adalah planet ketiga dari Matahari yang merupakan planet terpadat dan terbesar kelima dari delapan planet dalam Tata Surya. Bumi juga merupakan planet terbesar dari empat planet kebumian Tata Surya. Bumi terkadang disebut dengan dunia atau Planet Biru. Bumi terbentuk sekitar 4,54 miliar tahun y'),
(4, 'mars.png', 'Mars', '22:40 PM 16-August-2016', 'mars.jpg', 'https://id.wikipedia.org/wiki/Mars', '0,284 Bumi', '0,533 Bumi', '0,107 Bumi', '0,151 Bumi', 'Mars adalah planet terdekat keempat dari Matahari. Namanya diambil dari dewa perang Romawi, Mars. Planet ini sering dijuluki sebagai "planet merah" karena tampak dari jauh berwarna kemerah-kemerahan. Ini disebabkan oleh keberadaan besi(III) oksida di permukaan planet Mars.'),
(5, 'yupiter.png', 'Yupiter', '22:45 PM 16-August-2016', 'yupiter.jpg', 'https://id.wikipedia.org/wiki/Yupiter', '121,9 Bumi', '11,209 Bumi', '317,8 Bumi', '1321,3 Bumi', 'Yupiter adalah planet terdekat kelima dari Matahari setelah Merkurius, Venus, Bumi, dan Mars. Planet ini juga merupakan planet terbesar di Tata Surya. Yupiter merupakan raksasa gas dengan massa seperseribu massa Matahari dan dua setengah kali jumlah massa semua planet lain di Tata Surya.'),
(6, 'saturnus.png', 'Saturnus', '22:49 PM 16-August-2016', 'saturnus.jpg', 'https://id.wikipedia.org/wiki/Saturnus', '83,703 Bumi', '9,4492 Bumi', '95,152 Bumi', '763,59 Bumi', 'Saturnus adalah sebuah planet di tata surya yang dikenal juga sebagai planet bercincin, dan merupakan planet terbesar kedua di tata surya setelah Jupiter. Jarak Saturnus sangat jauh dari Matahari, karena itulah Saturnus tampak tidak terlalu jelas dari Bumi. Saturnus berevolusi dalam waktu 29,46 tahu'),
(7, 'uranus.png', 'Uranus', '22:52 PM 16-August-2016', 'uranus.jpg', 'https://id.wikipedia.org/wiki/Uranus', '15,91 Bumi', '4,007 Bumi', '14,536 Bumi', '63,086 Bumi', 'Uranus adalah planet ketujuh dari Matahari dan planet yang terbesar ketiga dan terberat keempat dalam Tata Surya. Ia dinamai dari nama dewa langit Yunani kuno Uranus (???????) ayah dari Kronos (Saturnus) dan kakek dari Zeus (Jupiter). Meskipun Uranus terlihat dengan mata telanjang seperti lima plane'),
(8, 'neptunus.png', 'Neptunus', '22:55 PM 16-August-2016', 'neptunus.jpg', 'https://id.wikipedia.org/wiki/Neptunus', '14,98 Bumi', '3,883 Bumi', '17,147 Bumi', '57,74 Bumi', 'Neptunus merupakan planet terjauh (kedelapan) jika ditinjau dari Matahari. Planet ini dinamai dari dewa lautan Romawi. Neptunus merupakan planet terbesar keempat berdasarkan diameter (49.530 km) dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sed');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
