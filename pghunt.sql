-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 04:11 PM
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
-- Database: `pghunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Wifi', 'Common Area', 'wifi'),
(2, 'Power Backup', 'Building', 'powerbackup'),
(3, 'Fire Extinguisher', 'Building', 'fireext'),
(4, 'TV', 'Common Area', 'tv'),
(5, 'Bed with Mattress', 'Bedroom', 'bed'),
(6, 'Parking', 'Building', 'parking'),
(7, 'Water Purifier', 'Common Area', 'rowater'),
(8, 'Dining', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Washing Machine', 'Common Area', 'washingmachine'),
(11, 'Lift', 'Building', 'lift'),
(12, 'CCTV', 'Building', 'cctv'),
(13, 'Geyser', 'Washroom', 'geyser');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Morabadi'),
(2, 'Bariatu'),
(3, 'Namkum'),
(4, 'Main Road'),
(5, 'Ratu Road'),
(6, 'Lalpur');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(30, 1, 1),
(32, 1, 12),
(33, 1, 13),
(34, 1, 11),
(35, 7, 6),
(36, 7, 10),
(37, 9, 1),
(38, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(2,1) NOT NULL,
  `rating_food` float(2,1) NOT NULL,
  `rating_safety` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, 'Suman\'s boys Hostel Paying Guest', 'Paahi palace lane, near sangam garden, Morabadi, Ranchi, Jharkhand 834008', 'Move into Suman boys Hostel, a professionally managed PG home in the Morabadi, Ranchi. Located in a safe neighborhood, this male PG offers various modern amenities for your comfort, such as Power Backup, Wi-Fi etc. This PG has single, triple occupancy types. This PG is nearby major commercial and educational hubs. Please contact the seller to book this fast selling high in demand PG stay', 'male', 2200, 3.2, 3.4, 4.8),
(2, 1, 'Castle Girls Hostel', 'Krishnapuri, Divyayan, Morabadi, Ranchi, Jharkhand 834008', 'Castle Girls Hostel is a haven of comfort and camaraderie, offering a secure and vibrant living space for female residents. Nestled in a serene location, the hostel boasts modern amenities and spacious rooms, fostering a conducive environment for academic focus and personal growth. With a dedicated staff committed to ensuring a safe and welcoming atmosphere, Castle Girls Hostel stands out as a premier accommodation choice for students, providing a home away from home. ', 'unisex', 3300, 2.9, 3.4, 3.8),
(6, 6, 'Sipra Girls Hostel', '171, HB Road, Lalpur, Ranchi-834001', 'The most reputed and licensed girls hostel of Ranchi city since 2000', 'female', 5500, 4.0, 4.0, 4.5),
(7, 6, 'Prasad Boys Hostel', 'Peace Road, By Lane, Lalpur, Ranchi-834001', 'Prasad Boys Hostel is a vibrant residence known for its welcoming atmosphere and excellent facilities. Situated in a central location, it provides convenience to students pursuing their education in nearby institutions. With spacious rooms and modern amenities, the hostel ensures a comfortable and conducive living environment. The dedicated staff at Prasad Boys Hostel is committed to fostering a sense of community, organizing events, and supporting the overall well-being of its residents. Known for its focus on safety and cleanliness, Prasad Boys Hostel is a preferred accommodation choice for students seeking a home away from home.', 'male', 5500, 4.4, 4.0, 4.3),
(8, 4, 'Shanti Enclave', 'Shanti Enclave, H.B.Road, Udhav Babu Lane, Tharpakhna, New Barhi Toli, Ranchi, Jharkhand 834001', 'Move into Shanti Enclave, a professionally managed PG home in Main Road, Ranchi. Located in a safe neighborhood, this male PG offers various modern amenities for your comfort, such as TV, Wi-Fi, etc.', 'male', 5000, 4.0, 4.0, 3.6),
(9, 6, 'OLE STAYS', '6th Floor, Samudra Complex, opposite to M- fashion (madhumita fashion), Upper Burdwan Compound, P&T Colony, Nagra Toli, Ranchi, Jharkhand 834001', 'Move into OLE STAYS, A Professionally Managed PG Home in Main Road, Ranchi. Located in a Safe Neighborhood, This Male PG offers Various Modern Amenities For Your Comfort, Such as Wi-Fi, TV, etc. This PG has Double Occupancy types. This PG is Nearby Major Commercial and Educational hubs. Please Contact the Seller to Book this Fast Selling high in Demand PG Stay.', 'male', 4800, 3.8, 4.3, 5.0),
(10, 5, 'Shanvi PG\r\n', 'North Market road, Upper Bazar, Ranchi', 'The PG is located in the heart of the town Upper Bazar. The connectivity is superb as it is very near to Ratu Road Chowk. All the essential amenities are located nearby.', 'female', 6000, 4.0, 3.5, 4.0),
(11, 5, 'Pragati PG\r\n', 'P&T Colony, Lalpur, Ranchi, Jharkhand 834008', 'Located in Upper Bazar, Ranchi, Pragati PG is a modern and spacious PG home that is close to major educational commercial hubs in the area. This unisex PG offers all the comforts like Wi-Fi etc. The PG has strict adherence to hygiene standards and offers single, double, triple, four rooms. Please contact in case you are interested or have queries. Looking forward to serving you.', 'female', 5000, 4.0, 3.5, 3.0),
(12, 2, 'Kashish Girls Hostel', '3K/39, Bajra - Bariatu Rd, Bariatu Housing Colony, Ranchi, Jharkhand 834009', 'Kashish Girls Hostel is a welcoming haven for female students, conveniently located near educational institutions. With its modern facilities and secure environment, it provides a comfortable living space for residents. The hostel promotes a sense of community through shared spaces for study and recreation, fostering friendships and academic collaboration. Its attentive staff ensures a safe and supportive atmosphere, prioritizing the well-being of every resident. Kashish Girls Hostel aims to create a home away from home, enhancing the overall college experience for its residents.', 'female', 3500, 4.5, 4.0, 3.0),
(13, 2, 'Mahadev Girls\' Hostel', 'Chauhan Colony, Morabadi, Ranchi, Jharkhand 834009', 'Mahadev Girls\' Hostel is a haven for female students seeking a secure and conducive living environment. Nestled in a serene locality, the hostel provides modern amenities and a tranquil atmosphere for focused studying. With spacious rooms and well-maintained facilities, it offers a comfortable and homely experience. The hostel also fosters a sense of community through organized events and communal spaces, encouraging friendships and a supportive network. Mahadev Girls\' Hostel stands as a testament to providing a nurturing space for academic pursuits and personal growth.', 'female', 4500, 4.5, 4.0, 5.0);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(1, 1, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(8, 13, 'Farah Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(9, 11, 'Rajkumar Hirani', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(10, 6, 'Sanjay Leela Bhansali', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `college_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(1, 'piyush461@gmail.com', '7ce0359f12857f2a90c7de465f40a95f01cb5da9', 'Piyush', '8210428747', 'male', 'Sarala Birla University'),
(6, 'abhya1@gmail.com', '12ef97c5512eac43a40b7ebcd9d531ba0f32537a', 'Abhya Gupta', '9876543211', 'female', 'Sarala Birla University'),
(7, 'piyush@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'piyush', '9876543210', 'male', 'sbu'),
(8, 'ak9431575679@gmal.com', '2b41a27f90491fd4582c3a39f4aee6a3d672c5b6', 'Aayush Kumar', '8252152679', 'male', 'GEC Lakkisarai'),
(9, 'ak9431575679@gmail.com', '2b41a27f90491fd4582c3a39f4aee6a3d672c5b6', 'AAYUSH', '8252152679', 'male', 'GEC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interested_users_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
