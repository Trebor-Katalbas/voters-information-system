-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 08:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_list`
--

CREATE TABLE `city_list` (
  `id` int(30) NOT NULL,
  `state_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_list`
--

INSERT INTO `city_list` (`id`, `state_id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 2, 'Bacolod', 1, 0, '2022-04-25 10:04:00', '2022-04-25 10:04:00'),
(2, 2, 'Talisay', 1, 0, '2022-04-25 10:04:18', '2022-04-25 10:04:18'),
(3, 2, 'Silay', 1, 0, '2022-04-25 10:04:31', '2022-04-25 10:04:31'),
(4, 2, 'Victorias', 1, 0, '2022-04-25 10:04:54', '2022-04-25 10:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `location_list`
--

CREATE TABLE `location_list` (
  `id` int(30) NOT NULL,
  `city_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_list`
--

INSERT INTO `location_list` (`id`, `city_id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(2, 3, 'Don. E Elementary School', 1, 0, '2022-04-25 11:10:44', '2022-04-25 11:10:44'),
(3, 3, 'Silay North Elementary School', 1, 0, '2022-04-25 11:11:56', '2022-04-25 11:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `precinct_list`
--

CREATE TABLE `precinct_list` (
  `id` int(30) NOT NULL,
  `code` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `precinct_list`
--

INSERT INTO `precinct_list` (`id`, `code`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '0001 A', 1, 0, '2022-04-25 11:25:46', '2022-04-25 11:25:46'),
(2, '0002 B', 1, 0, '2022-04-25 11:25:54', '2022-04-25 11:25:54'),
(3, '0001 B', 1, 0, '2022-04-25 11:28:13', '2022-04-25 11:28:13'),
(4, '0002 A', 1, 0, '2022-04-25 11:28:22', '2022-04-25 11:28:22'),
(5, '0003 A', 1, 0, '2022-04-25 11:28:31', '2022-04-25 11:28:31'),
(6, '0003 B', 1, 0, '2022-04-25 11:28:44', '2022-04-25 11:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Metro Manila', 1, 0, '2022-04-25 09:40:37', '2022-04-25 09:40:37'),
(2, 'Negros Occidental', 1, 0, '2022-04-25 09:41:01', '2022-04-25 09:41:01'),
(3, 'Negros Oriental', 1, 0, '2022-04-25 09:41:14', '2022-04-25 09:41:14'),
(4, 'Batangas', 1, 0, '2022-04-25 09:42:10', '2022-04-25 09:42:10'),
(5, 'Cagayan', 1, 0, '2022-04-25 09:42:27', '2022-04-25 09:42:27'),
(6, 'Capiz', 1, 0, '2022-04-25 09:42:47', '2022-04-25 09:42:47'),
(7, 'Cebu', 1, 0, '2022-04-25 09:43:07', '2022-04-25 09:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Voter&apos;s Polling Information System'),
(6, 'short_name', 'VPIS - PHP'),
(11, 'logo', 'uploads/logo.png?v=1650847401'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1650847866');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(3, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', 'uploads/avatars/3.png?v=1650527149', NULL, 2, '2022-04-21 15:45:49', '2022-04-21 15:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `voter_list`
--

CREATE TABLE `voter_list` (
  `id` int(30) NOT NULL,
  `precinct_id` int(30) DEFAULT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` text NOT NULL,
  `city_id` int(30) NOT NULL,
  `date_registered` date NOT NULL,
  `image_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter_list`
--

INSERT INTO `voter_list` (`id`, `precinct_id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `address`, `city_id`, `date_registered`, `image_path`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'Mark', 'D', 'Cooper', 'Male', '09123456789', 'mcooper@gmail.com', 'Sitio Diri, Brgy, Didto', 3, '2022-03-03', 'uploads/voters/1.png?v=1650860563', 0, '2022-04-25 12:22:43', '2022-04-25 13:03:15'),
(2, 1, 'Samantha', 'C', 'Miller', 'Female', '09456987123', 'sam23@gmail.com', 'Sample Address, Brgy, Sample', 1, '0014-06-23', 'uploads/voters/2.png?v=1650862327', 1, '2022-04-25 12:52:07', '2022-04-25 12:52:07'),
(3, 5, 'Mike', 'C', 'Williams', 'Male', '09654789456', 'mwilliams@sample.com', 'Sample Address', 2, '2019-10-23', '', 1, '2022-04-25 14:02:57', '2022-04-25 14:02:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city_list`
--
ALTER TABLE `city_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `location_list`
--
ALTER TABLE `location_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `precinct_list`
--
ALTER TABLE `precinct_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter_list`
--
ALTER TABLE `voter_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `precinct_id` (`precinct_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city_list`
--
ALTER TABLE `city_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `location_list`
--
ALTER TABLE `location_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `precinct_list`
--
ALTER TABLE `precinct_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voter_list`
--
ALTER TABLE `voter_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city_list`
--
ALTER TABLE `city_list`
  ADD CONSTRAINT `state_id_fk_cl` FOREIGN KEY (`state_id`) REFERENCES `state_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `location_list`
--
ALTER TABLE `location_list`
  ADD CONSTRAINT `city_id_fk_ll` FOREIGN KEY (`city_id`) REFERENCES `city_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `voter_list`
--
ALTER TABLE `voter_list`
  ADD CONSTRAINT `city_id_fk_vl` FOREIGN KEY (`city_id`) REFERENCES `city_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `precinct_id_fk_vl` FOREIGN KEY (`precinct_id`) REFERENCES `precinct_list` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
