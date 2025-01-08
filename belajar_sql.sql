-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 11:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id_customers` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id_customers`, `name`, `email`, `phone`, `address`) VALUES
(1, 'John Doe', 'john.doe@email.com', '1234567890', '123 Main St'),
(2, 'Jane Smith', 'jane.smith@email.com', '2345678901', '456 Oak Ave'),
(3, 'Mark Johnson', 'mark.johnson@email.com', '3456789012', '789 Pine Rd'),
(4, 'Emily Davis', 'emily.davis@email.com', '4567890123', '101 Maple St'),
(5, 'Michael Brown', 'michael.brown@email.com', '5678901234', '202 Birch Ln'),
(6, 'Linda Green', 'linda.green@email.com', '6789012345', '303 Cedar Dr'),
(7, 'James White', 'james.white@email.com', '7890123456', '404 Elm St'),
(8, 'Patricia Black', 'patricia.black@email.com', '8901234567', '505 Willow Way'),
(9, 'David Harris', 'david.harris@email.com', '9012345678', '606 Pine Ridge'),
(10, 'Susan Clark', 'susan.clark@email.com', '0123456789', '707 Oakwood Blvd');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `position`, `salary`) VALUES
(1, 'Aceru', 'manager', 200000.00),
(2, 'arisu', 'front-end', 300000.00),
(3, 'mikasa', 'web dev', 300000.00),
(4, 'usagi', 'admin', 200000.00),
(5, 'eren', 'back-end', 500000.00),
(6, 'John Doe', 'front-end', 55000.00),
(7, 'Jane Smith', 'front-end', 60000.00),
(8, 'Alice Brown', 'front-endr', 58000.00),
(16, 'Alice Johnson', 'Admin', 45000.00),
(17, 'Bob Roberts', 'Admin', 46000.00),
(18, 'Charlie Smith', 'Admin', 47000.00),
(19, 'Diana Brown', 'Admin', 48000.00),
(20, 'Ethan White', 'Admin', 49000.00),
(21, 'Fiona Green', 'Web Developer', 55000.00),
(22, 'George Adams', 'Web Developer', 56000.00),
(23, 'Hannah Baker', 'Web Developer', 57000.00),
(24, 'Ian Clark', 'Web Developer', 58000.00),
(25, 'Jessica Davis', 'Web Developer', 59000.00),
(26, 'Kevin Evans', 'Staff', 35000.00),
(27, 'Luna Foster', 'Staff', 36000.00),
(28, 'Michael Gray', 'Staff', 37000.00),
(29, 'Natalie Harris', 'Staff', 38000.00),
(30, 'Oliver King', 'Staff', 39000.00),
(31, 'Paula Lee', 'Admin', 46000.00),
(33, 'Riley Nelson', 'Staff', 37000.00),
(34, 'Sophia Ortiz', 'Admin', 48000.00),
(35, 'Tyler Peterson', 'Web Developer', 59000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `id_customers` int(11) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `id_customers`, `product`, `order_date`, `total_amount`) VALUES
(1, 1, 'Laptop', '2025-01-01', 1000.50),
(2, 2, 'Smartphone', '2025-01-02', 750.75),
(3, 3, 'Headphones', '2025-01-03', 150.20),
(4, 4, 'Keyboard', '2025-01-04', 100.75),
(5, 5, 'Mouse', '2025-01-05', 50.60),
(6, 6, 'Monitor', '2025-01-06', 300.30),
(7, 7, 'Tablet', '2025-01-07', 450.00),
(8, 8, 'Printer', '2025-01-08', 250.00),
(9, 9, 'Webcam', '2025-01-09', 80.00),
(10, 10, 'Speakers', '2025-01-10', 130.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customers`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `id_customers` (`id_customers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_customers`) REFERENCES `customers` (`id_customers`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
