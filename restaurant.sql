-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 02:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `Name`, `PhoneNumber`, `Email`, `Address`) VALUES
(1, 'Maryam', 123456789, 'maryam@gmail.com', 'Gulshan-e-Iqbal'),
(2, 'Zehra', 194568649, 'zehra@gmail.com', 'Gulshan-e-Hijri'),
(3, 'Umaima', 178789949, 'umaima@gmail.com', '13-D Gulshan'),
(4, 'Samiya', 197767569, 'samiya@gmail.com', 'Yasir Arcade'),
(5, 'Ammar', 78679899, 'ammar@gmail.com', 'North Nazimabad'),
(6, 'Abdur Rahman', 89877756, 'abdurrahman@gmail.com', 'Federal B-Area'),
(7, 'Sara', 76756649, 'sara@gmail.com', 'Gulshan-e-Hadid'),
(8, 'Huda', 5455686, 'huda@gmail.com', 'NIPA Chowrangi'),
(9, 'Yahyah', 19487677, 'yahyah@gmail.com', 'Gulshan-e-Maymar'),
(10, 'Abdullah', 255668649, 'abdullah@gmail.com', 'Defence Phase-7');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `PhoneNumber` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `Name`, `Role`, `PhoneNumber`, `Email`, `Salary`) VALUES
(1, 'Talha', 'Manager', 98765878, 'talha@gmail.com', 30000.00),
(2, 'Bilal', 'Chef', 9876453, 'bilal@gmail.com', 50000.00),
(3, 'Alina', 'Chef', 6867658, 'alina@gmail.com', 50000.00),
(4, 'Daniyal', 'Waiter', 86785878, 'daniyal@gmail.com', 20000.00),
(5, 'Noman', 'Waiter', 35765898, 'noman@gmail.com', 20000.00),
(6, 'Mirha', 'Chef', 68765878, 'mirha@gmail.com', 50000.00),
(7, 'Zain', 'Swiper', 2476589, 'zain@gmail.com', 10000.00),
(8, 'Yosuf', 'Swiper', 67765878, 'yosuf@gmail.com', 10000.00),
(9, 'Adil', 'Chef', 767658778, 'adil@gmail.com', 50000.00),
(10, 'Hadiya', 'Chef', 48765878, 'hadiya@gmail.com', 50000.00);

-- --------------------------------------------------------

--
-- Table structure for table `menuitems`
--

CREATE TABLE `menuitems` (
  `MenuItemID` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Description` varchar(30) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menuitems`
--

INSERT INTO `menuitems` (`MenuItemID`, `ItemName`, `Description`, `Price`) VALUES
(1, 'Margherita Pizza', 'Cheese pizza with basil', 500),
(2, 'Pepperoni Pizza', 'Pepperoni with mozzarella', 600),
(3, 'BBQ Chicken Pizza', 'Chicken with BBQ sauce', 700),
(4, 'Veggie Supreme', 'Mixed vegetables and olives', 550),
(5, 'Cheese Burger', 'Beef patty with cheddar', 450),
(6, 'Grilled Chicken Sand', 'Chicken with mayo and lettuce', 400),
(7, 'Caesar Salad', 'Romaine lettuce and dressing', 300),
(8, 'Spaghetti Bolognese', 'Spaghetti with meat sauce', 650),
(9, 'Fettuccine Alfredo', 'Creamy Alfredo pasta', 600),
(10, 'Chocolate Brownie', 'Rich chocolate brownie', 250);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `MenuItemID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderItemID`, `Quantity`, `OrderID`, `MenuItemID`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 3),
(3, 3, 2, 2),
(4, 1, 2, 4),
(5, 2, 3, 5),
(6, 1, 3, 6),
(7, 4, 4, 7),
(8, 1, 5, 8),
(9, 2, 6, 9),
(10, 1, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `TotalAmount`, `CustomerID`, `EmployeeID`) VALUES
(1, '2024-10-15 00:00:00', 1500, 1, 2),
(2, '2024-10-16 00:00:00', 1200, 2, 3),
(3, '2024-10-17 00:00:00', 1800, 3, 1),
(4, '2024-10-18 00:00:00', 2200, 4, 2),
(5, '2024-10-19 00:00:00', 950, 5, 3),
(6, '2024-10-20 00:00:00', 1750, 6, 1),
(7, '2024-10-21 00:00:00', 1300, 7, 2),
(8, '2024-10-22 00:00:00', 2500, 8, 3),
(9, '2024-10-23 00:00:00', 1450, 9, 1),
(10, '2024-10-24 00:00:00', 2000, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `ReservationID` int(11) NOT NULL,
  `ReservationDate` datetime NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `TableID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`ReservationID`, `ReservationDate`, `CustomerID`, `TableID`) VALUES
(1, '2024-10-15 12:00:00', 1, 1),
(2, '2024-10-16 18:30:00', 2, 3),
(3, '2024-10-17 19:00:00', 3, 5),
(4, '2024-10-18 20:00:00', 4, 2),
(5, '2024-10-19 12:30:00', 5, 4),
(6, '2024-10-20 13:00:00', 6, 6),
(7, '2024-10-21 19:30:00', 7, 7),
(8, '2024-10-22 18:00:00', 8, 8),
(9, '2024-10-23 20:30:00', 9, 9),
(10, '2024-10-24 12:45:00', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `restauranttables`
--

CREATE TABLE `restauranttables` (
  `TableID` int(11) NOT NULL,
  `TableNumber` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restauranttables`
--

INSERT INTO `restauranttables` (`TableID`, `TableNumber`, `Capacity`) VALUES
(1, 1, 4),
(2, 2, 2),
(3, 3, 6),
(4, 4, 4),
(5, 5, 8),
(6, 6, 2),
(7, 7, 4),
(8, 8, 6),
(9, 9, 2),
(10, 10, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`MenuItemID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `MenuItemID` (`MenuItemID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`ReservationID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `TableID` (`TableID`);

--
-- Indexes for table `restauranttables`
--
ALTER TABLE `restauranttables`
  ADD PRIMARY KEY (`TableID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menuitems`
--
ALTER TABLE `menuitems`
  MODIFY `MenuItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `ReservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `restauranttables`
--
ALTER TABLE `restauranttables`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`MenuItemID`) REFERENCES `menuitems` (`MenuItemID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`TableID`) REFERENCES `restauranttables` (`TableID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
