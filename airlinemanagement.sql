-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 11:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlinemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `airfare`
--

CREATE TABLE `airfare` (
  `Fare_ID` int(11) NOT NULL,
  `Charge_Amount` int(11) DEFAULT NULL,
  `Description` varchar(25) DEFAULT NULL,
  `Flight_ID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airfare`
--

INSERT INTO `airfare` (`Fare_ID`, `Charge_Amount`, `Description`, `Flight_ID`) VALUES
(1, 27341, 'Standard Single', 'AI2014'),
(2, 42176, 'Key Fare Single', 'EY1234'),
(3, 27373, 'Business Return', 'LH9876'),
(4, 34837, 'Standard Return', 'QR2305'),
(5, 8777, 'Superpex Return', 'AA4367'),
(6, 44592, 'Advanced Purchase', 'BA1689'),
(7, 9578, 'Standard Return', 'CT7812'),
(8, 4459, 'Superpex Return', 'PF4521');

-- --------------------------------------------------------

--
-- Table structure for table `airplane_type`
--

CREATE TABLE `airplane_type` (
  `A_ID` int(11) NOT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `A_weight` int(11) DEFAULT NULL,
  `Company` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airplane_type`
--

INSERT INTO `airplane_type` (`A_ID`, `Capacity`, `A_weight`, `Company`) VALUES
(738, 853, 394, 'Indigo'),
(745, 770, 405, 'GoAir'),
(750, 790, 364, 'AirIndia'),
(768, 867, 387, 'AirAsia'),
(777, 800, 380, 'Vistara'),
(785, 835, 410, 'Alliance Air'),
(790, 850, 390, 'SpiceJet'),
(821, 790, 355, 'TruJet');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Air_code` varchar(10) NOT NULL,
  `Air_Name` varchar(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`Air_code`, `Air_Name`, `City`, `State`, `Country_code`) VALUES
('AIP', 'Adampur Airport', 'Jalandhar', 'Punjab', 91),
('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'Maharashtra', 91),
('CPH', 'Copenhagen Airport', 'Copenhagen', 'Denmark', 45),
('DEL', 'Indira Gandhi International Airport', 'Delhi', 'UP', 91),
('EWR', 'Newark Liberty International Airport', 'Newark', 'New Jersey', 1),
('IXJ', 'Satwari Airport', 'Jammu', 'Jammu & Kashmir', 91),
('JFK', 'John F.Kennnedy International Airport', 'New York City', 'New York', 1),
('LCY', 'London City Airport', 'Newham', 'London', 44);

-- --------------------------------------------------------

--
-- Table structure for table `can_land`
--

CREATE TABLE `can_land` (
  `Air_code` varchar(10) NOT NULL,
  `Flight_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `can_land`
--

INSERT INTO `can_land` (`Air_code`, `Flight_ID`) VALUES
('AIP', 'CT7812'),
('BOM', 'QR2305'),
('CPH', 'AA4367'),
('DEL', 'AI2014'),
('EWR', 'LH9876'),
('IXJ', 'PF4521'),
('JFK', 'BA1689'),
('LCY', 'EY1234');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `Country_code` int(11) NOT NULL,
  `Country_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`Country_code`, `Country_Name`) VALUES
(1, 'USA'),
(44, 'England'),
(45, 'Kingdom of Denmark'),
(55, 'Brazil'),
(64, 'New Zealand'),
(91, 'India'),
(213, 'Algeria'),
(971, 'UAE');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Emp_ID` int(11) NOT NULL,
  `E_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Email_ID` varchar(20) DEFAULT NULL,
  `Contact` varchar(20) DEFAULT NULL,
  `Air_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Emp_ID`, `E_Name`, `Address`, `Age`, `Email_ID`, `Contact`, `Air_code`) VALUES
(1234, 'Rekha Tiwary', '202-Meeta Apt,Yogi Nagar,Mumbai', 30, 'rekha1234@gmail.com', '+918530324018', 'DEL'),
(2458, 'Johny Paul', '45-Balaji Apt,Ajit Nagar,Jalandar', 32, 'johnypaul8@gmail.com', '+919785425154', 'AIP'),
(3246, 'John Dsouza', '302-Fountain Apt,ElizaBeth Street, Newham', 26, 'john2346@gmail.com', '+447911123456', 'BOM'),
(4521, 'Nidhi Maroliya', '6-Matruchaya Apt,Park Road, Jammu', 31, 'nidhi785@gmail.com', '+918211954901', 'IXJ'),
(5123, 'Lara Jen', '28-Mark road,Victoria street,New York City', 31, 'jenlara4@gmail.com', '+448000751234', 'CPH'),
(7512, 'Akshay Sharma', 'Akshay Villa,Queens Street,Copenhagen', 20, 'akshay27@gmail.com', '+45886443210', 'JFK'),
(8512, 'Hafsa Iqmar', '1023-Prajwal Apt,Newark', 41, 'hafsa964@gmail.com', '6465554468', 'EWR'),
(9321, 'Sanjay Rathod', '62-Patwa Apt,Pradeep Nagar, Delhi', 36, 'sanjay78@gmail.com', '+917504681201', 'LCY');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_ID` varchar(15) NOT NULL,
  `Departure` varchar(30) DEFAULT NULL,
  `Arrival` varchar(30) DEFAULT NULL,
  `Flight_date` date DEFAULT NULL,
  `A_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_ID`, `Departure`, `Arrival`, `Flight_date`, `A_ID`) VALUES
('AA4367', '2021-03-25 12:05am', '2021-03-25 02:15am', '2021-03-25', 768),
('AI2014', '2021-01-12 08:45am', '2021-01-12 10:25pm', '2021-01-12', 738),
('BA1689', '2021-03-02 2:15am', '2021-03-02 10:00pm', '2021-03-02', 745),
('CT7812', '2021-04-04 2:15pm', '2021-04-04 8:00pm', '2021-04-04', 821),
('EY1234', '2021-02-10 05:00am', '2021-02-10 10;30pm', '2021-02-10', 750),
('LH9876', '2021-02-25 10:15am', '2021-02-25 11:00pm', '2021-02-25', 790),
('PF4521', '2020-12-25 5:00pm', '2020-12-25 10:30pm', '2020-12-25', 785),
('QR2305', '2020-12-26 12:05pm', '2020-12-27 12:25pm', '2020-12-26', 777),
('SR8798', '2021-04-26 12:15am', '2021-04-26 02:05am', '2021-04-26', 777);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `Ps_ID` int(11) NOT NULL,
  `Ps_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Contacts` varchar(10) DEFAULT NULL,
  `Flight_ID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`Ps_ID`, `Ps_Name`, `Address`, `Age`, `Sex`, `Contacts`, `Flight_ID`) VALUES
(1, 'Steve Smith', '2230 Northside,Apt 11,London', 30, 'M', '8080367290', 'AI2014'),
(2, 'Ankita Ahir', '3456 Vikas Apts,Apt 102,New Jersey', 26, 'F', '8080367280', 'QR2305'),
(3, 'Khyati Mishra', '7820 Mccallum courts,Apt 234,Washington', 30, 'F', '8082267280', 'LH9876'),
(4, 'Akhilesh Joshi', '345 Chatam courts,Apt 678,Chennai', 29, 'M', '9080369290', 'EY1234'),
(5, 'Rom Solanki', '1234 Baker Apts,Apt 208,Chandigard', 60, 'M', '9004568903', 'EY1234'),
(6, 'Lakshmi Sharma', '1110 Fir hills,Apt 90,Daman', 30, 'F', '7666190505', 'AA4367'),
(7, 'Ria Gupta', 'B-402,Aditya Apt,Hyderabad', 34, 'F', '9819414036', 'EY1234'),
(8, 'Manan Lakhani', '7720 Mccallum Blvd,Apt 77,Beijing', 45, 'M', '8124579635', 'CT7812');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `Route_ID` int(11) NOT NULL,
  `Take_Off_point` varchar(15) DEFAULT NULL,
  `Destination` varchar(15) DEFAULT NULL,
  `R_type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`Route_ID`, `Take_Off_point`, `Destination`, `R_type`) VALUES
(157306, 'NewJersey', 'Mumbai', '2Hr Break'),
(168806, 'London', 'Delhi', 'Direct'),
(178916, 'Washington', 'Jodhpur', '3Hr Break'),
(324567, 'Chennai', 'Denmark', 'Direct'),
(421523, 'Hyderabad', 'Jammu & Kashmir', 'Direct'),
(452368, 'Chandigard', 'NewYork', '3Hr Break'),
(578425, 'Beijing', 'Punjab', 'Direct'),
(894521, 'Daman', 'Delhi', 'Direct');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TS_ID` int(11) NOT NULL,
  `Booking_Date` date DEFAULT NULL,
  `Departure_Date` date DEFAULT NULL,
  `TS_Type` varchar(20) DEFAULT NULL,
  `Emp_ID` int(11) DEFAULT NULL,
  `Ps_ID` int(11) DEFAULT NULL,
  `Flight_ID` varchar(15) DEFAULT NULL,
  `Charge_Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TS_ID`, `Booking_Date`, `Departure_Date`, `TS_Type`, `Emp_ID`, `Ps_ID`, `Flight_ID`, `Charge_Amount`) VALUES
(12345678, '2021-02-21', '2021-02-22', 'Google Pay', 1234, 1, 'AI2014', 27341),
(17892455, '2021-02-05', '2021-02-08', 'Paytm', 5123, 6, 'AA4367', 8777),
(24517852, '2021-03-06', '2021-03-08', 'PhonePe', 2458, 8, 'CT7812', 9578),
(32548525, '2021-01-20', '2021-01-25', 'Credit Card', 4521, 7, 'EY1234', 4459),
(45321879, '2021-03-15', '2021-03-16', 'PhonePe', 8512, 3, 'LH9876', 27373),
(45612789, '2021-01-12', '2021-01-14', 'Credit Card', 3246, 2, 'QR2305', 34837),
(56987123, '2020-12-05', '2020-12-02', 'Paytm', 9321, 4, 'EY1234', 42176),
(75145863, '2021-04-22', '2021-04-25', 'Paytm', 7512, 5, 'EY1234', 44592);

-- --------------------------------------------------------

--
-- Table structure for table `travels_on`
--

CREATE TABLE `travels_on` (
  `Route_ID` int(11) NOT NULL,
  `Flight_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travels_on`
--

INSERT INTO `travels_on` (`Route_ID`, `Flight_ID`) VALUES
(157306, 'QR2305'),
(168806, 'AI2014'),
(178916, 'EY1234'),
(324567, 'LH9876'),
(421523, 'PF4521'),
(452368, 'BA1689'),
(578425, 'CT7812'),
(894521, 'AA4367');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airfare`
--
ALTER TABLE `airfare`
  ADD PRIMARY KEY (`Fare_ID`),
  ADD KEY `Flight_ID` (`Flight_ID`);

--
-- Indexes for table `airplane_type`
--
ALTER TABLE `airplane_type`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Air_code`),
  ADD KEY `Country_code` (`Country_code`);

--
-- Indexes for table `can_land`
--
ALTER TABLE `can_land`
  ADD PRIMARY KEY (`Air_code`,`Flight_ID`),
  ADD KEY `Flight_ID` (`Flight_ID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`Country_code`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Emp_ID`),
  ADD KEY `Air_code` (`Air_code`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`Flight_ID`),
  ADD KEY `A_ID` (`A_ID`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`Ps_ID`),
  ADD KEY `Flight_ID` (`Flight_ID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`Route_ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TS_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`),
  ADD KEY `Ps_ID` (`Ps_ID`),
  ADD KEY `Flight_ID` (`Flight_ID`),
  ADD KEY `Charge_Amount` (`Charge_Amount`);

--
-- Indexes for table `travels_on`
--
ALTER TABLE `travels_on`
  ADD PRIMARY KEY (`Route_ID`,`Flight_ID`),
  ADD KEY `Flight_ID` (`Flight_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airfare`
--
ALTER TABLE `airfare`
  ADD CONSTRAINT `airfare_ibfk_1` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`);

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`Country_code`) REFERENCES `countries` (`Country_code`);

--
-- Constraints for table `can_land`
--
ALTER TABLE `can_land`
  ADD CONSTRAINT `can_land_ibfk_1` FOREIGN KEY (`Air_code`) REFERENCES `airport` (`Air_code`),
  ADD CONSTRAINT `can_land_ibfk_2` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Air_code`) REFERENCES `airport` (`Air_code`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `airplane_type` (`A_ID`);

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_ibfk_1` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employees` (`Emp_ID`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`Ps_ID`) REFERENCES `passengers` (`Ps_ID`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`),
  ADD CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`Charge_Amount`) REFERENCES `airfare` (`Fare_ID`);

--
-- Constraints for table `travels_on`
--
ALTER TABLE `travels_on`
  ADD CONSTRAINT `travels_on_ibfk_1` FOREIGN KEY (`Route_ID`) REFERENCES `route` (`Route_ID`),
  ADD CONSTRAINT `travels_on_ibfk_2` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`Flight_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
