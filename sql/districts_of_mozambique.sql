-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Nov-2019 às 13:40
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_dqa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `districts_of_mozambique`
--

CREATE TABLE `districts_of_mozambique` (
  `id` int(11) NOT NULL,
  `district` varchar(50) DEFAULT NULL,
  `provice_of_mozambique_id` int(11) NOT NULL,
  `province` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `districts_of_mozambique`
--

INSERT INTO `districts_of_mozambique` (`id`, `district`, `provice_of_mozambique_id`, `province`) VALUES
(101, 'Kalhamanculo ', 1, 'Maputo Cidade '),
(102, 'Kamavota ', 1, 'Maputo Cidade '),
(103, 'Kamaxakene ', 1, 'Maputo Cidade '),
(104, 'Kampfumo ', 1, 'Maputo Cidade '),
(105, 'Kamubukwana ', 1, 'Maputo Cidade '),
(106, 'Kanyaka ', 1, 'Maputo Cidade '),
(107, 'Katembe ', 1, 'Maputo Cidade '),
(108, 'Nlhamankulu ', 1, 'Maputo Cidade '),
(201, 'Boane ', 2, 'Maputo '),
(202, 'Cidade Matola ', 2, 'Maputo '),
(203, 'Magude ', 2, 'Maputo '),
(204, 'Manhica ', 2, 'Maputo '),
(205, 'Marracuene ', 2, 'Maputo '),
(206, 'Matola ', 2, 'Maputo '),
(207, 'Matutuine ', 2, 'Maputo '),
(208, 'Moamba ', 2, 'Maputo '),
(209, 'Namaacha ', 2, 'Maputo '),
(301, 'Bilene ', 3, 'Gaza '),
(302, 'Chibuto ', 3, 'Gaza '),
(303, 'Chicualacuala ', 3, 'Gaza '),
(304, 'Chigubo ', 3, 'Gaza '),
(305, 'Chokwe ', 3, 'Gaza '),
(306, 'Cidade de xai-xai ', 3, 'Gaza '),
(307, 'Distrito de xai-xai ', 3, 'Gaza '),
(308, 'Guija ', 3, 'Gaza '),
(309, 'Mabalane ', 3, 'Gaza '),
(310, 'Macia ', 3, 'Gaza '),
(311, 'Manjacaze ', 3, 'Gaza '),
(312, 'Massangena ', 3, 'Gaza '),
(313, 'Massingir ', 3, 'Gaza '),
(401, 'Cidade de inhambane ', 4, 'Inhambane '),
(402, 'Funhalouro ', 4, 'Inhambane '),
(403, 'Govuro ', 4, 'Inhambane '),
(404, 'Homoine ', 4, 'Inhambane '),
(405, 'Inharrime ', 4, 'Inhambane '),
(406, 'Inhassoro ', 4, 'Inhambane '),
(407, 'Jangamo ', 4, 'Inhambane '),
(408, 'Mabote ', 4, 'Inhambane '),
(409, 'Massinga ', 4, 'Inhambane '),
(410, 'Maxixe ', 4, 'Inhambane '),
(411, 'Morrumbene ', 4, 'Inhambane '),
(412, 'Panda ', 4, 'Inhambane '),
(413, 'Vilankulos ', 4, 'Inhambane '),
(414, 'Zavala ', 4, 'Inhambane '),
(501, 'Buzi ', 5, 'Sofala '),
(502, 'Caia ', 5, 'Sofala '),
(503, 'Chemba ', 5, 'Sofala '),
(504, 'Cheringoma ', 5, 'Sofala '),
(505, 'Chibabava ', 5, 'Sofala '),
(506, 'Cidade da beira ', 5, 'Sofala '),
(507, 'Dondo ', 5, 'Sofala '),
(508, 'Gorongosa ', 5, 'Sofala '),
(509, 'Machanga ', 5, 'Sofala '),
(510, 'Maringue ', 5, 'Sofala '),
(511, 'Marromeu ', 5, 'Sofala '),
(512, 'Muanza ', 5, 'Sofala '),
(513, 'Nhamatanda ', 5, 'Sofala '),
(601, 'Alto Molocue ', 6, 'Zambezia '),
(602, 'Chinde ', 6, 'Zambezia '),
(603, 'Cidade de quelimane ', 6, 'Zambezia '),
(604, 'Derre ', 6, 'Zambezia '),
(605, 'Gile ', 6, 'Zambezia '),
(606, 'Gurue ', 6, 'Zambezia '),
(607, 'Ile ', 6, 'Zambezia '),
(608, 'Inhassunge ', 6, 'Zambezia '),
(609, 'Luabo ', 6, 'Zambezia '),
(610, 'Lugela ', 6, 'Zambezia '),
(611, 'Maganja da costa ', 6, 'Zambezia '),
(612, 'Milange ', 6, 'Zambezia '),
(613, 'Mocuba ', 6, 'Zambezia '),
(614, 'Mocubela ', 6, 'Zambezia '),
(615, 'Mopeia ', 6, 'Zambezia '),
(616, 'Morrumbala ', 6, 'Zambezia '),
(617, 'Namacurra ', 6, 'Zambezia '),
(618, 'Namarroi ', 6, 'Zambezia '),
(619, 'Nicoadala ', 6, 'Zambezia '),
(620, 'Pebane ', 6, 'Zambezia '),
(621, 'Quelimane ', 6, 'Zambezia '),
(666, 'Beira', 5, 'Sofala'),
(701, 'Angoche ', 7, 'Nampula '),
(702, 'Cidade de nampula ', 7, 'Nampula '),
(703, 'Distrito de nampula ', 7, 'Nampula '),
(704, 'Erati ', 7, 'Nampula '),
(705, 'Ilha de Mocambique ', 7, 'Nampula '),
(706, 'Lalaua ', 7, 'Nampula '),
(707, 'Larde ', 7, 'Nampula '),
(708, 'Liupo ', 7, 'Nampula '),
(709, 'Malema ', 7, 'Nampula '),
(710, 'Meconta ', 7, 'Nampula '),
(711, 'Mecuburi ', 7, 'Nampula '),
(712, 'Memba ', 7, 'Nampula '),
(713, 'Mogincual ', 7, 'Nampula '),
(714, 'Mogovolas ', 7, 'Nampula '),
(715, 'Moma ', 7, 'Nampula '),
(716, 'Monapo ', 7, 'Nampula '),
(717, 'Mossuril ', 7, 'Nampula '),
(718, 'Muecate ', 7, 'Nampula '),
(719, 'Murrupula ', 7, 'Nampula '),
(720, 'Nacala-a-velha ', 7, 'Nampula '),
(721, 'Nacala-porto ', 7, 'Nampula '),
(722, 'Nacaroa ', 7, 'Nampula '),
(723, 'Rapale ', 7, 'Nampula '),
(724, 'Ribaue ', 7, 'Nampula '),
(801, 'Cidade de lichinga ', 8, 'Niassa '),
(802, 'Cuamba ', 8, 'Niassa '),
(803, 'Distrito de lichinga ', 8, 'Niassa '),
(804, 'Lago ', 8, 'Niassa '),
(805, 'Majune ', 8, 'Niassa '),
(806, 'Mandimba ', 8, 'Niassa '),
(807, 'Marrupa ', 8, 'Niassa '),
(808, 'Maua ', 8, 'Niassa '),
(809, 'Mavago ', 8, 'Niassa '),
(810, 'Mecanhelas ', 8, 'Niassa '),
(811, 'Mecula ', 8, 'Niassa '),
(812, 'Metarica ', 8, 'Niassa '),
(813, 'Muembe ', 8, 'Niassa '),
(814, 'Ngauma ', 8, 'Niassa '),
(815, 'Nipepe ', 8, 'Niassa '),
(816, 'Sanga ', 8, 'Niassa '),
(901, 'Ancuabe ', 9, 'Cabo Delgado '),
(902, 'Balama ', 9, 'Cabo Delgado '),
(903, 'Chiure ', 9, 'Cabo Delgado '),
(904, 'Cidade de pemba ', 9, 'Cabo Delgado '),
(905, 'Ibo ', 9, 'Cabo Delgado '),
(906, 'Macomia ', 9, 'Cabo Delgado '),
(907, 'Mecufi ', 9, 'Cabo Delgado '),
(908, 'Meluco ', 9, 'Cabo Delgado '),
(909, 'Metuge ', 9, 'Cabo Delgado '),
(910, 'Mocimboa da praia ', 9, 'Cabo Delgado '),
(911, 'Montepuez ', 9, 'Cabo Delgado '),
(912, 'Mueda ', 9, 'Cabo Delgado '),
(913, 'Muidumbe ', 9, 'Cabo Delgado '),
(914, 'Namuno ', 9, 'Cabo Delgado '),
(915, 'Nangade ', 9, 'Cabo Delgado '),
(916, 'Palma ', 9, 'Cabo Delgado '),
(917, 'Quissanga ', 9, 'Cabo Delgado '),
(1001, 'Angonia ', 10, 'Tete '),
(1002, 'Cahora bassa ', 10, 'Tete '),
(1003, 'Changara ', 10, 'Tete '),
(1004, 'Chifunde ', 10, 'Tete '),
(1005, 'Chiuta ', 10, 'Tete '),
(1006, 'Cidade de tete ', 10, 'Tete '),
(1007, 'Doa ', 10, 'Tete '),
(1008, 'Dsc tete ', 10, 'Tete '),
(1009, 'Macanga ', 10, 'Tete '),
(1010, 'Magoe ', 10, 'Tete '),
(1011, 'Marara ', 10, 'Tete '),
(1012, 'Maravia ', 10, 'Tete '),
(1013, 'Moatize ', 10, 'Tete '),
(1014, 'Mutarara ', 10, 'Tete '),
(1015, 'Tsangano ', 10, 'Tete '),
(1016, 'Zumbo ', 10, 'Tete '),
(1101, 'Barue ', 11, 'Manica '),
(1102, 'Cidade de chimoio ', 11, 'Manica '),
(1103, 'Gondola ', 11, 'Manica '),
(1104, 'Guro ', 11, 'Manica '),
(1105, 'Machaze ', 11, 'Manica '),
(1106, 'Macossa ', 11, 'Manica '),
(1107, 'Manica ', 11, 'Manica '),
(1108, 'Mossurize ', 11, 'Manica '),
(1109, 'Sussundenga ', 11, 'Manica '),
(1110, 'Tambara ', 11, 'Manica ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts_of_mozambique`
--
ALTER TABLE `districts_of_mozambique`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts_of_mozambique`
--
ALTER TABLE `districts_of_mozambique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
