-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 26, 2023 at 12:48 PM
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
-- Database: `travel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Full_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_No.` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Full_Name`, `Email`, `Contact_No.`, `Username`, `Password`) VALUES
('Shanilka Madushannn', 'shanilka@gmail.com', '764859081', 'shanilka', '123');

-- --------------------------------------------------------

--
-- Table structure for table `hotelbooking`
--

CREATE TABLE `hotelbooking` (
  `ID` varchar(10) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Hotel_Name` varchar(50) NOT NULL,
  `Contact_No.` varchar(20) NOT NULL,
  `Passport_ID` varchar(20) NOT NULL,
  `Arrival_Date` varchar(20) NOT NULL,
  `Day_Count` varchar(20) NOT NULL,
  `Total_Persons` varchar(20) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoteldetails`
--

CREATE TABLE `hoteldetails` (
  `ID` varchar(10) NOT NULL,
  `Hotel_Name` varchar(25) NOT NULL,
  `Hotel_Type` varchar(25) NOT NULL,
  `Location` varchar(25) NOT NULL,
  `Cost` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoteldetails`
--

INSERT INTO `hoteldetails` (`ID`, `Hotel_Name`, `Hotel_Type`, `Location`, `Cost`) VALUES
('1', 'The Kingsbury Hotel', '5 Star Hotel', 'Located in Colombo', '28000'),
('2', 'Palmstone Retreat Hotel', '4 Star Hotel', 'Located in Kitulgala', '10000'),
('3', 'Cinnamon Citadel Kandy', '4 Star Hotel', 'Located in Kandy', '15000'),
('4', 'Jetwing Light House Hotel', '5 Star Hotel', 'Located in Galle', '25000'),
('5', 'Anantara Peace Heaven Hot', '5 Star Hotel', 'Located in Tangalle', '23000'),
('6', 'Heritance Kandalama', '5 Star Hotel', 'Located in Dambulla', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `packagebooking`
--

CREATE TABLE `packagebooking` (
  `ID` varchar(20) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Package_Name` varchar(20) NOT NULL,
  `Contact_No.` varchar(25) NOT NULL,
  `Passport_ID` varchar(15) NOT NULL,
  `Arrival_Date` date NOT NULL,
  `Total_Persons` int(15) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packagedetails`
--

CREATE TABLE `packagedetails` (
  `Package_Name` varchar(50) NOT NULL,
  `Tour_Type` varchar(20) NOT NULL,
  `Visit_places` varchar(75) NOT NULL,
  `Accomadations` varchar(50) NOT NULL,
  `Transfer_Mode` varchar(50) NOT NULL,
  `Mean_Plan` varchar(50) NOT NULL,
  `Extra_Details` varchar(75) NOT NULL,
  `Cost` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packagedetails`
--

INSERT INTO `packagedetails` (`Package_Name`, `Tour_Type`, `Visit_places`, `Accomadations`, `Transfer_Mode`, `Mean_Plan`, `Extra_Details`, `Cost`) VALUES
('BRONZE', ' Four Days Tour', 'Visit Kandy, Ella, Yala National Park , Galle Fort and Mirissa', '4 Stars Hotels', 'Private Car or Van (Air Conditioned)', 'Breakfast and Dinner', 'Enjoy the BBQ Dinners, Ayurweda Spa Sessions and Yoga Sessions', '20000'),
('GOLDEN', 'Seven Days Tours', 'Visit Kandy,Nwara Eliya, Sigiriya, Yala National Park, Bentota and Sinharaj', '5 Stars Hotels', 'Private Car or Van (Air Conditioned)', 'Breakfast, Lunch and Dinner', 'Enjoy the BBQ Dinner, Yoga Sessions, Ayurweda Spa Sessions and Surfing', '30000'),
('SILVER', 'Five Days Tour', 'Visit Kandy, Nuwara Eliya, Yala National Park,  Bentota and Mirissa.', '4 Stars Hotels', 'Private Car or Van (Air Conditioned)', 'Breakfast, Lunch and Dinner', 'Enjoy a BBQ Dinners,Yoga Sessions, Ayurwedha Spa Sessions and Surfing', '25000');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `ID` varchar(10) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Passport_ID` varchar(25) NOT NULL,
  `Contact_No.` varchar(15) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclebooking`
--

CREATE TABLE `vehiclebooking` (
  `ID` varchar(10) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Passport_ID` varchar(25) NOT NULL,
  `Contact_No.` varchar(25) NOT NULL,
  `Vehicle_Type` varchar(20) NOT NULL,
  `Arrival_Date` date NOT NULL,
  `Day_Count` varchar(15) NOT NULL,
  `Need_Driver` varchar(15) DEFAULT NULL,
  `Username` varchar(25) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehiclesdetails`
--

CREATE TABLE `vehiclesdetails` (
  `Vehicle_Type` varchar(20) NOT NULL,
  `Seating_Capacity` varchar(10) NOT NULL,
  `Fuel_Type` varchar(20) NOT NULL,
  `Rate_Per_Day` varchar(15) NOT NULL,
  `Driver's_Amount` varchar(20) DEFAULT NULL,
  `Extra` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehiclesdetails`
--

INSERT INTO `vehiclesdetails` (`Vehicle_Type`, `Seating_Capacity`, `Fuel_Type`, `Rate_Per_Day`, `Driver's_Amount`, `Extra`) VALUES
('BUSES', '30', 'Petrol  / Diesel', '40000', '8000', 'Air Conditioned'),
('CARS', '5', 'Petrol  / Diesel', '10000', '4000', 'Air Conditioned'),
('MOTORCYCLES', '3', 'Petrol', '5000', '', ''),
('VANS', '10', 'Petrol  / Diesel', '15000', '5000', 'Air Conditioned');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `hotelbooking`
--
ALTER TABLE `hotelbooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hoteldetails`
--
ALTER TABLE `hoteldetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `packagebooking`
--
ALTER TABLE `packagebooking`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `packagedetails`
--
ALTER TABLE `packagedetails`
  ADD PRIMARY KEY (`Package_Name`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `vehiclebooking`
--
ALTER TABLE `vehiclebooking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehiclesdetails`
--
ALTER TABLE `vehiclesdetails`
  ADD PRIMARY KEY (`Vehicle_Type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
