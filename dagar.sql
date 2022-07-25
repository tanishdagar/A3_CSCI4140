-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db.cs.dal.ca
-- Generation Time: Jul 24, 2022 at 09:02 PM
-- Server version: 10.3.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dagar`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`dagar`@`129.173.0.0/255.255.0.0` PROCEDURE `Get_currentPrice133` ()  BEGIN
SELECT currentPrice133 FROM Parts133 WHERE partNo133 = 2;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `Clients133`
--

CREATE TABLE `Clients133` (
  `clientID133` int(11) NOT NULL,
  `clientName133` varchar(45) CHARACTER SET utf32 NOT NULL,
  `clientCity133` varchar(45) CHARACTER SET utf32 NOT NULL,
  `clientStatus133` varchar(20) CHARACTER SET utf32 NOT NULL,
  `dollarsOnOrder133` decimal(6,2) NOT NULL,
  `clientCompPassword133` varchar(45) CHARACTER SET utf32 COLLATE utf32_german2_ci NOT NULL,
  `moneyOwed133` decimal(6,2) NOT NULL,
  `Deals133` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Clients133`
--

INSERT INTO `Clients133` (`clientID133`, `clientName133`, `clientCity133`, `clientStatus133`, `dollarsOnOrder133`, `clientCompPassword133`, `moneyOwed133`, `Deals133`) VALUES
(1, 'James Taylor', 'Halifax ', 'Active', '0.00', '12345', '250.00', 0),
(2, 'Mark Lynch', 'Toronto ', 'Active', '910.00', '09876', '0.00', 0),
(3, 'Tanish Dagar', 'New Delhi ', 'Active', '4000.00', 'Tdagar', '0.00', 0),
(4, 'Pierre Perrin', 'Qubec city ', 'Active', '0.00', 'PPerrin', '230.00', 0),
(5, 'Company Z', 'Not Applicable ', 'Active', '9999.00', 'CompanyZ', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ClientsY`
--

CREATE TABLE `ClientsY` (
  `clientIDY` int(11) NOT NULL,
  `clientNameY` varchar(45) CHARACTER SET utf32 NOT NULL,
  `clientCityY` varchar(45) CHARACTER SET utf32 NOT NULL,
  `clientStatusY` varchar(20) CHARACTER SET utf32 NOT NULL,
  `dollarsOnOrderY` decimal(6,2) NOT NULL,
  `clientCompPasswordY` varchar(45) CHARACTER SET utf32 COLLATE utf32_german2_ci NOT NULL,
  `moneyOwedY` decimal(6,2) NOT NULL,
  `DealsY` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClientsY`
--

INSERT INTO `ClientsY` (`clientIDY`, `clientNameY`, `clientCityY`, `clientStatusY`, `dollarsOnOrderY`, `clientCompPasswordY`, `moneyOwedY`, `DealsY`) VALUES
(1111, 'Ty Fetinko', 'Halifax', 'Active', '0.00', 'ABCDEF', '500.00', 0),
(1112, 'Jessica Smith', 'Dartmouth ', 'Active', '363.00', 'JSMITH', '0.00', 2),
(1113, 'Robert Cummins', 'Saint John', 'Active', '0.00', 'RCUMMINS', '179.10', 2),
(1114, 'Company Z', 'Not Applicable ', 'Active', '9999.00', 'CompanyZ', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ClientsZ`
--

CREATE TABLE `ClientsZ` (
  `clientIDZ` int(11) NOT NULL,
  `clientNameZ` varchar(45) CHARACTER SET utf32 NOT NULL,
  `clientCityZ` varchar(45) CHARACTER SET utf32 NOT NULL,
  `clientStatusZ` varchar(20) CHARACTER SET utf32 NOT NULL,
  `dollarsOnOrderZ` decimal(10,2) NOT NULL,
  `clientCompPasswordZ` varchar(45) CHARACTER SET utf32 COLLATE utf32_german2_ci NOT NULL,
  `moneyOwedZ` decimal(10,2) NOT NULL,
  `DealsZ` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ClientsZ`
--

INSERT INTO `ClientsZ` (`clientIDZ`, `clientNameZ`, `clientCityZ`, `clientStatusZ`, `dollarsOnOrderZ`, `clientCompPasswordZ`, `moneyOwedZ`, `DealsZ`) VALUES
(100, 'Robbe Paskal ', 'London', 'Active', '488.00', 'RPaskal', '0.00', 0),
(101, 'Mat Cedric', 'Chicago ', 'Active', '0.00', 'MCedric', '80.00', 0),
(102, 'Marlyn Prince', 'Ottawa ', 'Active', '400.00', 'MPrince ', '0.00', 0),
(103, 'Robbe Paskal ', 'London', 'Active', '1488.00', 'RPaskal', '0.00', 0),
(104, 'Mat Cedric', 'Chicago ', 'Active', '22440.00', 'MCedric', '0.00', 2),
(105, 'Marlyn Prince', 'Ottawa ', 'Active', '3400.00', 'MPrince ', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Lines133`
--

CREATE TABLE `Lines133` (
  `lineNo133` int(11) NOT NULL,
  `poNo133` int(11) NOT NULL,
  `partNo133` int(11) NOT NULL,
  `priceOrdered133` decimal(6,2) NOT NULL,
  `qty133` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lines133`
--

INSERT INTO `Lines133` (`lineNo133`, `poNo133`, `partNo133`, `priceOrdered133`, `qty133`) VALUES
(1, 1, 1, '120.00', 1),
(2, 2, 2, '50.00', 2),
(3, 3, 4, '90.00', 3),
(4, 4, 5, '20.00', 1),
(41, 26, 4, '270.00', 3),
(42, 26, 5, '40.00', 2),
(43, 26, 6, '1000.00', 1),
(44, 27, 1, '120.00', 1),
(45, 28, 4, '1350.00', 15),
(46, 29, 1, '240.00', 2),
(47, 30, 4, '180.00', 2),
(48, 30, 5, '20.00', 1),
(49, 31, 1, '120.00', 1),
(50, 31, 2, '50.00', 1),
(51, 31, 3, '60.00', 2),
(52, 32, 4, '90.00', 1),
(53, 32, 6, '1000.00', 1),
(54, 33, 4, '270.00', 3),
(55, 33, 5, '20.00', 1),
(56, 33, 6, '1000.00', 1),
(57, 34, 1, '120.00', 1),
(58, 34, 2, '100.00', 2),
(59, 34, 3, '30.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `LinesY`
--

CREATE TABLE `LinesY` (
  `lineNoY` int(11) NOT NULL,
  `poNoY` int(11) NOT NULL,
  `partNoY` int(11) NOT NULL,
  `priceOrderedY` decimal(6,2) NOT NULL,
  `qtyY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LinesY`
--

INSERT INTO `LinesY` (`lineNoY`, `poNoY`, `partNoY`, `priceOrderedY`, `qtyY`) VALUES
(8, 4, 2, '240.00', 2),
(9, 4, 4, '160.00', 2),
(10, 4, 6, '100.00', 1),
(11, 5, 1, '4.00', 2),
(12, 5, 3, '70.00', 1),
(13, 5, 5, '25.00', 1),
(14, 5, 6, '100.00', 1),
(15, 6, 4, '240.00', 3),
(16, 6, 5, '75.00', 3),
(17, 6, 6, '200.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `LinesZ`
--

CREATE TABLE `LinesZ` (
  `lineNoZ` int(11) NOT NULL,
  `poNoZ` int(11) NOT NULL,
  `partNoZ` int(11) NOT NULL,
  `priceOrderedZ` decimal(6,2) NOT NULL,
  `qtyZ` int(11) NOT NULL,
  `companyName` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LinesZ`
--

INSERT INTO `LinesZ` (`lineNoZ`, `poNoZ`, `partNoZ`, `priceOrderedZ`, `qtyZ`, `companyName`) VALUES
(48, 27, 1, '120.00', 1, 'Comapny X'),
(49, 27, 6, '1000.00', 2, 'Comapny X'),
(50, 27, 6, '100.00', 4, 'Comapny Y');

-- --------------------------------------------------------

--
-- Table structure for table `Parts133`
--

CREATE TABLE `Parts133` (
  `partNo133` int(11) NOT NULL,
  `partName133` varchar(45) CHARACTER SET utf32 NOT NULL,
  `partDescription133` varchar(45) CHARACTER SET utf32 NOT NULL,
  `QoH133` int(11) NOT NULL,
  `currentPrice133` decimal(6,2) NOT NULL,
  `productImage133` varchar(45) CHARACTER SET utf32 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Parts133`
--

INSERT INTO `Parts133` (`partNo133`, `partName133`, `partDescription133`, `QoH133`, `currentPrice133`, `productImage133`) VALUES
(1, 'Nike AirMax', 'Nike shoes', 20, '120.00', 'NikeAirMax.jpeg'),
(2, 'Adidas DryFit', 'Adidas T-shirt', 41, '50.00', 'AdidasDryFit.jpeg'),
(3, 'Adidas MLS Football', 'Nike Football', 51, '30.00', 'AdidasMLSFootball.jpg'),
(4, 'Nike Backpack', 'Nike Bag', 20, '90.00', 'NikeBackpack.jpeg'),
(5, 'Puma Ankle Socks', 'Puma Socks', 32, '20.00', 'PumaSocks.jpeg'),
(6, 'Barca Jersey', 'Barca Jersey shirt', 63, '1000.00', 'BarcaJersey.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `PartsY`
--

CREATE TABLE `PartsY` (
  `partNoY` int(11) NOT NULL,
  `partNameY` varchar(45) CHARACTER SET utf32 NOT NULL,
  `partDescriptionY` varchar(45) CHARACTER SET utf32 NOT NULL,
  `QoHY` int(11) NOT NULL,
  `currentPriceY` decimal(6,2) NOT NULL,
  `productImageY` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PartsY`
--

INSERT INTO `PartsY` (`partNoY`, `partNameY`, `partDescriptionY`, `QoHY`, `currentPriceY`, `productImageY`) VALUES
(1, 'Hockey Puck', 'Hockey Puck ', 29, '2.00', 'hockeyPuck.jpeg'),
(2, 'Toronto Maple Leafs Jersey ', 'Toronto Maple Leafs Blue Jersey ', 23, '120.00', 'MapleLeafsJersey.jpeg'),
(3, 'Hockey Stick', 'Hockey Stick', 3, '70.00', 'HockeyStick.jpeg'),
(4, 'Nike Backpack', 'Nike Bag', 23, '80.00', 'NikeBackpack.jpeg'),
(5, 'Puma Ankle Socks', 'Puma Socks', 21, '25.00', 'PumaSocks.jpeg'),
(6, 'Hockey Ice Skates', 'Hockey Ice Skating Shoes', 8, '100.00', 'HockeySkates.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `POs133`
--

CREATE TABLE `POs133` (
  `poNo133` int(11) NOT NULL,
  `datePO133` datetime NOT NULL,
  `status133` varchar(20) NOT NULL,
  `clientID133` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `POs133`
--

INSERT INTO `POs133` (`poNo133`, `datePO133`, `status133`, `clientID133`) VALUES
(1, '2022-05-20 10:10:23', 'Pending', 1),
(2, '2022-05-21 11:10:23', 'Pending', 2),
(3, '2022-06-04 17:13:40', 'Pending', 3),
(4, '2022-06-03 17:13:40', 'Pending', 4),
(26, '2022-06-26 23:29:16', 'pending', 4),
(27, '2022-06-27 02:00:42', 'pending', 1),
(28, '2022-06-27 02:03:36', 'pending', 1),
(29, '2022-06-27 02:36:51', 'pending', 1),
(30, '2022-06-27 03:27:23', 'pending', 4),
(31, '2022-06-29 16:05:21', 'pending', 4),
(32, '2022-07-10 19:29:41', 'pending', 2),
(33, '2022-07-19 14:52:06', 'pending', 1),
(34, '2022-07-19 17:40:26', 'pending', 1);

-- --------------------------------------------------------

--
-- Table structure for table `POsY`
--

CREATE TABLE `POsY` (
  `poNoY` int(11) NOT NULL,
  `datePOY` datetime NOT NULL,
  `statusY` varchar(20) NOT NULL,
  `clientIDY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `POsY`
--

INSERT INTO `POsY` (`poNoY`, `datePOY`, `statusY`, `clientIDY`) VALUES
(4, '2022-07-24 15:46:54', 'pending', 1111),
(5, '2022-07-24 15:49:47', 'pending', 1113),
(6, '2022-07-24 15:50:42', 'pending', 1112);

-- --------------------------------------------------------

--
-- Table structure for table `POsZ`
--

CREATE TABLE `POsZ` (
  `poNoZ` int(11) NOT NULL,
  `datePOZ` datetime NOT NULL,
  `statusZ` varchar(20) NOT NULL,
  `clientIDZ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `POsZ`
--

INSERT INTO `POsZ` (`poNoZ`, `datePOZ`, `statusZ`, `clientIDZ`) VALUES
(27, '2022-07-24 15:45:47', 'pending', 101);

-- --------------------------------------------------------

--
-- Table structure for table `userSelected133`
--

CREATE TABLE `userSelected133` (
  `id` int(11) NOT NULL,
  `Dataid` int(11) NOT NULL,
  `Totalprice` int(11) NOT NULL,
  `clientID133` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userSelectedY`
--

CREATE TABLE `userSelectedY` (
  `idY` int(11) NOT NULL,
  `dataIDY` int(11) NOT NULL,
  `totalpriceY` int(11) NOT NULL,
  `clientIDY` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userSelectedZ`
--

CREATE TABLE `userSelectedZ` (
  `idZ` int(11) NOT NULL,
  `dataIDZ` varchar(11) NOT NULL,
  `totalpriceZ` int(11) NOT NULL,
  `clientIDZ` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clients133`
--
ALTER TABLE `Clients133`
  ADD PRIMARY KEY (`clientID133`);

--
-- Indexes for table `ClientsY`
--
ALTER TABLE `ClientsY`
  ADD PRIMARY KEY (`clientIDY`);

--
-- Indexes for table `ClientsZ`
--
ALTER TABLE `ClientsZ`
  ADD PRIMARY KEY (`clientIDZ`);

--
-- Indexes for table `Lines133`
--
ALTER TABLE `Lines133`
  ADD PRIMARY KEY (`lineNo133`),
  ADD KEY `poNo133` (`poNo133`),
  ADD KEY `partNo133` (`partNo133`);

--
-- Indexes for table `LinesY`
--
ALTER TABLE `LinesY`
  ADD PRIMARY KEY (`lineNoY`),
  ADD KEY `FK1` (`poNoY`),
  ADD KEY `FK2` (`partNoY`);

--
-- Indexes for table `LinesZ`
--
ALTER TABLE `LinesZ`
  ADD PRIMARY KEY (`lineNoZ`),
  ADD KEY `FK6` (`poNoZ`);

--
-- Indexes for table `Parts133`
--
ALTER TABLE `Parts133`
  ADD PRIMARY KEY (`partNo133`);

--
-- Indexes for table `PartsY`
--
ALTER TABLE `PartsY`
  ADD PRIMARY KEY (`partNoY`);

--
-- Indexes for table `POs133`
--
ALTER TABLE `POs133`
  ADD PRIMARY KEY (`poNo133`),
  ADD KEY `clientID133` (`clientID133`);

--
-- Indexes for table `POsY`
--
ALTER TABLE `POsY`
  ADD PRIMARY KEY (`poNoY`),
  ADD KEY `FK3` (`clientIDY`);

--
-- Indexes for table `POsZ`
--
ALTER TABLE `POsZ`
  ADD PRIMARY KEY (`poNoZ`),
  ADD KEY `FK7` (`clientIDZ`);

--
-- Indexes for table `userSelected133`
--
ALTER TABLE `userSelected133`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientID133` (`clientID133`);

--
-- Indexes for table `userSelectedY`
--
ALTER TABLE `userSelectedY`
  ADD PRIMARY KEY (`idY`),
  ADD KEY `FK4` (`clientIDY`);

--
-- Indexes for table `userSelectedZ`
--
ALTER TABLE `userSelectedZ`
  ADD PRIMARY KEY (`idZ`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clients133`
--
ALTER TABLE `Clients133`
  MODIFY `clientID133` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ClientsY`
--
ALTER TABLE `ClientsY`
  MODIFY `clientIDY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1115;

--
-- AUTO_INCREMENT for table `ClientsZ`
--
ALTER TABLE `ClientsZ`
  MODIFY `clientIDZ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `Lines133`
--
ALTER TABLE `Lines133`
  MODIFY `lineNo133` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `LinesY`
--
ALTER TABLE `LinesY`
  MODIFY `lineNoY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `LinesZ`
--
ALTER TABLE `LinesZ`
  MODIFY `lineNoZ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `Parts133`
--
ALTER TABLE `Parts133`
  MODIFY `partNo133` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `PartsY`
--
ALTER TABLE `PartsY`
  MODIFY `partNoY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `POs133`
--
ALTER TABLE `POs133`
  MODIFY `poNo133` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `POsY`
--
ALTER TABLE `POsY`
  MODIFY `poNoY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `POsZ`
--
ALTER TABLE `POsZ`
  MODIFY `poNoZ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `userSelected133`
--
ALTER TABLE `userSelected133`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `userSelectedY`
--
ALTER TABLE `userSelectedY`
  MODIFY `idY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userSelectedZ`
--
ALTER TABLE `userSelectedZ`
  MODIFY `idZ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `LinesY`
--
ALTER TABLE `LinesY`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`poNoY`) REFERENCES `POsY` (`poNoY`),
  ADD CONSTRAINT `FK2` FOREIGN KEY (`partNoY`) REFERENCES `PartsY` (`partNoY`);

--
-- Constraints for table `LinesZ`
--
ALTER TABLE `LinesZ`
  ADD CONSTRAINT `FK6` FOREIGN KEY (`poNoZ`) REFERENCES `POsZ` (`poNoZ`);

--
-- Constraints for table `POsY`
--
ALTER TABLE `POsY`
  ADD CONSTRAINT `FK3` FOREIGN KEY (`clientIDY`) REFERENCES `ClientsY` (`clientIDY`);

--
-- Constraints for table `POsZ`
--
ALTER TABLE `POsZ`
  ADD CONSTRAINT `FK7` FOREIGN KEY (`clientIDZ`) REFERENCES `ClientsZ` (`clientIDZ`);

--
-- Constraints for table `userSelectedY`
--
ALTER TABLE `userSelectedY`
  ADD CONSTRAINT `FK4` FOREIGN KEY (`clientIDY`) REFERENCES `ClientsY` (`clientIDY`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
