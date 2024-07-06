-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 06, 2024 at 06:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applicationForm`
--
CREATE DATABASE IF NOT EXISTS `applicationForm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `applicationForm`;

-- --------------------------------------------------------

--
-- Table structure for table `apply info`
--

CREATE TABLE `apply info` (
  `AdvertisementNumber` varchar(255) NOT NULL,
  `DateOfApplication` varchar(100) DEFAULT NULL,
  `APP_NO` int(11) NOT NULL,
  `PostAppliedFor` varchar(255) DEFAULT NULL,
  `DepartmentSchool` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_details`
--

CREATE TABLE `award_details` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `AwardName` varchar(255) NOT NULL DEFAULT '',
  `AwardingBody` varchar(255) NOT NULL,
  `YearOfAward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consult`
--

CREATE TABLE `consult` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `Organization` varchar(255) DEFAULT NULL,
  `TitleOfProject` varchar(255) DEFAULT NULL,
  `AmountGranted` int(11) DEFAULT NULL,
  `Period` int(11) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curr_job`
--

CREATE TABLE `curr_job` (
  `APP_NO` int(11) NOT NULL,
  `position` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `DateOfLeaving` varchar(100) DEFAULT NULL,
  `OrganizationInstitution` varchar(255) DEFAULT NULL,
  `DateOfJoining` varchar(100) DEFAULT NULL,
  `DurationYears` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_check`
--

CREATE TABLE `doc_check` (
  `APP_NO` int(11) NOT NULL,
  `five_best_papers` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_details`
--

CREATE TABLE `doc_details` (
  `APP_NO` int(11) NOT NULL,
  `five_best_papers` varchar(100) NOT NULL,
  `phd` varchar(100) NOT NULL,
  `pg` varchar(100) NOT NULL,
  `ug` varchar(100) NOT NULL,
  `12th_hsc` varchar(100) NOT NULL,
  `10th_ssc` varchar(100) NOT NULL,
  `pay_slip` varchar(100) NOT NULL,
  `noc` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `other_doc` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_hist_data`
--

CREATE TABLE `emp_hist_data` (
  `Position` varchar(255) DEFAULT NULL,
  `Organization` varchar(255) DEFAULT NULL,
  `Date_of_Joining` varchar(255) DEFAULT NULL,
  `Date_of_Leaving` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `APP_NO` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exp_of_industry`
--

CREATE TABLE `exp_of_industry` (
  `id` varchar(11) NOT NULL,
  `APP_NO` int(11) NOT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `WorkProfile` varchar(255) DEFAULT NULL,
  `DateOfJoining` varchar(255) DEFAULT NULL,
  `DateOfLeaving` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exp_of_industry`
--

INSERT INTO `exp_of_industry` (`id`, `APP_NO`, `organization`, `WorkProfile`, `DateOfJoining`, `DateOfLeaving`, `Duration`) VALUES
('1234', 1, 'hfhf', 'djjd', 'djhfj', 'djjd', 'dfjfj'),
('2345', 2, 'Microsoft', '3years: Microsoft\r\n2month: google(internship)', '01/01/2025', '01/03/2025', '3years');

-- --------------------------------------------------------

--
-- Table structure for table `idproof`
--

CREATE TABLE `idproof` (
  `APP_NO` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_skill`
--

CREATE TABLE `main_skill` (
  `APP_NO` int(20) NOT NULL,
  `area_of_specialization` varchar(255) NOT NULL,
  `current_area_of_research` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `nameOfSociety` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `more_qual_details`
--

CREATE TABLE `more_qual_details` (
  `APP_NO` int(10) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `university` varchar(200) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `yoj` varchar(20) NOT NULL,
  `yoc` varchar(20) NOT NULL,
  `duration` int(5) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `division` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `more_qual_details`
--

INSERT INTO `more_qual_details` (`APP_NO`, `degree`, `university`, `branch`, `yoj`, `yoc`, `duration`, `percentage`, `division`) VALUES
(1, 'def', 'djdj', 'dud', 'edjuddj', '2jf', 3, 'djhdf', 'jej'),
(2, 'B.Tech', 'IIT Patna', 'Computer Science', '2022', '2026', 4, '90', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `APP_NO` int(10) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `MaritalStatus` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `IDProof` varchar(255) DEFAULT NULL,
  `FathersName` varchar(255) DEFAULT NULL,
  `idproofImage` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `CorrAddress` varchar(255) NOT NULL,
  `PermanentAddress` varchar(255) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `AltMobile` varchar(255) NOT NULL,
  `AltEmail` varchar(255) NOT NULL,
  `Landline` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`APP_NO`, `FirstName`, `MiddleName`, `LastName`, `Nationality`, `DOB`, `Gender`, `MaritalStatus`, `Category`, `IDProof`, `FathersName`, `idproofImage`, `image`, `CorrAddress`, `PermanentAddress`, `Mobile`, `Email`, `AltMobile`, `AltEmail`, `Landline`) VALUES
(1, 'krishna', NULL, 'kant', 'Indian', '31/01/2004', 'male', 'unmarried', 'UR', 'AADHAR', 'Arun Kumar', NULL, NULL, 'biota', 'varanasi', '485969573', '37748djd4f', '283756322', '3ufhksn', '02846573'),
(2, 'Himani', NULL, 'Yadav', 'INDIAN', '01/01/2004', 'FEMALE', 'UNMARRIED', 'UR', 'PASSPORT', 'R.K. Yadav', 'http://exam.com/stationary.jpg', 'http://work.com/celebrity.jpg', 'Patna', 'Varanasi', '9935025776', 'gulidy@clout.wiki', '9453709583', 'krishna@gmail.com', '9452 999999');

-- --------------------------------------------------------

--
-- Table structure for table `pg_info`
--

CREATE TABLE `pg_info` (
  `APP_NO` int(15) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `Year_of_Joining` varchar(50) NOT NULL,
  `Year_of_Completion` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `cgpa` float NOT NULL,
  `division` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pg_info`
--

INSERT INTO `pg_info` (`APP_NO`, `degree`, `university`, `stream`, `Year_of_Joining`, `Year_of_Completion`, `duration`, `cgpa`, `division`) VALUES
(1, 'dids', 'didwis', 'didws', '2002', '2003', '2', 34, 'a'),
(2, 'B.Tech', 'IIT Patna', 'Computer Science', '2022', '2026', '4 years', 9, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `phd_info`
--

CREATE TABLE `phd_info` (
  `APP_NO` int(10) NOT NULL,
  `university` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `Name_of_PhD_Supervisor` varchar(50) NOT NULL,
  `Year_of_Joining` year(4) NOT NULL,
  `Date_of_Successful_Thesis_Defence` varchar(100) NOT NULL,
  `Date_of_Award` varchar(100) NOT NULL,
  `Title_of_PhD_Thesis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phd_info`
--

INSERT INTO `phd_info` (`APP_NO`, `university`, `department`, `Name_of_PhD_Supervisor`, `Year_of_Joining`, `Date_of_Successful_Thesis_Defence`, `Date_of_Award`, `Title_of_PhD_Thesis`) VALUES
(1, 'NIT Surathksl', 'chemical', 'roshan', '2020', '2333', '37373', '3737'),
(2, 'IIT Patna', 'Computer Science', 'Kushagra Pandey', '2022', '11/05/2024', '12/05/2024', 'title');

-- --------------------------------------------------------

--
-- Table structure for table `proj_info`
--

CREATE TABLE `proj_info` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `SponsoringAgency` varchar(255) DEFAULT NULL,
  `TitleOfProject` varchar(255) DEFAULT NULL,
  `SanctionedAmount` decimal(10,2) DEFAULT NULL,
  `Period` int(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refrees`
--

CREATE TABLE `refrees` (
  `APP_NO` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `associate_with_reference` varchar(100) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registered_data`
--

CREATE TABLE `registered_data` (
  `app_no` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `app_date` varchar(30) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_data`
--

INSERT INTO `registered_data` (`app_no`, `firstname`, `lastname`, `email`, `category`, `password`, `app_date`) VALUES
(1, 'Gaurav', 'Biswas', 'gaurav@gmail.com', 'UR', 'Gaurav', '2024-05-11 22:50:07'),
(3, 'Roshan', 'Kumar', 'Roshan@gmail.com', 'UR', 'Roshan', '2024-05-12 01:59:36'),
(8, 'himani', 'yadav', 'himani@gmail.com', 'UR', 'himani', '2024-05-12 04:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `research_exp`
--

CREATE TABLE `research_exp` (
  `id` int(11) NOT NULL,
  `app_no` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `Institute` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `DateOfJoining` varchar(255) DEFAULT NULL,
  `DateOfLeaving` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `standard` varchar(30) NOT NULL,
  `school` varchar(200) NOT NULL,
  `year_of_passing` varchar(40) NOT NULL,
  `percentage/grade` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `APP_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`standard`, `school`, `year_of_passing`, `percentage/grade`, `division`, `APP_NO`) VALUES
('10th/12th/HSC/Diploma', 'U.P. Sainik School Lucknow', '2021', '90', 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teaching_exp`
--

CREATE TABLE `teaching_exp` (
  `id` int(11) NOT NULL,
  `app_no` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `CourseTaught` varchar(255) DEFAULT NULL,
  `UG_PG` varchar(50) DEFAULT NULL,
  `NoOfStudents` int(11) DEFAULT NULL,
  `DateOfJoining` varchar(100) DEFAULT NULL,
  `DateOfLeaving` varchar(100) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `training_experience`
--

CREATE TABLE `training_experience` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `TypeOfTrainingReceived` varchar(255) DEFAULT NULL,
  `Organisation` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ug_info`
--

CREATE TABLE `ug_info` (
  `APP_NO` int(11) NOT NULL,
  `degree` varchar(200) NOT NULL,
  `university` varchar(200) NOT NULL,
  `stream` varchar(200) NOT NULL,
  `yoj` varchar(40) NOT NULL,
  `yoc` varchar(50) NOT NULL,
  `duration` int(10) NOT NULL,
  `percentage` int(10) NOT NULL,
  `division` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ug_info`
--

INSERT INTO `ug_info` (`APP_NO`, `degree`, `university`, `stream`, `yoj`, `yoc`, `duration`, `percentage`, `division`) VALUES
(1, 'def', 'sad', 'shin', 'did', 'sjud', 2, 4, 'a'),
(2, 'B.Tech', 'IIT Patna', 'Computer Science', '2022', '2026', 4, 9, 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exp_of_industry`
--
ALTER TABLE `exp_of_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `more_qual_details`
--
ALTER TABLE `more_qual_details`
  ADD PRIMARY KEY (`APP_NO`);

--
-- Indexes for table `pg_info`
--
ALTER TABLE `pg_info`
  ADD PRIMARY KEY (`APP_NO`);

--
-- Indexes for table `registered_data`
--
ALTER TABLE `registered_data`
  ADD PRIMARY KEY (`app_no`);

--
-- Indexes for table `school_info`
--
ALTER TABLE `school_info`
  ADD PRIMARY KEY (`APP_NO`);

--
-- Indexes for table `ug_info`
--
ALTER TABLE `ug_info`
  ADD PRIMARY KEY (`APP_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `more_qual_details`
--
ALTER TABLE `more_qual_details`
  MODIFY `APP_NO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pg_info`
--
ALTER TABLE `pg_info`
  MODIFY `APP_NO` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registered_data`
--
ALTER TABLE `registered_data`
  MODIFY `app_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `school_info`
--
ALTER TABLE `school_info`
  MODIFY `APP_NO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ug_info`
--
ALTER TABLE `ug_info`
  MODIFY `APP_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `contacts`
--
CREATE DATABASE IF NOT EXISTS `contacts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contacts`;

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE `contactUs` (
  `S.no.` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `concern` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`S.no.`, `name`, `email`, `concern`, `dt`) VALUES
(1, 'krishna', 'kk@g.com', 'ejffhf', '2024-05-07 20:25:29'),
(2, 'krishna', 'fh@g.com', 'sjdh', '2024-05-07 20:28:38'),
(3, 'Gaurav', 'gv@g.com', 'sgdfh', '2024-05-08 07:26:30'),
(4, 'kushagra', 'ku@g.com', 'egeudjb', '2024-05-08 07:27:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactUs`
--
ALTER TABLE `contactUs`
  ADD PRIMARY KEY (`S.no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactUs`
--
ALTER TABLE `contactUs`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `csProject`
--
CREATE DATABASE IF NOT EXISTS `csProject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `csProject`;

-- --------------------------------------------------------

--
-- Table structure for table `Name`
--

CREATE TABLE `Name` (
  `C1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Name`
--
ALTER TABLE `Name`
  ADD PRIMARY KEY (`C1`);
--
-- Database: `dbharry3`
--
CREATE DATABASE IF NOT EXISTS `dbharry3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbharry3`;
--
-- Database: `demo_project`
--
CREATE DATABASE IF NOT EXISTS `demo_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `demo_project`;

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `s.no.` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`s.no.`, `name`, `email`, `password`, `category`) VALUES
(1, 'qwerty', 'qwerty@gmail.com', 'qwerty', 'UR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`s.no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `s.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `faculty`
--
CREATE DATABASE IF NOT EXISTS `faculty` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `faculty`;

-- --------------------------------------------------------

--
-- Table structure for table `additional_qualifications`
--

CREATE TABLE `additional_qualifications` (
  `APP_NO` int(10) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `university` varchar(200) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `yoj` year(4) NOT NULL,
  `yoc` year(4) NOT NULL,
  `duration` int(5) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `division` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicationdetails`
--

CREATE TABLE `applicationdetails` (
  `AdvertisementNumber` varchar(250) NOT NULL,
  `DateOfApplication` varchar(50) NOT NULL,
  `APP_NO` int(30) NOT NULL,
  `PostAppliedFor` varchar(100) NOT NULL,
  `DepartmentSchool` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicationdetails`
--

INSERT INTO `applicationdetails` (`AdvertisementNumber`, `DateOfApplication`, `APP_NO`, `PostAppliedFor`, `DepartmentSchool`) VALUES
('IITP/FACREC-CHE/2023/JULY/02', '11-05-2024', 1, 'Professor', 'Chemical Engineering'),
('IITP/FACREC-CHE/2023/JULY/02', '11-05-2024', 1, 'Professor', 'Chemical Engineering'),
('IITP/FACREC-CHE/2023/JULY/02', '11-05-2024', 1, 'Professor', 'Chemical Engineering'),
('IITP/FACREC-CHE/2023/JULY/02', '11-05-2024', 1, 'Professor', 'Chemical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `awards_recognitions`
--

CREATE TABLE `awards_recognitions` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `AwardName` varchar(255) NOT NULL DEFAULT '',
  `AwardingBody` varchar(255) NOT NULL,
  `YearOfAward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultancyprojects`
--

CREATE TABLE `consultancyprojects` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `Organization` varchar(255) DEFAULT NULL,
  `TitleOfProject` varchar(255) DEFAULT NULL,
  `AmountGranted` int(11) DEFAULT NULL,
  `Period` int(11) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `details_of_phd`
--

CREATE TABLE `details_of_phd` (
  `APP_NO` int(10) NOT NULL,
  `university` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `Name_of_PhD_Supervisor` varchar(50) NOT NULL,
  `Year_of_Joining` year(4) NOT NULL,
  `Date_of_Successful_Thesis_Defence` varchar(100) NOT NULL,
  `Date_of_Award` varchar(100) NOT NULL,
  `Title_of_PhD_Thesis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `APP_NO` int(11) NOT NULL,
  `five_best_papers` varchar(100) NOT NULL,
  `phd` varchar(100) NOT NULL,
  `pg` varchar(100) NOT NULL,
  `ug` varchar(100) NOT NULL,
  `12th_hsc` varchar(100) NOT NULL,
  `10th_ssc` varchar(100) NOT NULL,
  `pay_slip` varchar(100) NOT NULL,
  `noc` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `other_doc` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doc_test`
--

CREATE TABLE `doc_test` (
  `APP_NO` int(11) NOT NULL,
  `five_best_papers` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employmenthistory`
--

CREATE TABLE `employmenthistory` (
  `Position` varchar(255) DEFAULT NULL,
  `Organization` varchar(255) DEFAULT NULL,
  `Date_of_Joining` varchar(255) DEFAULT NULL,
  `Date_of_Leaving` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `APP_NO` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `idproof`
--

CREATE TABLE `idproof` (
  `APP_NO` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industrial_experience`
--

CREATE TABLE `industrial_experience` (
  `id` int(11) NOT NULL,
  `APP_NO` int(11) NOT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `WorkProfile` varchar(255) DEFAULT NULL,
  `DateOfJoining` varchar(255) DEFAULT NULL,
  `DateOfLeaving` varchar(255) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `APP_NO` bigint(20) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `MIDDLENAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `NATIONALITY` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `MARITAL_STATUS` varchar(15) NOT NULL,
  `CATEGORY` varchar(10) NOT NULL,
  `ID_PROOF_NAME` varchar(50) NOT NULL,
  `ID_PROOF` varchar(255) NOT NULL,
  `FATHERNAME` varchar(100) NOT NULL,
  `PROFILE_PIC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `nameOfSociety` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personaldetails`
--

CREATE TABLE `personaldetails` (
  `APP_NO` int(10) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `MaritalStatus` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `IDProof` varchar(255) DEFAULT NULL,
  `FathersName` varchar(255) DEFAULT NULL,
  `idproofImage` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `CorrAddress` varchar(255) NOT NULL,
  `PermanentAddress` varchar(255) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `AltMobile` varchar(255) NOT NULL,
  `AltEmail` varchar(255) NOT NULL,
  `Landline` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personaldetails`
--

INSERT INTO `personaldetails` (`APP_NO`, `FirstName`, `MiddleName`, `LastName`, `Nationality`, `DOB`, `Gender`, `MaritalStatus`, `Category`, `IDProof`, `FathersName`, `idproofImage`, `image`, `CorrAddress`, `PermanentAddress`, `Mobile`, `Email`, `AltMobile`, `AltEmail`, `Landline`) VALUES
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517'),
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517'),
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517'),
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517'),
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517'),
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517'),
(1, 'himani', '', 'yadav', ' Indian', '30/11/-0001', 'Male', 'Other', 'UR', 'VOTER ID', 'Ariane73', '', '', '2326 Torphy Harbor', '2326 Rau Village', 'Internal Solutions M', 'gulidy@clout.wiki', 'your.email+fakedata21860@gmail.com', 'Senior Data Technici', '517');

-- --------------------------------------------------------

--
-- Table structure for table `present_employment`
--

CREATE TABLE `present_employment` (
  `APP_NO` int(11) NOT NULL,
  `position` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `DateOfLeaving` varchar(100) DEFAULT NULL,
  `OrganizationInstitution` varchar(255) DEFAULT NULL,
  `DateOfJoining` varchar(100) DEFAULT NULL,
  `DurationYears` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professional_training`
--

CREATE TABLE `professional_training` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `TypeOfTrainingReceived` varchar(255) DEFAULT NULL,
  `Organisation` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `APP_NO` int(11) NOT NULL,
  `SNo` int(11) NOT NULL,
  `SponsoringAgency` varchar(255) DEFAULT NULL,
  `TitleOfProject` varchar(255) DEFAULT NULL,
  `SanctionedAmount` decimal(10,2) DEFAULT NULL,
  `Period` int(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refrees`
--

CREATE TABLE `refrees` (
  `APP_NO` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `associate_with_reference` varchar(100) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `APP_NO` int(10) NOT NULL,
  `FIRSTNAME` varchar(200) NOT NULL,
  `LASTNAME` varchar(200) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `CATEGORY` varchar(10) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `APP_DATE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `APP_NO` int(11) NOT NULL,
  `FIRSTNAME` varchar(40) NOT NULL,
  `LASTNAME` varchar(40) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `CATEGORY` varchar(40) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL,
  `APP_DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`APP_NO`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `CATEGORY`, `PASSWORD`, `APP_DATE`) VALUES
(1, 'himani', 'yadav', 'himani@gmail.com', 'UR', 'himani', '2024-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `registration1`
--

CREATE TABLE `registration1` (
  `APP_NO` int(10) NOT NULL,
  `FIRSTNAME` varchar(200) NOT NULL,
  `LASTNAME` varchar(200) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `CATEGORY` varchar(10) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `APP_DATE` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration1`
--

INSERT INTO `registration1` (`APP_NO`, `FIRSTNAME`, `LASTNAME`, `EMAIL`, `CATEGORY`, `PASSWORD`, `APP_DATE`) VALUES
(6, 'Mayank', 'Kumar', 'mayank@gmail.com', 'UR', '1234', '2024-04-08'),
(7, 'Gaurav', 'Biswas', 'gaurav123@gmail.com', 'UR', 'gaurav', '2024-04-09'),
(8, 'Roshan', 'Verma', 'Roshan@gmail.com', 'UR', 'Roshan123', '2024-04-09'),
(9, 'Kushagra', 'Pandey', 'Kushagra123@gmail.com', 'UR', 'Kushagr123', '2024-04-09'),
(10, 'himani', 'yadav', 'himani@gmail.com', 'UR', 'himani', '2024-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `research_experience`
--

CREATE TABLE `research_experience` (
  `id` int(11) NOT NULL,
  `app_no` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `Institute` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `DateOfJoining` varchar(255) DEFAULT NULL,
  `DateOfLeaving` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_details`
--

CREATE TABLE `school_details` (
  `standard` varchar(20) NOT NULL,
  `school` varchar(200) NOT NULL,
  `year_of_passing` year(4) NOT NULL,
  `percentage/grade` varchar(20) NOT NULL,
  `division` varchar(20) NOT NULL,
  `APP_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `APP_NO` int(20) NOT NULL,
  `area_of_specialization` varchar(255) NOT NULL,
  `current_area_of_research` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachingexperience`
--

CREATE TABLE `teachingexperience` (
  `id` int(11) NOT NULL,
  `app_no` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `CourseTaught` varchar(255) DEFAULT NULL,
  `UG_PG` varchar(50) DEFAULT NULL,
  `NoOfStudents` int(11) DEFAULT NULL,
  `DateOfJoining` varchar(100) DEFAULT NULL,
  `DateOfLeaving` varchar(100) DEFAULT NULL,
  `Duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ug_details`
--

CREATE TABLE `ug_details` (
  `APP_NO` int(20) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `yoj` year(4) NOT NULL,
  `yoc` year(4) NOT NULL,
  `duration` int(5) NOT NULL,
  `percentage` varchar(30) NOT NULL,
  `division` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`APP_NO`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`APP_NO`);

--
-- Indexes for table `registration1`
--
ALTER TABLE `registration1`
  ADD PRIMARY KEY (`APP_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `APP_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration1`
--
ALTER TABLE `registration1`
  MODIFY `APP_NO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `KK_Music`
--
CREATE DATABASE IF NOT EXISTS `KK_Music` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `KK_Music`;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `songName` varchar(100) NOT NULL,
  `filePath` varchar(100) NOT NULL,
  `coverPath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `songName`, `filePath`, `coverPath`) VALUES
(1, 'Salam-e-Ishq', 'songs/1.mp3', 'covers/1.jpg'),
(2, 'Vande-Mataram', 'songs/2.mp3', 'covers/2.jpg'),
(3, 'Bande-hai-ham-uske', 'songs/3.mp3', 'covers/3.jpg'),
(4, 'Hawayein', 'songs/4.mp3', 'covers/4.jpg'),
(5, 'Chale-Jana', 'songs/5.mp3', 'covers/5.jpg'),
(6, 'Heat-Waves', 'songs/6.mp3', 'covers/6.jpg'),
(7, 'Cheques', 'songs/7.mp3', 'covers/7.jpg'),
(8, 'Challa', 'songs/8.mp3', 'covers/8.jpg'),
(9, 'Taaron-ka-Mehakta-Chehra-ho', 'songs/9.mp3', 'covers/9.jpg'),
(10, 'Ishq', 'songs/10.mp3', 'covers/10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"KK_Music\",\"table\":\"songs\"},{\"db\":\"trip\",\"table\":\"trip\"},{\"db\":\"applicationForm\",\"table\":\"personal_info\"},{\"db\":\"applicationForm\",\"table\":\"registered_data\"},{\"db\":\"applicationForm\",\"table\":\"apply info\"},{\"db\":\"applicationForm\",\"table\":\"doc_check\"},{\"db\":\"applicationForm\",\"table\":\"exp_of_industry\"},{\"db\":\"applicationForm\",\"table\":\"ug_info\"},{\"db\":\"applicationForm\",\"table\":\"school_info\"},{\"db\":\"applicationForm\",\"table\":\"phd_info\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'KK_Music', 'songs', '[]', '2024-07-06 11:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-07-06 11:48:02', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":112.97100000000000363797880709171295166015625,\"NavigationWidth\":251}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
--
-- Database: `trip`
--
CREATE DATABASE IF NOT EXISTS `trip` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trip`;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `sno` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `desc` text NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `desc`, `dt`) VALUES
(1, 'krishna', 20, 'male', '3747krishna@gmail.com', '9935025775', 'Hi, I am a student', '2024-07-05 16:43:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `users`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
