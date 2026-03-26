-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2026 at 01:44 AM
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
-- Database: `astoncv`
--

-- --------------------------------------------------------

--
-- Table structure for table `cvs`
--

CREATE TABLE `cvs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `education` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `links` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `summary` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `refs` text DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cvs`
--

INSERT INTO `cvs` (`id`, `name`, `email`, `password`, `education`, `language`, `links`, `created_at`, `summary`, `skills`, `languages`, `refs`, `bio`) VALUES
(58, 'Demo User', 'demo@astoncv.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science, Aston University', 'JavaScript', 'https://github.com/demo', '2026-03-26 00:14:15', 'A motivated computer science student with a strong interest in full-stack development. Experienced in building dynamic web applications using modern frameworks and continuously improving through real-world projects. Passionate about clean code, scalability, and user-focused design.', 'HTML, CSS, JavaScript, Node.js, MySQL', 'English (Fluent)', 'Available upon request', 'Full-stack developer passionate about building useful applications.'),
(59, 'Sarah A K', 'sarah.ak@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Software Engineering, Aston University', 'Python', 'https://github.com/sarahak', '2026-03-26 00:14:15', 'A dedicated software engineering student with a strong foundation in backend development and data structures. Experienced in building efficient applications and working collaboratively in team-based projects. Interested in scalable systems and cloud technologies.', 'Python, Flask, SQL, Git', 'English (Fluent)', 'Available upon request', 'Backend-focused developer with strong problem-solving skills.'),
(60, 'Hasnain A', 'hasnain.a@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science, Aston University', 'JavaScript', 'https://github.com/hasnain', '2026-03-26 00:14:15', 'A design-focused developer who combines strong technical skills with attention to detail. Experienced in creating responsive and user-friendly web applications. Passionate about building clean interfaces and writing maintainable code.', 'HTML, CSS, JavaScript, Node.js', 'English (Fluent)', 'Available upon request', 'Design-led developer focused on UI and UX.'),
(61, 'Komzal Ikram', 'komzal@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science, Aston University', 'Java', 'https://github.com/komzal', '2026-03-26 00:14:15', 'A detail-oriented developer with a strong understanding of object-oriented programming and system design. Enjoys solving complex problems and building efficient backend systems. Continuously learning new technologies to improve development workflow.', 'Java, Spring Boot, SQL', 'English (Fluent)', 'Available upon request', 'Backend developer with strong Java experience.'),
(62, 'Haaris Naseer', 'haaris@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science, Aston University', 'C++', 'https://github.com/haaris', '2026-03-26 00:14:15', 'A technically driven student with strong knowledge of algorithms and system-level programming. Experienced in building efficient and optimized solutions. Interested in software engineering roles that involve performance and scalability.', 'C++, Data Structures, Algorithms', 'English (Fluent)', 'Available upon request', 'Low-level programming enthusiast.'),
(63, 'Ali Khan', 'ali@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'JavaScript', 'https://github.com/ali', '2026-03-26 00:14:15', 'A passionate developer focused on creating dynamic and scalable web applications. Skilled in frontend and backend technologies and enjoys building full-stack solutions that solve real-world problems.', 'JavaScript, Node.js, React', 'English (Fluent)', 'Available upon request', 'Full-stack developer.'),
(64, 'Zain Ahmed', 'zain@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Software Engineering', 'Python', 'https://github.com/zain', '2026-03-26 00:14:15', 'A results-driven developer with strong experience in backend systems and APIs. Focuses on writing clean and efficient code while maintaining high performance and scalability.', 'Python, Django, SQL', 'English (Fluent)', 'Available upon request', 'Backend API developer.'),
(65, 'Usman Malik', 'usman@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'Java', 'https://github.com/usman', '2026-03-26 00:14:15', 'A motivated student with a strong interest in enterprise software development. Experienced in Java and object-oriented design principles, with a focus on building maintainable systems.', 'Java, OOP, SQL', 'English (Fluent)', 'Available upon request', 'Java developer.'),
(66, 'Omar Hussain', 'omar@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'JavaScript', 'https://github.com/omar', '2026-03-26 00:14:15', 'A creative developer who enjoys building interactive and responsive user interfaces. Strong focus on usability and design consistency.', 'HTML, CSS, JavaScript', 'English (Fluent)', 'Available upon request', 'Frontend developer.'),
(67, 'Bilal Shah', 'bilal@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Software Engineering', 'Python', 'https://github.com/bilal', '2026-03-26 00:14:15', 'A dedicated developer with experience in backend development and database design. Interested in building scalable and secure systems.', 'Python, SQL, Flask', 'English (Fluent)', 'Available upon request', 'Backend developer.'),
(68, 'Imran Ali', 'imran@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'C#', 'https://github.com/imran', '2026-03-26 00:14:15', 'A software developer with experience in building desktop and web applications. Focuses on writing efficient and maintainable code.', 'C#, .NET, SQL', 'English (Fluent)', 'Available upon request', 'Software developer.'),
(69, 'Hamza Tariq', 'hamza@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'JavaScript', 'https://github.com/hamza', '2026-03-26 00:14:15', 'A full-stack developer passionate about building scalable applications. Strong interest in modern web technologies and frameworks.', 'React, Node.js, MongoDB', 'English (Fluent)', 'Available upon request', 'Full-stack developer.'),
(71, 'Amir Riaz', 'amir@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'JavaScript', 'https://github.com/amir', '2026-03-26 00:21:08', 'A highly motivated developer with experience building scalable web applications. Focuses on clean architecture and efficient problem solving.', 'JavaScript, Node.js, SQL', 'English', 'Available upon request', 'Full-stack developer'),
(72, 'Ahmed Khan', 'ahmed@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Software Engineering', 'Python', 'https://github.com/ahmed', '2026-03-26 00:21:08', 'A backend developer with strong experience in building APIs and handling databases efficiently. Passionate about performance and clean code.', 'Python, Flask, SQL', 'English', 'Available upon request', 'Backend developer'),
(73, 'Mohammed Ali', 'mohammed@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'Java', 'https://github.com/mohammed', '2026-03-26 00:21:08', 'A software developer with a strong understanding of object-oriented design and enterprise systems.', 'Java, Spring, SQL', 'English', 'Available upon request', 'Java developer'),
(74, 'Zeeshan Ahmed', 'zeeshan@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'C++', 'https://github.com/zeeshan', '2026-03-26 00:21:08', 'A technically strong developer with knowledge in algorithms and system design.', 'C++, Algorithms', 'English', 'Available upon request', 'Systems developer'),
(75, 'Talha Iqbal', 'talha@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'JavaScript', 'https://github.com/talha', '2026-03-26 00:21:08', 'A frontend-focused developer passionate about building intuitive user interfaces.', 'HTML, CSS, JavaScript', 'English', 'Available upon request', 'Frontend dev'),
(76, 'Owais Shah', 'owais@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'Python', 'https://github.com/owais', '2026-03-26 00:21:08', 'A backend engineer focusing on APIs and data-driven systems.', 'Python, Django', 'English', 'Available upon request', 'Backend dev'),
(77, 'Farhan Malik', 'farhan@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Software Engineering', 'C#', 'https://github.com/farhan', '2026-03-26 00:21:08', 'A .NET developer building secure and scalable applications.', 'C#, .NET', 'English', 'Available upon request', '.NET developer'),
(78, 'Saad Khan', 'saad@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'JavaScript', 'https://github.com/saad', '2026-03-26 00:21:08', 'A full-stack developer working with modern frameworks and databases.', 'React, Node.js', 'English', 'Available upon request', 'Full-stack dev'),
(79, 'Bilal Ahmed', 'bilal2@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'Python', 'https://github.com/bilal2', '2026-03-26 00:21:08', 'A data-focused developer with experience in backend systems.', 'Python, SQL', 'English', 'Available upon request', 'Backend dev'),
(80, 'Hassan Raza', 'hassan@example.com', '$2b$10$JAeyQVwzeHJmC9E66QJUOeN6pY0/7Z05uqd2Za9iDx0vN2DT6EFmW', 'BSc Computer Science', 'Java', 'https://github.com/hassan', '2026-03-26 00:21:08', 'A developer focused on scalable backend systems.', 'Java, Spring', 'English', 'Available upon request', 'Backend dev');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
