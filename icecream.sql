-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2017 at 01:30 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `name` varchar(20) NOT NULL,
  `flavor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`name`, `flavor`) VALUES
('gytt', 'zxcv'),
('null', 'mnbv'),
('tyyryt', 'asdf'),
('hthtr', 'asdf'),
('hthtr', 'qwerty'),
('ghtgr', 'zxcv'),
('ghtgr', 'qwerty'),
('grgege', 'vanilla'),
('grgege', 'tiramisu'),
('jtyjt', 'zxcv'),
('tretert', 'zxcv'),
('tretert', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `flavors`
--

CREATE TABLE `flavors` (
  `flavor` varchar(20) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flavors`
--

INSERT INTO `flavors` (`flavor`, `price`) VALUES
('vanilla', 20),
('tiramisu', 50),
('qwerty', 12),
('asdf', 23),
('zxcv', 34),
('poiu', 45),
('lkjh', 56),
('mnbv', 67),
('mmnnbbvv', 100),
('were', 123);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` varchar(100) NOT NULL,
  `flavor` varchar(20) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `flavor`, `price`) VALUES
('c507f74a655be8ececee9f44b34f', 'vanilla', 20),
('c507f74a655be8ececee9f44b34f', 'vanilla', 20),
('c507f74a655be8ececee9f44b34f', 'vanilla', 20),
('c539d74f395c83a4ea24d65eb3c8', 'vanilla', 20),
('c539d74f395c83a4ea24d65eb3c8', 'tiramisu', 50),
('c54c6cb34df6431d009b6f7091f8', 'tiramisu', 50),
('c54c6cb34df6431d009b6f7091f8', 'tiramisu', 50),
('c554ab5e258bcf01e212e62d19e7', 'were', 123),
('c55689d4782dcdb966fc39b4b8e0', 'vanilla', 20),
('c559d664f897e7a52a59df2623dc', 'mmnnbbvv', 100),
('c559d664f897e7a52a59df2623dc', 'mmnnbbvv', 100),
('c55b59c5ba6e3e2cbe9f253f7a60', 'vanilla', 20),
('c55b59c5ba6e3e2cbe9f253f7a60', 'mmnnbbvv', 100),
('c5ac177fd96c4faf8cbda7c36ab7', 'zxcv', 34),
('c5ae2d759ca09f7e5726e7cc7ee6', 'vanilla', 20),
('c5b9f276b4164308da2595be616a', 'mmnnbbvv', 100),
('c5bb8c4c56f79052a3d20cee3eb2', 'mmnnbbvv', 100),
('c5bb8c4c56f79052a3d20cee3eb2', 'mnbv', 67),
('c5d05078ac1e10d444908630304d', 'qwerty', 12),
('c5dbf6f8b8088befd135354b4411', 'vanilla', 20),
('c6303363c75d8ed86b42734997ac', 'tiramisu', 50),
('c6303363c75d8ed86b42734997ac', 'qwerty', 12),
('c6303363c75d8ed86b42734997ac', 'tiramisu', 50),
('c6303363c75d8ed86b42734997ac', 'poiu', 45),
('c6303363c75d8ed86b42734997ac', 'vanilla', 20),
('c6303363c75d8ed86b42734997ac', 'lkjh', 56),
('c6303363c75d8ed86b42734997ac', 'were', 123),
('c6aef88f9950b62857654a586d3b', 'vanilla', 20),
('c6aef88f9950b62857654a586d3b', 'tiramisu', 50),
('c6aef88f9950b62857654a586d3b', 'poiu', 45),
('c6d2d301dfc28209bf042c7a2d34', 'qwerty', 12),
('c6d2d301dfc28209bf042c7a2d34', 'mnbv', 67),
('c6f7697a76136ca03b02852af19a', 'vanilla', 20),
('c6f7697a76136ca03b02852af19a', 'mnbv', 67),
('c7887a2ab06d0c1af3d85f54ca43', 'tiramisu', 50),
('c7887a2ab06d0c1af3d85f54ca43', 'poiu', 45),
('c982479b460339af61ce087a1b2c', 'zxcv', 34),
('c982479b460339af61ce087a1b2c', 'asdf', 23);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
