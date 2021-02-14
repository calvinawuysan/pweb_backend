-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `Painters`;
CREATE TABLE `Painters` (
  `Painter_ID` int(20) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `City_District` varchar(225) NOT NULL,
  `Province` varchar(225) NOT NULL,
  `Phone_WA` bigint(20) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Img` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Painters` (`Painter_ID`, `Name`, `City_District`, `Province`, `Phone_WA`, `Email`, `Img`) VALUES
(2101,	'Sri Murniati',	'Surabaya',	'Jawa Timur',	818399604,	'murniati.rama@gmail.com',	'perempuan.jpg'),
(2102,	'Romel Deni Andy Satria',	'Singkawang',	'Kalimantan Barat',	8152241102,	'omenk23.oe@gmail.com',	'lakilaki.jpg'),
(2103,	'Rudi Susanto',	'Tulungagung',	'Jawa Timur',	81359363336,	'agilpujantoko@gmail.com',	'lakilaki.jpg'),
(2104,	'Tyas Febrian Rachman',	'Sukabumi',	'Jawa Barat',	81398421801,	'giyask@gmail.com',	'perempuan.jpg'),
(2105,	'Daniel Lie',	'Banjarbaru',	'Kalimantan Selatan',	87739997584,	'danielbjm90.ds@gmail.com',	'lakilaki.jpg'),
(2106,	'Debora Susi MS',	'Wonogiri',	'Jawa Tengah',	82314496977,	'',	'perempuan.jpg'),
(2107,	'Neng Susilawati',	'Sukabumi',	'Jawa Barat',	85624764111,	'nengsusilawati1975@gmail.com',	'perempuan.jpg'),
(2108,	'Susmiadi',	'Kabupaten Jember',	'Jawa Timur',	822311095763,	'robith.sah@gmail.com',	'lakilaki.jpg'),
(2109,	'Wantiyo',	'Bekasi',	'Jawa Barat',	87881931400,	'wantiyoj@gmail.com',	'lakilaki.jpg'),
(2110,	'Ruslan',	'Kabupaten Kediri',	'Jawa Timur',	85843724080,	'ruslan.ringinrejo@gmail.com',	'lakilaki.jpg');

DROP TABLE IF EXISTS `paintings`;
CREATE TABLE `paintings` (
  `Painting_ID` int(20) NOT NULL,
  `Tittle` varchar(225) NOT NULL,
  `Media` varchar(225) NOT NULL,
  `Painter_ID` int(20) NOT NULL,
  `Size` varchar(225) NOT NULL,
  `Image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `paintings` (`Painting_ID`, `Tittle`, `Media`, `Painter_ID`, `Size`, `Image`) VALUES
(1801,	'Magnolia Flower',	'Oil on Canvas',	2101,	'70 x 90 cm',	'magnoliaflower.jpg'),
(1802,	'Bening Aban',	'Coffee Painting on Paper',	2102,	'21 x 30 cm',	'beningaban.jpg'),
(1803,	'Generasi Baru',	'Oil on Canvas',	2103,	'80 x 100 cm',	'generasibaru.jpg'),
(1804,	'The Forest Beauty #001',	'Oil on Canvas',	2104,	'200 x 120 cm',	'forestbeauty.jpg'),
(1805,	'Masa Thuwa',	'Oil on Canvas',	2105,	'120 x 180 cm',	'masathuwa.jpg'),
(1806,	'Bunga',	'Acrylic on Canvas',	2106,	'90 x 90 cm',	'bunga.jpg'),
(1807,	'Pantai Cilosok II',	'Oilon Canvas',	2107,	'110 x 160 cm',	'pantaicilosok.jpg'),
(1808,	'Merpati',	'Oil on Canvas',	2108,	'80 x 130 cm',	'merpati.jpg'),
(1809,	'Tiga Penari',	'Acrylic on Canvas',	2109,	'100 x 150 cm',	'tigapenari.jpg'),
(1810,	'Memandikan Kerbau',	'Acrylic on Canvas',	2110,	'200 x 120 cm',	'kerbau.jpg');

DROP TABLE IF EXISTS `recommendation`;
CREATE TABLE `recommendation` (
  `R_code` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `Price` varchar(225) NOT NULL,
  `Painter_ID` int(20) NOT NULL,
  `Image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `recommendation` (`R_code`, `name`, `Price`, `Painter_ID`, `Image`) VALUES
('R_01',	'Moleskine - Art Plus Sketchbook Large Plain',	'Rp.320.000',	2103,	'R_01.jpg'),
('R_02',	'Arto - Watercolour Painting Paper 300Gsm',	'Rp.75.000',	2102,	'R_02.jpg'),
('R_03',	'Van Gogh - Watercolour Pocket Box 20HP8631',	'Rp.560.000',	2101,	'R_03.jpg'),
('R_04',	'Snowman - Drawing Pen',	'Rp.7.000',	2107,	'R_04.jpg'),
('R_05',	'Sakura Koi - Coloring Brush Pen Set',	'Rp.725.000',	2101,	'R_05.jpg'),
('R_06',	'Faber-Castell - 48 Watercolour Pencil',	'Rp.109.000',	2110,	'R_06.jpg'),
('R_07',	'Uni-Ball Signo Broad White - Signo Broad White',	'Rp.41.000',	2106,	'R_07.jpg'),
('R_08',	'Sakura Koi - Coloring Brush Pen White',	'Rp.16.000',	2108,	'R_08.jpg'),
('R_09',	'Sakura - Poster Color Gold & Silver',	'Rp.29.850',	2103,	'R_09.jpg'),
('R_10',	'Diton - Spray Paint Clear',	'Rp.18.500',	2107,	'R_10.jpg');

-- 2021-02-10 10:53:53
