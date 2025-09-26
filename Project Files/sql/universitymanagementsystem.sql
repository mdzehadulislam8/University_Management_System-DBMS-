-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 11, 2024 at 12:29 AM
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
-- Database: `universitymanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `course` varchar(20) DEFAULT NULL,
  `semester1` varchar(20) DEFAULT NULL,
  `semester2` varchar(20) DEFAULT NULL,
  `semester3` varchar(20) DEFAULT NULL,
  `semester4` varchar(20) DEFAULT NULL,
  `semester5` varchar(20) DEFAULT NULL,
  `semester6` varchar(20) DEFAULT NULL,
  `semester7` varchar(20) DEFAULT NULL,
  `semester8` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`course`, `semester1`, `semester2`, `semester3`, `semester4`, `semester5`, `semester6`, `semester7`, `semester8`) VALUES
('BTech', '48000', '45000', '45000', '45000', '45000', '45000', '45000', '45000'),
('Bsc', '49000', '36000', '36000', '36000', '36000', '36000', '36000', ''),
('BCA', '35000', '33000', '33000', '33000', '33000', '33000', '33000', ''),
('MTech', '66000', '60000', '69000', '60000', '', '', '', ''),
('MSc', '47000', '45000', '45000', '45000', '', '', '', ''),
('MSC', '42000', '42000', '60000', '42000', '', '', '', ''),
('Bcom', '22000', '20000', '20000', '20000', '20000', '20000', '', ''),
('Mcom', '35000', '30000', '30000', '30000', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `rollno` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `marks1` varchar(50) DEFAULT NULL,
  `marks2` varchar(50) DEFAULT NULL,
  `marks3` varchar(50) DEFAULT NULL,
  `marks4` varchar(50) DEFAULT NULL,
  `marks5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`rollno`, `semester`, `marks1`, `marks2`, `marks3`, `marks4`, `marks5`) VALUES
('22292088', '1st Semester', '3.75', '4', '4', '4', '3.5'),
('22296098', '1st Semester', '4', '3.5', '4', '4', '4'),
('22293075', '1st Semester', '4', '3.5', '4', '3.75', '3.25'),
('22296593', '1st Semester', '4', '3.25', '3.75', '4', '4'),
('22292088', '5th Semester', '4', '3.75', '4', '3.75', '3'),
('22295552', '3rd Semester', '4', '4', '3.5', '4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `rollno` varchar(40) NOT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `class_x` varchar(20) NOT NULL,
  `class_xii` varchar(20) NOT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `course` varchar(40) NOT NULL,
  `branch` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `fname`, `rollno`, `dob`, `adress`, `phone`, `email`, `class_x`, `class_xii`, `aadhar`, `course`, `branch`) VALUES
('Sajid', 'Ariful', '22292088', 'Jun 9, 2000', 'khulna', '653765276', 'sajjid@gmail.com', '4.5', '.4.7', '63525465', 'Bsc', 'Computer Science'),
('Md Zehadul Islam', 'Osman Gani', '22293075', 'May 19, 2000', 'Chandpur', '01645120959', 'rmzehad9@gmail.com', '4.67', '4.90', '876785673657437', 'Bsc', 'Computer Science'),
('Abdullah', 'Rakib', '22295552', 'Jun 11, 2002', 'Chandpur', '0136666342', 'abdullah@gmail.com', '4', '4', '3258285452', 'Bsc', 'Computer Science'),
('Rohan Joshi', 'Senor Joshi', '22296098', 'Jun 13, 1991', 'Mirpur', '01760430187', 'rohan@gmail.com', '4.67', '4.90', '347347737472', 'B.Tech', 'Computer Science'),
('Hurayrraaa', 'ierfgysg', '22296593', 'Jun 10, 1992', 'khulna', '573673', 'hurayra@gmail.com', '4.87', '4.24', '462672576', 'Bsc', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `studentleave`
--

CREATE TABLE `studentleave` (
  `rollno` varchar(40) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentleave`
--

INSERT INTO `studentleave` (`rollno`, `date`, `duration`) VALUES
('22296593', 'Jun 10, 2024', 'Full Day'),
('22292088', 'Jun 10, 2024', 'Full Day');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `rollno` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `subject1` varchar(50) DEFAULT NULL,
  `subject2` varchar(50) DEFAULT NULL,
  `subject3` varchar(50) DEFAULT NULL,
  `subject4` varchar(50) DEFAULT NULL,
  `subject5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`rollno`, `semester`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`) VALUES
('22292088', '1st Semester', 'Sowftware Engineering', 'Database ', 'Database Lab', 'Digital Logic Design', 'EEE'),
('22296098', '1st Semester', 'EEE', 'Data Comunication', 'Math', 'Database', 'Database Lab'),
('22293075', '1st Semester', 'dfs', 'english', 'databse', 'eee', 'math'),
('22296593', '1st Semester', 'data structure', 'eee 201', 'OOP', 'DLD', 'Math'),
('22292088', '5th Semester', 'dld', 'database', 'database lab', 'math', 'english'),
('22295552', '3rd Semester', 'data structure ', 'oop', 'dc', 'database', 'database lab');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `name` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `empId` varchar(40) NOT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `class_x` varchar(20) NOT NULL,
  `class_xii` varchar(20) NOT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `education` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL,
  `salary` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `fname`, `empId`, `dob`, `adress`, `phone`, `email`, `class_x`, `class_xii`, `aadhar`, `education`, `department`, `salary`) VALUES
('Rumina Akter', 'Fahad', '20243406', '', 'Khagrachori', '235762576357', 'rumina@gmail.com', '5', '5', '34625657632', 'BBA', 'Computer Science', NULL),
('Abdullah Al Moin', 'Md Tipu Sultan', '20246546', 'Jun 15, 2002', 'josore', '273657623', 'moinnn@gmail.com', '4.48', '4.48', '36266376', 'Bsc', 'Computer Science', '55000'),
('Anowar', 'Lutfur', '20246738', 'Jun 24, 1992', 'Chandpur,Shahrasti,Ragoi', '017263265362', 'anowar@gmail.com', '5', '5', '467574572', 'Msc', 'Computer Science', NULL),
('Mustofa', 'Rahman', '20248077', 'Jun 23, 1994', 'Khulna', '427672742', 'mustofa@gmail.com', '4.95', '4.88', '65376576237', 'Msc', 'Computer Science', '55000'),
('Didar', 'Asraful', '2024830', 'Jun 5, 1990', 'Chandpur', '6757676765', 'didar5@gmail.com', '5', '5', '656352364', 'B.Tech', 'Computer Science', '55000');

--
-- Triggers `teacher`
--
DELIMITER $$
CREATE TRIGGER `salaryt` BEFORE INSERT ON `teacher` FOR EACH ROW BEGIN
if new.salary<50000 THEN SET new.salary=55000;
end if;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `teacherleave`
--

CREATE TABLE `teacherleave` (
  `empId` varchar(20) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `duration` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacherleave`
--

INSERT INTO `teacherleave` (`empId`, `date`, `duration`) VALUES
('20246738', 'Jun 8, 2024', 'Full Day');

-- --------------------------------------------------------

--
-- Table structure for table `universityfee`
--

CREATE TABLE `universityfee` (
  `rollno` varchar(20) DEFAULT NULL,
  `course` varchar(20) NOT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `semester` varchar(20) NOT NULL,
  `total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `universityfee`
--

INSERT INTO `universityfee` (`rollno`, `course`, `branch`, `semester`, `total`) VALUES
('22293075', 'Bsc', 'Computer Science', 'Semester5', '36000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `studentleave`
--
ALTER TABLE `studentleave`
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD KEY `rollno` (`rollno`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`empId`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teacherleave`
--
ALTER TABLE `teacherleave`
  ADD KEY `empId` (`empId`);

--
-- Indexes for table `universityfee`
--
ALTER TABLE `universityfee`
  ADD KEY `rollno` (`rollno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`);

--
-- Constraints for table `studentleave`
--
ALTER TABLE `studentleave`
  ADD CONSTRAINT `studentleave_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`);

--
-- Constraints for table `teacherleave`
--
ALTER TABLE `teacherleave`
  ADD CONSTRAINT `teacherleave_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `teacher` (`empId`);

--
-- Constraints for table `universityfee`
--
ALTER TABLE `universityfee`
  ADD CONSTRAINT `universityfee_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `student` (`rollno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
