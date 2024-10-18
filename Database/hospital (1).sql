-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 09:41 PM
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
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', 'adminlogin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pName` varchar(30) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `appNum` int(10) NOT NULL,
  `aDate` date NOT NULL,
  `booking_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `email`, `pName`, `nic`, `doctor`, `phoneNumber`, `appNum`, `aDate`, `booking_time`) VALUES
(4, 'hansi@gmail.com', 'Hansi', '972341233V', 'Dhanushka', 718873423, 2, '2024-10-16', '2024-10-17 09:11:50'),
(6, 'kasun@gmail.com', 'kasun', '863456789V', 'Dhanushka', 719886557, 1, '2024-10-15', '2024-10-17 09:11:50'),
(7, 'kasunperera@gmail.com', 'K.Roopasinghe', '993272312V', 'Teshan Kaluarachchi', 773445656, 5, '2024-08-18', '2024-10-17 09:11:50'),
(8, 'kaveesha@gmail.com', 'Kaveesha', '198834562321', 'Kasun Kalhara', 719886557, 2, '2024-10-17', '2024-10-17 09:11:50'),
(11, 'nadeeshani@gmail.com', 'Nadeeshani', '199723423412', 'Dhanushka', 764567234, 1, '2024-10-16', '2024-10-17 09:11:50'),
(12, 'natasha@gmail.com', 'Natasha', '199023451234', 'Dhanushka', 719886557, 3, '2024-10-16', '2024-10-17 09:11:50'),
(13, 'naveesha@gmail.com', 'Naveesha', '863456789V', 'Dhanushka', 764567234, 3, '2024-10-17', '2024-10-17 09:11:50'),
(14, 'nehara@gmail.com', 'Nehara', '198834562321', 'Dhanushka', 756783344, 1, '2024-10-17', '2024-10-17 09:11:50'),
(15, 'nelum@gmail.com', 'Nelum', '863456789V', 'Kasun Kalhara', 764567234, 1, '2024-10-17', '2024-10-17 09:11:50'),
(16, 'pasindu@gmail.com', 'Pasindu', '198834562321', 'Dhanushka', 756783344, 2, '2024-10-17', '2024-10-17 09:11:50'),
(17, 'rohan@gmail.com', 'Rohan', '863456789V', 'Prasad Perera', 719886557, 1, '2024-10-15', '2024-10-17 09:11:50'),
(18, 'shehan@gmail.com', 'Shehan', '856782345V', 'Dhanushka', 764567234, 2, '2024-10-15', '2024-10-17 09:11:50'),
(19, 'tharaka@gmail.com', 'Tharaka', '199982033344', 'Kasun Kalhara', 784562322, 2, '2024-10-15', '2024-10-17 09:11:50'),
(20, 'thilina@gmail.com', 'Thilina', '863456789V', 'Kasun Kalhara', 2147483647, 1, '2024-10-16', '2024-10-17 09:11:50'),
(24, 'akilashashimantha84@gmail.com', 'Akila Shashimantha', '200107101016', 'Dhanushka', 719886557, 1, '2024-10-18', '2024-10-17 13:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text_content` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_id`, `title`, `text_content`, `image_path`, `last_updated`) VALUES
(0, 'Breast Cancer in Men: Why Awareness Matters for Everyone', 'When most people think of breast cancer, they often assume it’s a disease that exclusively affects women. However, men can—and do—get breast cancer too. While male breast cancer is rare, accounting for less than 1% of all breast cancer cases globally (American Cancer Society, 2024), the lack of awareness and the stigma associated with it can lead to delays in diagnosis and treatment. In fact, the incidence of male breast cancer is approximately 1 in 833 men (National Breast Cancer Foundation, 2023). Understanding that breast cancer doesn’t discriminate by gender is crucial for early detection and effective treatment', 'images/d4.jpg', '2024-10-16 16:52:23'),
(1, 'මාරාන්තික ඩෙංගු රෝගයෙන් ආරක්ෂා වෙන්න', 'ඩෙංගු උණ මාරාන්තික රෝගයකි.අපේ නොසැලකිලිමත් බව සහ තවත් කාරණා නිසා සෑම වසරකම ඩෙංගු රෝගයෙන් මිය යන සංඛ්‍යාව විශාල අගයක් ගනී. පවතින අධික වර්ෂාව නිසා ඩෙංගු සීඝ්‍ර ව්‍යාප්තියක් ඇති වීමට ඉඩ ඇති නිසා අවදානමට පෙර සූදානම් වීම වැදගත් ය.\r\n\r\nඩෙංගු අසාදනය නිසා ඇතිවන රෝග තත්වයන් ඉතා විශාල පරාසයක් තුල විහිදෙන අතර සමහර පුද්ගලයන් කිසිම රෝග ලක්ෂණයක් නොපෙන්නන අතර තවත් කොටසකට රෝග ලක්ෂණ ඇතිවේ. රෝග ලක්ෂණ සහිත අයගෙන් වැඩි ප්‍රමාණයකට සාමාන්‍ය වයිරස් උණ තත්වය, ඩෙංගු උණ හෝ අසාමාන්‍ය රෝග ලක්ෂණ සහිත ඩෙංගු රක්තපාත උණ තත්වයක් ඇතිවිය හැක. ඩෙංගු රෝගය නිසා වැඩි වශයෙන් දක්නට ලැබෙන්නේ ඩෙංගු උණ හා ඩෙංගු රක්තපාත තත්වය වන අතර අසාමාන්‍ය රෝග ලක්ෂණ සහිත ඩෙංගු රෝගී තත්වයන් ඉතා කලාතුරකින් ඇතිවේ', 'images/d3.jpg', '2024-10-16 16:38:10'),
(2, 'Mental Health Matters: How to Foster Emotional Well-Being in Kids', 'Mental health is as important to a child’s development as physical health. While ensuring that children have a nutritious diet and regular exercise is often a priority, fostering emotional well-being can sometimes be overlooked. Given that one in six children aged 6–17 years in the United States experience a mental health disorder each year, promoting a strong foundation for emotional health is essential. This article explores strategies that parents, caregivers, and educators can employ to support mental health and resilience in children, helping them navigate the challenges of growing up in an ever-evolving world.', 'images/d2.jpg', '2024-10-16 16:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `dName` varchar(20) NOT NULL,
  `dEmail` varchar(100) NOT NULL,
  `special_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `nic`, `dName`, `dEmail`, `special_id`) VALUES
(2, '200010346567', 'Dhanushka', 'dhanushka @gmail.com', 1),
(3, '200010356545', 'Kalana', 'kalana@gmail.com', 1),
(4, '19883456232V', 'Kasun Kalhara', 'kalhara@gmail.com', 2),
(6, '198734582322', 'Aruna de Silva', 'aruna@gmail.com', 4),
(7, '856782345V', 'Kaluwitharana', 'kaluwitharana@gmail.com', 3),
(8, '863456789V', 'Thilina kaluthotage', 'thilina@gmail.com', 8),
(9, '856782345V', 'Kaluwitharana', 'kaluwitharana@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `report_id` varchar(20) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_reports`
--

INSERT INTO `lab_reports` (`report_id`, `nic`, `file_path`, `uploaded_at`) VALUES
('lbN_5cdd4b2e44875', '856782345V', 'uploads/lbN_5cdd4b2e44875.pdf', '2024-10-15 16:21:04'),
('lbN_ff1844e3c1364', '200107701779', 'uploads/lbN_ff1844e3c1364.pdf', '2024-10-17 19:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pName` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `pEmail` varchar(100) NOT NULL,
  `pPhoneNumber` int(12) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pName`, `nic`, `pEmail`, `pPhoneNumber`, `gender`, `date`) VALUES
('Prasho', '200107701779', 'prasho@gmail.com', 775670020, 'male', '2024-10-17 18:30:00'),
('Ayodya', '200776156779', 'Ayodya@gmail.com', 765549920, 'female', '2024-10-18 18:30:00'),
('Gihan ', '200978725669', 'Gihan@gmail.com', 775378620, 'male', '2024-10-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` enum('Credit/Debit Card','Insurance','Bank Transfer','PayPal') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `status` enum('Pending','Completed','Failed') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `payment_method`, `amount`, `transaction_id`, `status`, `created_at`) VALUES
(1, 1, 'Credit/Debit Card', 1500.00, 'txn_670cfdee52df8', 'Completed', '2024-10-14 11:18:06'),
(2, 1, 'Credit/Debit Card', 2000.00, 'txn_670d411b082b6', 'Completed', '2024-10-14 16:04:43'),
(3, 2, 'Credit/Debit Card', 2000.00, 'txn_670d6db5242d5', 'Completed', '2024-10-14 19:15:01'),
(4, 2, 'Credit/Debit Card', 2000.00, 'txn_670d6e4bcd94b', 'Completed', '2024-10-14 19:17:31'),
(5, 2, 'Credit/Debit Card', 1500.00, 'txn_670d6f6c978e7', 'Completed', '2024-10-14 19:22:20'),
(6, 2, 'Credit/Debit Card', 1500.00, 'txn_670d712d89d49', 'Completed', '2024-10-14 19:29:49'),
(7, 3, 'Credit/Debit Card', 1200.00, 'txn_670d730ab90b3', 'Completed', '2024-10-14 19:37:46'),
(8, 3, 'Credit/Debit Card', 1200.00, 'txn_670d7558d5348', 'Completed', '2024-10-14 19:47:36'),
(9, 3, 'Credit/Debit Card', 1200.00, 'txn_670d76139c83e', 'Completed', '2024-10-14 19:50:43'),
(10, 4, 'Credit/Debit Card', 1500.00, 'txn_670d76a64a78a', 'Completed', '2024-10-14 19:53:10'),
(11, 2, 'Credit/Debit Card', 1500.00, 'txn_670e52cdac1ca', 'Completed', '2024-10-15 11:32:29'),
(12, 1, 'Credit/Debit Card', 2000.00, 'txn_670e54febb840', 'Completed', '2024-10-15 11:41:50'),
(13, 5, 'Credit/Debit Card', 1500.00, 'txn_670e5ab984b2f', 'Completed', '2024-10-15 12:06:17'),
(14, 6, 'Credit/Debit Card', 1500.00, 'txn_670e774d24345', 'Completed', '2024-10-15 14:08:13'),
(15, 6, 'Credit/Debit Card', 1500.00, 'txn_670e7805d5025', 'Completed', '2024-10-15 14:11:17'),
(16, 6, 'Credit/Debit Card', 1500.00, 'txn_670e7962f0de2', 'Completed', '2024-10-15 14:17:07'),
(17, 6, 'Credit/Debit Card', 1500.00, 'txn_670e807f6ef1e', 'Completed', '2024-10-15 14:47:27'),
(18, 6, 'Credit/Debit Card', 1500.00, 'txn_670e808736be9', 'Completed', '2024-10-15 14:47:35'),
(19, 6, 'Credit/Debit Card', 1200.00, 'txn_670e80b829312', 'Completed', '2024-10-15 14:48:24'),
(20, 7, 'Credit/Debit Card', 2000.00, 'txn_670ea433ada46', 'Completed', '2024-10-15 17:19:47'),
(21, 7, 'Credit/Debit Card', 2000.00, 'txn_670ea564807f2', 'Completed', '2024-10-15 17:24:52'),
(22, 1, 'Credit/Debit Card', 2000.00, 'txn_670f5657f1ccf', 'Completed', '2024-10-16 05:59:51'),
(23, 1, 'Credit/Debit Card', 2000.00, 'txn_670f5822b85f7', 'Completed', '2024-10-16 06:07:30'),
(24, 8, 'Credit/Debit Card', 1200.00, 'txn_670f5a6e3b107', 'Completed', '2024-10-16 06:17:18'),
(25, 11, 'Credit/Debit Card', 2000.00, 'txn_670f8b74ac7f2', 'Completed', '2024-10-16 09:46:28'),
(26, 12, 'Credit/Debit Card', 2000.00, 'txn_670fb186ddcfd', 'Completed', '2024-10-16 12:28:54'),
(27, 12, 'Credit/Debit Card', 2000.00, 'txn_670fb1b5301af', 'Completed', '2024-10-16 12:29:41'),
(28, 12, 'Credit/Debit Card', 2000.00, 'txn_670fb3040d10f', 'Completed', '2024-10-16 12:35:16'),
(29, 13, 'Credit/Debit Card', 2000.00, 'txn_6710803eb615b', 'Completed', '2024-10-17 03:10:54'),
(30, 1, 'Credit/Debit Card', 2000.00, 'txn_671083cda1d7c', 'Completed', '2024-10-17 03:26:05'),
(31, 14, 'Credit/Debit Card', 2000.00, 'txn_6710855388807', 'Completed', '2024-10-17 03:32:35'),
(32, 15, 'Credit/Debit Card', 2000.00, 'txn_671087874934d', 'Completed', '2024-10-17 03:41:59'),
(46, 24, 'Credit/Debit Card', 2000.00, 'txn_671116de6f9bf', 'Completed', '2024-10-17 13:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(10) NOT NULL,
  `specialization` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`id`, `specialization`) VALUES
(1, 'Aurvedic'),
(2, 'CARDIOLOGIST'),
(3, 'CHEST PHYSICIAN'),
(4, 'E N T SURGEON'),
(5, 'EYE SURGEON'),
(6, 'MICROBIOLOGIST'),
(7, 'NEURO SURGEON'),
(8, 'PHYSICIAN'),
(9, 'PSYCHIATRIST'),
(10, 'SURGEON'),
(11, 'COUNSELOR'),
(12, 'ENDOCRINOLOGIST'),
(13, 'PHYSICIAN'),
(14, 'PLASTIC & COSMETIC SURGEON');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Shehan', 'shehan@gmail.com', '$2y$10$QlfsbgNhfdSLPgXO4lCMEOi5Qnt1wAaR5HpyAk9sg8tg7hfFfdjbq', '2024-10-14 11:16:13'),
(2, 'kasun', 'kasun@gmail.com', '$2y$10$XxgDSdi5aJGw2u3ANZNczep4QnGOczU0pJclygpasP/jRJgxLvqUe', '2024-10-14 19:14:14'),
(3, 'nehan', 'nehan@gmail.com', '$2y$10$5wBdbrRiSe9rLj5S0qDKQONBIrxvr1ulz3FB7pcTYdrWSddCt/5Gm', '2024-10-14 19:36:59'),
(4, 'rohan', 'rohan@gmail.com', '$2y$10$FC4Q36RE3WbdqpL1fnajTO9ybvZXNg/zsTP/cgFVSWntDXPHMfRGK', '2024-10-14 19:52:03'),
(5, 'deshan', 'deshan@gmail.com', '$2y$10$piqOlSrms/sarnhFbhRBfO9FgYWGcLuBjicfogcF.Nqrn93yMygO6', '2024-10-15 12:05:48'),
(6, 'keshan', 'keshan@gmail.com', '$2y$10$HTzLEyrdSU7jFkV/P9Z9MetXnCHcGdHFNtk/Uo.rXPeJzAO4Bsy9m', '2024-10-15 14:07:39'),
(7, 'tharaka', 'tharaka@gmail.com', '$2y$10$981GDjph8VHCO4ithcfKCeFRCh3bxRDKvB1uev8pTdN/kkgR73bCG', '2024-10-15 17:19:03'),
(8, 'akila', 'akila@gmail.com', '$2y$10$R2seGXBx2I5R2UQmwj8FVuQ1AWVjpPy2IcfTZTKvwpHIA8xqXQ27W', '2024-10-15 18:13:31'),
(9, 'Natasha', 'natasha@gmail.com', '$2y$10$rRGhOAqoxozEUUu61TM5QOpvN0jFRXAbdFFlM1.bnUwZIazuRjhAO', '2024-10-16 06:13:15'),
(10, 'Natasha', 'natasha1@gmail.com', '$2y$10$p/KHh9fGmhf8rnzJRgymPey5HY.OmssnUWcdhhwy8jZsYJtuT6Eea', '2024-10-16 06:14:47'),
(11, 'Sahan', 'sahan@gmail.com', '$2y$10$.RJxbWS56lG3gLeKHHo7KuqoPniG31LpavS24G/IqN5SB1uS1hYXC', '2024-10-16 09:25:54'),
(12, 'Prabasha', 'prabasha@gmail.com', '$2y$10$w3swaTWNpYUQ3yS4ZCXGHOnHJqpqIiw4XIOI98wbmkl7DgYmKyz1y', '2024-10-16 12:22:45'),
(13, 'Kaveesha', 'kaveesha@gmail.com', '$2y$10$5UYN6GkIZmJyZpkvvIqFHO4GyokaUTGKNm7SzMluCSeJnMVG6tP4S', '2024-10-17 03:10:09'),
(14, 'Pasindu', 'pasindu@gmail.com', '$2y$10$/cHDfERsF84JE65InpOyqejOc0MuzTj7Gzs8eeKeAxiYdvpIr6KOO', '2024-10-17 03:31:43'),
(15, 'Naveesha', 'naveesha@gmail.com', '$2y$10$rwb6gzo/XD5K9yGenk7vTOB8c8hzuocFb9vzmw0Xi0xTT8G2sx2Tu', '2024-10-17 03:41:02'),
(24, 'Akila Shashimantha', 'akilashashimantha84@gmail.com', '$2y$10$lUfejq9ToWu.SXIr6wOy1eIB8PmkpT/7D/UNbCqBQh/medKmo17.i', '2024-10-17 13:51:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `special_id` (`special_id`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`nic`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `specialization` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
