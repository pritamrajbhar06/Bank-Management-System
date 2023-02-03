-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 08:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pritam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `login_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`login_id`, `name`, `password`) VALUES
(101, 'pritam', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `order_name` varchar(20) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` int DEFAULT NULL,
  `contact` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `name`, `order_name`, `quantity`, `email`, `password`, `contact`) VALUES
(1, 'Pritam Rajbhar', 'Biryani', 1, 'p@gmail.com', 1234, 9326491855),
(3, 'Aashish Rajbhar', 'Chicken haandi', 3, 'a@gmail.com', 7896, 7718992763);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CUSTOMER_ID` int NOT NULL,
  `CUSTOMER_NAME` varchar(20) DEFAULT NULL,
  `CUSTOMER_ADDRESS` varchar(50) DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CUSTOMER_ID`, `CUSTOMER_NAME`, `CUSTOMER_ADDRESS`, `CONTACT`) VALUES
(1001, 'PRITAM RAJBHAR', 'BHANDUP-WEST', 9326491855),
(1002, 'AASHISH RAJBHAR', 'BHANDUP-WEST', 8369764459),
(1003, 'SUMIT SINGH', 'THANE-WEST', 8169579727),
(1004, 'PRATIK PATIL', 'MUMBAI', 9967509073),
(1005, 'KRITNESH YADAV', 'BHANDUP-WEST', 9372817518);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` int NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `MOTHERS_NAME` varchar(20) DEFAULT NULL,
  `SALARY` int DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `NAME`, `MOTHERS_NAME`, `SALARY`, `CONTACT`) VALUES
(101, 'PRITAM', 'RADHA', 26000, 9326491855),
(102, 'LAXMI', 'RADHA', 30000, 7897897897),
(103, 'AASHISH', 'RADHA', 35000, 4564564564),
(104, 'RAJENDRA', 'MAHARAJI', 50000, 1231231233),
(105, 'PRATIK', 'SWATI', 25000, 7897897898),
(107, 'VARSHIL', NULL, 35000, 123131233),
(108, 'SUMIT', 'USHA', 30000, 1234567899),
(109, 'KARTIK', 'devi', 22000, 2234567899);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ORDER_ID` int NOT NULL,
  `ORDER_NAME` varchar(50) DEFAULT NULL,
  `ORDER_DATE` date DEFAULT NULL,
  `CUSTOMER_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORDER_ID`, `ORDER_NAME`, `ORDER_DATE`, `CUSTOMER_ID`) VALUES
(1, 'COMPUTER', '2022-06-12', 1001),
(2, 'LAPTOP', '2022-03-02', 1004);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `ACCOUNT_NO` int NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `PASSWORD` int DEFAULT NULL,
  `BALANCE` int DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`ACCOUNT_NO`, `NAME`, `EMAIL_ID`, `PASSWORD`, `BALANCE`, `CONTACT`, `ADDRESS`) VALUES
(101, 'Aashish Rajbhar', 'aashishrajbhar1992@gmail.com', 7890, 3000, 8369764459, 'Mumbai-400078'),
(102, 'PRITAM RAJBHAR', 'pritamrajbhar2001@gmail.com', 1234, 5000, 9326491855, 'MUMBAI'),
(103, 'Gaurav', 'gaurav@gmail.com', 7890, 30000, 1231231231, 'Mumbai'),
(104, 'Vishwas', 'viswas@gmail.com', 1235, 25000, 12312312312, 'DOMBIVALI'),
(105, 'Laxmi Rajbhar', 'laxmi@gmail.com', 1234, 24778, 7718992763, 'Ulhasnagar');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `ID` int NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `GENDER` varchar(20) DEFAULT NULL,
  `EMAILID` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL,
  `ADDRESS` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAILID`, `password`, `CONTACT`, `ADDRESS`) VALUES
(1, 'Pritam', 'Rajbhar', NULL, 'pritamrajbhar2001@gmail.com', '1234', 9326491855, 'Mumbai'),
(2, 'Aashish', 'Rajbhar', NULL, 'aashishrajbhar1992@gmail.com', '2580', 7718992763, 'BHANDUP(W),MUMBAI-400078'),
(3, 'Pratik', 'Patil', NULL, 'prat@gmail.com', '4567', 4564564564, 'Mumbai'),
(4, 'Sumit', 'Singh', NULL, 's@gmail.com', '1234', 1231231231, 'mumbai'),
(7, 'Lami ', 'Rajbhar', NULL, 'lax@gmail.com', '8650', 9769779066, 'Bhandup(w),Mumbai-400078'),
(8, 'Rajendra ', 'Rajbhar', 'MALE', 'r@gmail.com', '4567', 8080559542, 'Mumbai-400078'),
(9, 'Radha', 'Rajbhar', 'on', 'radha@gmail.com', '1234', 7897897899, 'Mumbai'),
(10, 'Varshil', 'Rambhia', 'male', 'v@gmail.com', '1234', 4564564566, 'Navi Mumbai'),
(11, 'navita', 'choudary', 'female', 'n@gmail.com', '1234', 1234567890, 'mumbai'),
(12, 'prat', 'fwfw', 'male', 'prt@gmail.com', '1245', 9326491555, 'mumbai'),
(13, 'Maharaji', 'Rajbhar', 'female', 'maharajbhar@gmail.com', '7896', 9326491856, 'Jaunpur,Uttar Pradesh'),
(14, NULL, NULL, 'NOT SET', NULL, NULL, NULL, NULL),
(15, 'Pritam', 'Patil', 'male', 'rjhhdhi@gmail.com', '75326', 1235689562, '2dwytwc'),
(16, 'navita', 'choudary', 'NOT SET', 'navita@gmail.com', '7890', 932649182, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `SURNAME` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(20) DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `NAME`, `SURNAME`, `ADDRESS`, `CONTACT`) VALUES
(101, 'PRITAM', 'RAJBHAR', 'MUMBAI', 7718992763),
(103, 'AASHISH', 'RAJBHAR', 'Mumbai', 7897897897);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `CONTACT` (`CONTACT`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD UNIQUE KEY `CONTACT` (`CONTACT`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ORDER_ID`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`ACCOUNT_NO`),
  ADD UNIQUE KEY `CONTACT` (`CONTACT`),
  ADD UNIQUE KEY `CONTACT_2` (`CONTACT`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CONTACT` (`CONTACT`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CONTACT` (`CONTACT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CUSTOMER_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMP_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ORDER_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `ACCOUNT_NO` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
