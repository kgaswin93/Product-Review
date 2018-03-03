-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2017 at 04:00 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productreview`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(34, 'Adidas'),
(20, 'ALCATEL'),
(18, 'APPLE'),
(30, 'aqewuriy'),
(23, 'ASUS'),
(28, 'aswin'),
(1, 'AUDI'),
(13, 'BEATS'),
(21, 'BLU'),
(2, 'BMW'),
(37, 'Bose'),
(6, 'BSA'),
(9, 'CAMPAGNOLO'),
(42, 'cheverolet'),
(33, 'Dell'),
(3, 'DODGE'),
(41, 'Ferrari'),
(40, 'Ford'),
(10, 'GARMIN'),
(36, 'Godrej'),
(8, 'HERCULES'),
(24, 'INSIGNIA'),
(14, 'JBL'),
(31, 'krishna'),
(5, 'LANCER'),
(19, 'LG'),
(4, 'MARUTI'),
(38, 'Mercedes'),
(16, 'MICROSOFT XBOX'),
(39, 'MiniCooper'),
(15, 'MONSTER'),
(22, 'MOTOROLA'),
(26, 'PANASONIC'),
(35, 'RayBan'),
(11, 'SAMSUNG'),
(27, 'SHARP'),
(12, 'SONY'),
(17, 'SONY PLAYSTATION'),
(25, 'TCL'),
(7, 'THUNDERBIRD'),
(32, 'Vans'),
(29, 'xmvbakj');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `deletedyn` varchar(1) NOT NULL,
  `image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `deletedyn`, `image`) VALUES
(1, 'Car', '', 'audia8.jpg'),
(2, 'Cycle', '', 'cycle.jpg'),
(3, 'TV', '', 'tv.jpg'),
(4, 'Electronics', '', 'electronics.jpg'),
(5, 'Mobiles', '', 'mobiles.jpg'),
(6, 'Shoes', '', 'shoes.jpg'),
(7, 'Tables', '', 'table.jpg'),
(8, 'Sports', '', 'sports.jpg'),
(9, 'Sunglasses', '', 'sunglasses.jpg'),
(10, 'Laptops', '', 'laptops.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(25, ''),
(20, ' brake wires'),
(5, 'A backup camera'),
(16, 'a basket on the front '),
(19, 'a covered chain'),
(18, 'a lock and chain'),
(17, 'adjustable seat '),
(11, 'android'),
(14, 'athletic'),
(39, 'Automatic'),
(4, 'Automatic emergency braking'),
(10, 'Automatic high beams'),
(33, 'BigScreen'),
(7, 'Blind-spot monitoring'),
(8, 'Bluetooth connectivity'),
(36, 'comfortable'),
(1, 'Comfortable seats'),
(27, 'compact'),
(12, 'czxcvasidfyis'),
(23, 'easy mount and dismount'),
(37, 'family'),
(41, 'Fastest'),
(3, 'Forward-collision warning'),
(9, 'Head-up displays'),
(28, 'HighGraphics'),
(35, 'HighQuality'),
(34, 'NoiseCancellation'),
(2, 'Power driver seat '),
(38, 'PowerWindows'),
(21, 'protect clothing'),
(6, 'Rear cross-traffic alert'),
(24, 'safety bell'),
(29, 'Size5'),
(42, 'Smart'),
(30, 'SteelFrame'),
(22, 'step-through frame '),
(26, 'stylish'),
(32, 'Stylus'),
(15, 'three gears'),
(40, 'v8'),
(13, 'vcamnsdfqwehriqwer'),
(31, 'Wood');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategoryid` int(11) NOT NULL,
  `brandid` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `date` date NOT NULL,
  `content` longtext NOT NULL,
  `deletedyn` varchar(1) NOT NULL,
  `images` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `categoryid`, `subcategoryid`, `brandid`, `price`, `date`, `content`, `deletedyn`, `images`) VALUES
(1, 'AUDI A8', 1, 1, 1, 2000, '2017-11-27', 'The Audi A8 is a four-door, full-size, luxury sedan manufactured and marketed by the German automaker Audi since 1994. Succeeding the Audi V8, and now in its third generation, the A8 has been offered with both front- or permanent all wheel drive and in short and long wheelbase variants. The first two generations employed the Volkswagen Group D platform, with the current generation deriving from the MLB platform. After the original models 1994 release, Audi released the second generation in late 2002, and the third and current iteration in late 2009.', '', 'audia8.jpg'),
(2, 'BMWi87', 1, 1, 2, 6234, '2017-11-27', 'hello134', '', 'bmw.jpg'),
(3, 'DODGE CHARGER', 1, 2, 3, 1500, '2017-11-27', 'The Dodge Charger is a brand of automobile marketed by Dodge. The first Charger was a show car in 1964. There have been several different production Chargers, built on three different platforms and sizes. In the U.S., the Charger nameplate has been used on subcompact hatchbacks, full-sized sedans, and personal luxury coupes. The current version is a four-door sedan.', '', 'dodgecharger.jpg'),
(4, 'MARUTI', 1, 3, 4, 1000, '2017-11-27', 'The', '', 'baleno.jpg'),
(5, 'MITSUBISHI LANCER', 1, 4, 5, 2000, '2017-11-27', 'The Mitsubishi Lancer is a compact car produced by the Japanese manufacturer Mitsubishi since 1973. It has been marketed as the Colt Lancer, Dodge/Plymouth Colt, Chrysler Valiant Lancer, Chrysler Lancer, Eagle Summit, Hindustan Lancer, Soueast Lioncel, and Mitsubishi Mirage in various countries at different times, and has been sold as the Mitsubishi Galant Fortis in Japan since 2007. It has also been sold as Mitsubishi Lancer Fortis in Taiwan with a different facelift than the Galant Fortis. In Japan, it was sold at a specific retail chain called Car Plaza.', '', 'lancer.jpg'),
(12, 'Hercules 1.0', 2, 8, 8, 500, '2017-11-14', 'They have a light frame, medium gauge wheels, and derailleur gearing, and feature straight or curved-back, touring handlebars for more upright riding and a hybrid with all the accessories necessary for bicycle touring - mudguards, pannier rack, lights etc', '', 'hercules.jpg'),
(13, 'BSA bicycle', 2, 8, 6, 300, '2017-12-04', 'It designed specifically for commuting over short or long distances. It typically features derailleur gearing, 700c wheels with fairly light 1.125-inch (28 mm) tires, a carrier rack, full fenders, and a frame with suitable mounting points for attachment of various load-carrying baskets or panniers. It sometimes, though not always, has an enclosed chainguard to allow a rider to pedal the bike in long pants without entangling them in the chain', '', 'bsa.jpg'),
(14, 'Hercules 2.0', 2, 8, 6, 200, '2017-11-20', 'it optimized for the rough-and-tumble of urban commuting. The city bike differs from the familiar European city bike in its mountain bike heritage', '', 'bsa2.jpg'),
(15, 'Hercules 3.0', 2, 8, 8, 600, '2017-12-04', 'It usually features mountain bike-sized (26-inch) wheels, a more upright seating position, and fairly wide 1.5 - 1.95-inch (38 – 50 mm) heavy belted tires designed to shrug off road hazards commonly found in the city,', '', 'her1.jpg'),
(16, 'Hercules 4.0', 2, 8, 8, 1000, '2017-12-01', 'Using a sturdy welded chromoly or aluminum frame derived from the mountain bike, the city bike is more capable at handling urban hazards such as deep potholes, drainage grates, and jumps off city curbs.', '', 'her2.jpg'),
(17, 'Hercules 5.0', 2, 8, 8, 800, '2017-12-05', 'City bikes are designed to have reasonably quick, yet solid and predictable handling, and are normally fitted with full fenders for use in all weather conditions.', '', 'her3.jpg'),
(18, 'Hercules 6.0', 2, 8, 8, 1800, '2017-12-01', 'A few city bikes may have enclosed chainguards, while others may be equipped with suspension forks, similar to mountain bikes. City bikes may also come with front and rear lighting systems for use at night or in bad weather.', '', 'her4.jpg'),
(19, 'BSA Bicycle 2.0', 2, 8, 6, 700, '2017-12-04', 'Comfort bikes typically incorporate such features as front suspension forks, seat post suspension with wide plush saddles, and drop-center, angled North Road style handlebars designed for easy reach while riding in an upright position.', '', 'bsa2.jpg'),
(20, 'BSA bicycle 3.0', 2, 8, 6, 300, '2017-12-03', ' kind of cargo bicycle designed for carrying loads on a platform rack attached to the fork', '', 'bsa4.jpg'),
(21, 'BSA bicycle 4.0', 2, 8, 6, 600, '2017-12-05', 'a type of bicycle (specifically a type of longbike) with a longer than usual frame wheelbase at the rear compared to a standard utility bicycle.', '', 'bsa5.jpg'),
(22, 'BSA bicycle 6.0', 2, 8, 6, 200, '2017-11-13', 'designed for off-road cycling. All mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts.', '', 'bsa7.jpg'),
(23, 'Hercules 7.0', 2, 8, 8, 1500, '2017-12-08', 'Mountain bicycle gearing is often very wide-ranging, from very low ratios to mid ratios, typically with 16 to 28 gears, although some riders prefer the mechanical simplicity and ease of maintenance of single-speed mountain bikes.', '', 'her8.jpg'),
(24, 'Hercules 8.0', 2, 8, 8, 800, '2017-12-04', 'heavy framed bicycles designed for comfort, with curved back handlebars, padded seats, and balloon tires. They are also called beach bikes or boulevardiers and are designed for comfortable travel', '', 'her9.jpg'),
(25, 'Hercules 10.0', 2, 8, 6, 750, '2017-12-04', 'Cruisers were the bicycle standard in the United States from the 1930s until the 1950s. The traditional cruiser is single-speed with coaster brakes, but modern cruisers come with three to seven speeds. Aluminum frames have recently been used in Cruiser construction, lowering weight. Cruisers typically have minimal gearing and are often available for rental at beaches and parks which feature flat terrain.', '', 'her10.jpg'),
(26, 'BSA bicycle 10.0', 2, 8, 6, 300, '2017-12-04', 'transmission used either to power the vehicle unassisted, or to assist with pedaling. Since it always retains both pedals and a discrete connected drive for rider-powered propulsion, the motorized bicycle is in technical terms a true bicycle, albeit a power-assisted one. However, for purposes of governmental licensing and registration requirements, the type may be legally defined as a motor vehicle, motorcycle, moped, or a separate class of hybrid vehicle. Powered by a variety of engine types and designs, the motorized bicycle formed the prototype for what would later become the motorcycle.', '', 'bsa11.jpg'),
(27, 'Fly high', 6, 42, 32, 29, '2017-12-06', 'Perfect for teen', '', 'vans.jpg'),
(28, 'Xps 15', 10, 43, 33, 1700, '2017-12-06', 'Best Laptop for students', '', 'xps15.jpg'),
(29, 'Alienware', 10, 44, 33, 2400, '2017-12-06', 'High performance Gaming laptop', '', 'alienware.jpg'),
(30, 'Jabulani', 8, 46, 34, 12, '2017-12-06', 'Apt for street soccer', '', 'jabulani.jpg'),
(31, 'RayBan Coolers', 9, 45, 35, 28, '2017-12-06', 'For a Cool Summer', '', 'rayban.jpg'),
(32, 'Posh Coffee Table', 7, 47, 36, 178, '2017-12-06', 'stylish home decor', '', 'godrejcoffee.jpg'),
(33, 'Note8', 5, 32, 11, 700, '2017-12-06', 'Best phone in the market', '', 'note8.jpg'),
(34, 'Ipad Pro', 5, 35, 18, 900, '2017-12-06', 'Best student friendly tab', '', 'ipad.jpg'),
(35, 'Qc35', 4, 16, 37, 349, '2017-12-06', 'Excellent headphone for travellers', '', 'boseqc.jpg'),
(36, 'Flip3', 4, 18, 14, 100, '2017-12-06', 'Sounds like a beast', '', 'flip3.jpg'),
(37, 'Benz', 1, 1, 38, 25000, '2017-12-06', 'So comfortable ', '', 'benz.jpg'),
(38, 'Countrymen', 1, 1, 39, 45000, '2017-12-06', 'Small and stylish', '', 'cooper.jpg'),
(39, 'Q5', 1, 1, 1, 87000, '2017-12-06', 'Desc', '', 'q5.jpg'),
(40, 'R8', 1, 1, 1, 87342, '2017-12-06', 'Desc', '', 'r8.jpg'),
(41, 'Mustang', 1, 1, 40, 76599, '2017-12-06', 'Bulky', '', 'mustang.jpg'),
(42, 'Fury', 1, 1, 41, 53264, '2017-12-06', 'Desc', '', 'fury.jpg'),
(43, 'Camero', 1, 1, 42, 67343, '2017-12-06', 'Desc', '', 'camero.jpg'),
(44, '4Matic', 1, 1, 38, 48767, '2017-12-06', 'Desc', '', 'matic.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `featureid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `productid`, `featureid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 7),
(5, 2, 8),
(6, 2, 4),
(7, 3, 3),
(8, 3, 10),
(9, 3, 9),
(10, 4, 1),
(11, 4, 2),
(12, 4, 10),
(13, 5, 6),
(14, 5, 5),
(15, 5, 9),
(21, 13, 16),
(22, 20, 17),
(23, 13, 18),
(24, 21, 18),
(25, 12, 16),
(26, 14, 23),
(27, 15, 20),
(28, 16, 10),
(29, 17, 21),
(30, 18, 24),
(31, 24, 4),
(32, 23, 22),
(33, 19, 17),
(34, 22, 20),
(35, 26, 18),
(36, 21, 15),
(37, 15, 21),
(38, 17, 19),
(39, 25, 16),
(40, 18, 17),
(41, 27, 26),
(42, 28, 27),
(43, 29, 28),
(44, 30, 29),
(45, 31, 30),
(46, 32, 31),
(47, 33, 32),
(48, 34, 33),
(49, 35, 34),
(50, 36, 35),
(51, 37, 36),
(52, 38, 37),
(53, 39, 38),
(54, 40, 39),
(55, 41, 40),
(56, 42, 41),
(57, 43, 40),
(58, 44, 42);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `rating` decimal(10,0) NOT NULL,
  `feedback` longtext NOT NULL,
  `datereviewed` datetime NOT NULL,
  `deletedyn` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `productid`, `userid`, `rating`, `feedback`, `datereviewed`, `deletedyn`) VALUES
(1, 1, 1, 1, '0', '2017-11-05 00:00:00', ''),
(2, 2, 1, 5, 'Very Good!', '2017-11-15 00:00:00', ''),
(3, 3, 3, 1, 'Poor', '2017-11-29 00:00:00', ''),
(4, 4, 3, 3, 'Okayish', '2017-11-11 00:00:00', ''),
(5, 5, 4, 4, 'Good!', '2017-11-21 00:00:00', ''),
(6, 1, 3, 1, '0', '2017-11-04 00:00:00', ''),
(7, 1, 2, 3, 'Finally I got it workedddddddddd', '2017-12-06 02:58:27', ''),
(9, 5, 3, 3, 'Looks good', '0000-00-00 00:00:00', ''),
(10, 1, 15, 4, 'Mukesh Kumarrrrrrrrrrrrqwasasasas', '2017-12-02 11:08:55', 'Y'),
(11, 1, 14, 2, 'mukesh kumar', '2017-12-02 10:35:18', ''),
(12, 5, 14, 3, 'saassasa', '2017-12-02 00:00:00', ''),
(13, 2, 14, 3, 'asasssssssssssssssssssss', '2017-12-02 00:00:00', ''),
(14, 4, 14, 3, 'ssssssssssssssssssssssssssssssss', '0000-00-00 00:00:00', ''),
(20, 1, 16, 2, 'nmbasdft435', '2017-12-03 09:36:31', ''),
(24, 1, 5, 5, 'bu firsat icin tesekkurler\r\n', '2017-12-06 00:00:00', ''),
(25, 27, 16, 3, 'Excellent Shoes', '2017-12-06 09:43:04', ''),
(26, 31, 16, 5, 'Awesome', '2017-12-06 09:45:18', ''),
(27, 30, 16, 4, 'I love it', '2017-12-06 09:45:55', ''),
(28, 34, 16, 5, 'Best Tablet Ever', '2017-12-06 09:46:19', ''),
(29, 35, 16, 5, 'Too good', '2017-12-06 09:47:10', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rolename` varchar(400) NOT NULL,
  `adminrights` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `rolename`, `adminrights`) VALUES
(1, 'user', 'N'),
(2, 'admin', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `deletedyn` varchar(1) NOT NULL,
  `image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `name`, `deletedyn`, `image`) VALUES
(1, 1, 'Luxury', '', 'luxury.jpg'),
(2, 1, 'Compact', '', 'compact.jpg'),
(3, 1, 'Economy', '', 'economy.jpg'),
(4, 1, 'Roadster', '', 'roadster.jpg'),
(6, 2, 'Tandem', '', 'tandem.jpg'),
(7, 2, 'GEAR', '', 'gearcycle.jpeg'),
(8, 2, 'BICYCLE', '', 'bicycle.jpg'),
(9, 2, 'Tricycle', '', 'tricycle.jpg'),
(10, 3, 'LED', '', 'ledtv.jpg'),
(11, 3, 'LCD', '', 'lcdtv.jpg'),
(12, 3, 'SMART', '', 'smarttv.jpg'),
(16, 4, 'HEADPHONES', '', 'headphones.jpg'),
(18, 4, 'SPEAKER', '', 'speaker.jpg'),
(32, 5, 'Smart', '', 'smartphone.jpg'),
(35, 5, 'TABLET', '', 'tablet.jpg'),
(42, 6, 'sneakers', '', 'sneakers.jpg'),
(43, 10, 'Personal', '', 'personal.jpg'),
(44, 10, 'Gaming', '', 'gaming.jpg'),
(45, 9, 'Aviator', '', 'aviator.jpg'),
(46, 8, 'Soccer', '', 'soccer.jpg'),
(47, 7, 'Coffee Table', '', 'coffeetable.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `fname` varchar(400) NOT NULL,
  `lname` varchar(400) NOT NULL,
  `password` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `roleid` int(11) NOT NULL,
  `review_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `password`, `email`, `roleid`, `review_count`) VALUES
(1, 'mukesh', 'mukesh', 'g s', 'mukesh', 'mukesh2249@gmail.com', 1, 0),
(2, 'mukesh1', 'm', 'm', '$2y$12$k3O7grv1quHyJ5mMbFCopexsWb5tIfBtthH8wb/EijgkoGhi6g9x.', 'a@a.c', 1, 0),
(3, 'mukesh123', 'm', 'm', '$2y$12$T1HdZyuKir6ju4cyP5jrNuMzmQO6tZTn4SKETL8JSPykdljT/pV7y', 'b@a.c', 1, 0),
(4, 'mukeshabc', 'mukesh', 'kumar', '$2y$12$sW/2IDdSjxMws05CwTnBPeiCEvQIRkewfk706VBSXvnT1roWDzTqu', 'mukesh123@gmail.com', 1, 0),
(5, 'mukesh456', 'mukesh', 'kumar', '$2y$12$N11yTZuLDmi6e22xZaQ9OuA3cWBr.zksubZmECbziExhlw8ExwouC', 'jai@jai.com', 1, 0),
(6, '1234mukesh', 'mukesh', 'kumar', '$2y$12$35WCT6odyh5p5n4YOBBOvOCjL5je1DOR4QblkWIDQf8atxYn39VwG', 'mukesh2249@gmail.comm', 1, 0),
(7, 'jagsajgsasg', 'as', 'j', '$2y$12$OHX3H4/riK2Ah.Vel5Jecuicl0xu26g5IPR5E5n5As6iXce7LH3TK', 'm@abc.c', 1, 0),
(8, 'Mukeshcheck', 'M', 'm', '$2y$12$lOFsWIx2TG8Q1XXcSIomeuISuiXNUeAkHyb.nkZpiO7JhWS8rY6fq', 'asasa@asa.com', 1, 0),
(9, 'checking', 'm', 'm', '$2y$12$BOsAwvxilUpc5bkOmxwyku0FxWVmNiupFSvHCI1GmGtts1nnn94Zi', 'check@ch.com', 1, 0),
(12, 'check123', 'm', 'm', '$2y$12$EDqjFyZyz1FOljpPPLb6BeoG0jP2aD0t3OIBsDf8DrNyubyY4aYwS', 'mukesh@muk.com', 1, 0),
(13, 'firstuuchecking', 'm', 'm', '$2y$12$ZpJYIgO8DplK28VtdE6aneOWhBzs43jrUQ05hm4T0JbGYdRzlBGZC', 'check123@ch.com', 1, 0),
(14, 'mukesh1234', 'm', 'm', '$2y$12$YGOYm18i7bKE9RqPeE80MO2WV.gxOFoqYprB3i58FpGOJ6sbIkiGi', 'mukesh@123.com', 1, 0),
(15, 'kgaswin', 'm', 'm', '$2y$12$LSNpxjB8gpI1semE.Sj6OOZfaBkGegPmv9j2bcxfOMG3aa9ILU5LW', 'mukesh@gmail.com', 1, 0),
(16, 'kgaswin93', 'aswin', 'asdjdfh', '$2y$12$zrA1zdHDZ2tZhoG2HJ6Tb.vAwUnrwy/2ALYwnB0ePXMDGqCEvNHnG', 'kgaswin93@gmail.com', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `deletedyn` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userid`, `productid`, `deletedyn`) VALUES
(3, 2, 3, ''),
(4, 2, 4, ''),
(5, 2, 5, ''),
(9, 15, 1, ''),
(14, 2, 1, ''),
(15, 16, 2, ''),
(17, 16, 43, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandid` (`brandid`),
  ADD KEY `categoryid` (`categoryid`),
  ADD KEY `subcategoryid` (`subcategoryid`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featureid` (`featureid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `productid_2` (`productid`),
  ADD KEY `userid_2` (`userid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleid` (`roleid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brandid`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `product_features_ibfk_1` FOREIGN KEY (`featureid`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_features_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
