-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 04:37 PM
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
-- Database: `be22_exam6_bigevents_mohammad_afif_haounji`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date_start_time` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `type_of_event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `image`, `capacity`, `address`, `date_start_time`, `email`, `phone_number`, `type_of_event_id`) VALUES
(1, 'Vienna Classical Music Festival', 'Celebrate the timeless beauty of Vienna\'s classical music heritage with performances from world-renowned orchestras and soloists. Enjoy an evening filled with the masterpieces of Mozart, Beethoven, and Strauss in one of Vienna\'s most iconic venues.', 'https://cdn.pixabay.com/photo/2016/11/19/09/57/violins-1838390_1280.jpg', 1840, 'Wiener Konzerthaus, Lothringerstraße 20, 1030 Vienna', '2024-08-29 20:08:00', 'music@vienna-events.com', 43123123123, 1),
(3, 'Vienna International Film Festival', 'A week-long festival showcasing the best in international cinema, including world premieres, indie films, and documentaries. Meet directors, actors, and film critics in an intimate setting.', 'https://cdn.pixabay.com/photo/2015/03/15/18/54/vienna-674855_640.jpg', 736, 'Gartenbaukino, Parkring 12, 1010 Vienna', '2024-08-30 15:00:00', 'film@vienna-events.com', 43123123456, 3),
(4, 'Vienna Christmas Market Opening', 'Experience the magic of Vienna\'s Christmas market with handcrafted gifts, traditional food, and festive entertainment. The event kicks off the holiday season with a ceremonial lighting of the Christmas tree.', 'https://cdn.pixabay.com/photo/2021/01/06/09/19/dresden-5893714_640.jpg', 5000, 'Rathausplatz, 1010 Vienna', '2024-12-09 11:00:00', 'cuisine@vienna-events.com', 4365165465484, 7),
(5, 'Vienna Wine & Dine Experience', 'A gourmet evening pairing exquisite Austrian wines with a five-course meal crafted by Vienna\'s top chefs. Enjoy live music and a sommelier-led wine-tasting session.', 'https://cdn.pixabay.com/photo/2015/01/16/15/01/glasses-601575_640.jpg', 120, 'Palais Coburg, Coburgbastei 4, 1010 Vienna', '2024-08-20 19:00:00', 'cuisine@vienna-events.com', 4365165465484, 7),
(6, 'Vienna Art Night', 'An evening dedicated to contemporary art, with exhibitions, live performances, and interactive installations across multiple galleries in Vienna. Artists from around the world will showcase their work.', 'https://cdn.pixabay.com/photo/2017/08/06/09/29/man-2590655_1280.jpg', 500, 'Belvedere 21, Arsenalstraße 1, 1030 Vienna', '2024-09-07 18:00:00', 'exhibition@vienna-events.com', 43123123546, 2),
(7, 'Vienna Marathon', 'Join thousands of runners from around the globe in this annual marathon that takes you through Vienna’s historic streets and landmarks. The event includes a full marathon, half marathon, and relay race. Starting at Wagramer Straße, 1220 Vienna (Ending at ', 'https://cdn.pixabay.com/photo/2021/09/27/10/02/running-6660186_640.jpg', 20000, 'Wagramer Straße, 1220 Vienna', '2024-10-13 08:00:00', 'sports@vienna-events.com', 43159487156, 5),
(8, 'Vienna Jazz Festival', 'Enjoy an electrifying night of jazz music featuring performances by leading jazz artists and emerging talents from Austria and abroad. The event offers a fusion of classic and contemporary jazz styles.', 'https://cdn.pixabay.com/photo/2018/03/06/06/58/performance-3202707_1280.jpg', 300, 'Porgy & Bess, Riemergasse 11, 1010 Vienna', '2024-09-19 21:00:00', 'music@vienna-events.com', 43123123123, 4),
(9, 'Vienna Shakespeare Festival', 'Enjoy classic performances of Shakespeare’s plays, brought to life by renowned theater companies from around the world. The festival features both traditional and modern interpretations of Shakespeare\'s works.', 'https://cdn.pixabay.com/photo/2013/02/26/01/10/auditorium-86197_1280.jpg', 1000, 'Theater an der Wien, Linke Wienzeile 6, 1060 Vienna', '2024-09-15 18:00:00', 'theater@vienna-events.com', 43654321987, 6),
(10, 'Vienna Fringe Festival', 'A celebration of avant-garde and experimental theater, featuring performances by emerging artists and innovative theater companies. The festival spans various genres and styles, encouraging creative expression and audience interaction.', 'https://cdn.pixabay.com/photo/2024/02/12/17/49/theater-8569119_1280.jpg', 300, 'Various venues across Vienna', '2024-10-15 20:00:00', 'theater@vienna-events.com', 43654321987, 6),
(11, 'Vienna Gourmet Food Tour', 'Embark on a guided tour of Vienna’s finest culinary spots. Sample gourmet dishes, explore local markets, and learn about the city’s rich food culture from expert guides.', 'https://cdn.pixabay.com/photo/2021/02/04/12/47/food-5981232_640.jpg', 20, 'Naschmarkt, 1060 Vienna', '2024-08-24 11:00:00', 'cuisine@vienna-events.com', 4365165465484, 7),
(12, 'Vienna Chocolate Festival', 'A delectable event dedicated to all things chocolate. Enjoy tastings, workshops with master chocolatiers, and learn about the art and science of chocolate-making.', 'https://cdn.pixabay.com/photo/2016/12/11/20/01/coffee-1900194_1280.jpg', 1500, 'Hofburg Palace, Heldenplatz, 1010 Vienna', '2024-10-12 10:00:00', 'cuisine@vienna-events.com', 4365165465484, 7),
(13, 'Vienna Austrian Wine Harvest Festival', 'Celebrate the grape harvest with a festival showcasing the best of Austrian wines. Enjoy wine tastings, food pairings, and live music in a charming vineyard setting.', 'https://cdn.pixabay.com/photo/2015/05/31/11/15/wine-791133_640.jpg', 300, 'Weingut Wieninger, Stammersdorfer Straße 31, 1210 Vienna', '2024-09-28 14:00:00', 'cuisine@vienna-events.com', 4365165465484, 7);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_of_event`
--

CREATE TABLE `type_of_event` (
  `id` int(11) NOT NULL,
  `event_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_of_event`
--

INSERT INTO `type_of_event` (`id`, `event_type`) VALUES
(1, 'Classic Concerts'),
(2, 'Exhibitions'),
(3, 'Movies'),
(4, 'Concerts'),
(5, 'Sports'),
(6, 'Theater'),
(7, 'Cuisine'),
(8, 'Parties');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BAE0AA78675C9F1` (`type_of_event_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Indexes for table `type_of_event`
--
ALTER TABLE `type_of_event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_of_event`
--
ALTER TABLE `type_of_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_3BAE0AA78675C9F1` FOREIGN KEY (`type_of_event_id`) REFERENCES `type_of_event` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
