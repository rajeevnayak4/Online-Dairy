-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinedairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'test', '098f6bcd4621d373cade4e832627b4f6', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `pid` int(100) DEFAULT NULL,
  `deliverydate` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `pid`, `deliverydate`, `message`, `Status`, `quantity`, `PostingDate`) VALUES
(10, 'ray21@gmail.com', 73, 'Today, 2 PM ', 'Provide with Good Packaging', 0, '500 gm ', '2020-05-25 16:15:07'),
(11, 'adam24@gmail.com', 42, '11th May, 2020', 'Provide with Good Packaging.', 0, '21', '2020-05-26 10:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(23, 'Chaokoh', '2020-05-24 16:29:39', NULL),
(24, 'JK ', '2020-05-24 16:29:43', NULL),
(25, 'Nestle', '2020-05-24 16:29:57', NULL),
(26, 'DDC', '2020-05-24 16:30:01', NULL),
(27, 'Amul', '2020-05-24 16:30:06', NULL),
(28, 'Red Cow', '2020-05-24 16:30:13', NULL),
(29, 'Blue Cow', '2020-05-24 16:30:17', NULL),
(30, 'Kanchan', '2020-05-24 16:31:12', NULL),
(32, 'Bhanbori', '2020-05-24 16:31:28', NULL),
(33, 'Nova', '2020-05-25 15:42:53', NULL),
(34, 'Kraft', '2020-05-25 15:43:02', NULL),
(35, 'Others', '2020-05-25 15:43:15', NULL),
(36, 'Local', '2020-05-25 15:43:18', NULL),
(37, 'Sunlee', '2020-05-25 15:43:32', NULL),
(38, 'F&N', '2020-05-25 15:43:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Siraha ', 'shahsanjeet11@gmail.com', '9801145611');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Sanjeet Sah ', 'shahsanjeet11@gmail.com', '9801145611', 'Good Service', '2017-06-18 10:03:07', 1),
(2, 'Terry Grey ', 'terry21@gmail.com', '9842323221', 'Really, thankful for years of services from you.', '2020-05-16 14:53:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																														<p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">Term and Conditions:</span></strong></font></p><p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">* Everything kept or posted in this site including graphics and written descriptions are all right reserved and property of onlinedairy.com</span></strong></font></p><p align="justify"><font size="2"><strong><span style="color: rgb(153, 0, 0);">* Our visitor can create a free account and user''s information are kept highly confidential</span></strong></font><font size="2"><br></font></p>\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<div style="text-align: justify;"><span style="font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;">Privacy and Policies:</span></div><div style="text-align: justify;"><span style="color: rgb(51, 51, 51); font-family: lato, serif; font-size: 15px;">As part of the registration process on the Site, relevant agent may collect the following personally identifiable information about you: Name including first and last name, alternate email address, mobile phone number and contact details, Postal code, Demographic profile (like your age, gender, occupation, education, address etc.) and information about the pages on the site you visit/access, the links you click on the site, the number of times you access the page and any such browsing information.</span><br></div>\r\n										'),
(3, 'About Us ', 'aboutus', '																																																		<a name="what" style="margin: 0px; padding: 0px 0px 15px; font-size: 23px; color: rgb(88, 89, 91); font-family: &quot;Roboto Slab&quot;, serif; display: block; background-color: rgb(255, 255, 255);">What is onlinedairy.com</a><span style="color: rgb(128, 130, 133); font-family: Lato, sans-serif;">olinedairy.com is Nepal''s one and only first dairy item e-commerce store that delivers at your footstep. With over numbers of products and over 10+ brands in our catalog you will find everything you are looking for. Right from fresh cow milk, cheese, butter, ghee, and other dairy items</span><br style="margin: 0px; padding: 0px; color: rgb(128, 130, 133); font-family: Lato, sans-serif;"><span style="color: rgb(128, 130, 133); font-family: Lato, sans-serif;">Choose from a wide range of options in every category, exclusively handpicked to help you find the best quality available at the lowest prices. Select a time slot for delivery and your order will be delivered right to your doorstep, anywhere in Ktm, Lalitpur, and Bhaktapur and pay via online or cash on delivery.</span><br style="margin: 0px; padding: 0px; color: rgb(128, 130, 133); font-family: Lato, sans-serif;"><span style="color: rgb(128, 130, 133); font-family: Lato, sans-serif;">We guarantee on-time delivery, and the best quality!</span><span class="uiv2-happy-shop" style="text-align: center; margin: 22px 0px 0px; padding: 0px; color: rgb(109, 110, 113); font-family: &quot;Roboto Slab&quot;, serif; width: 470px; display: block;"><br></span>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																												<div class="muiv2-ques" style="padding: 5px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(231, 225, 225); border-left-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; color: rgb(101, 101, 101); font-family: latoregular; margin: 5px 10px !important;"><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; color: rgb(51, 51, 51); padding-bottom: 4px !important; font-family: roboto !important; font-size: 15px !important;">How do I register?</h1><p style="text-align: justify; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; font-size: 12px; line-height: 18px;">You can register by clicking on the "Login/Signup" and click on the "Sign Up Here"link at the top right corner of the homepage. Please provide the information in the form that appears and you will be registered instantly.</p></div><div class="muiv2-ques" style="padding: 5px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(231, 225, 225); border-left-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; color: rgb(101, 101, 101); font-family: latoregular; margin: 5px 10px !important;"><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; color: rgb(51, 51, 51); padding-bottom: 4px !important; font-family: roboto !important; font-size: 15px !important;">Are there any charges for registration?</h1><p style="text-align: justify; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; font-size: 12px; line-height: 18px;">No. Registration on onlinedairy.com is absolutely free.</p></div><div class="muiv2-ques" style="padding: 5px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(231, 225, 225); border-left-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; color: rgb(101, 101, 101); font-family: latoregular; margin: 5px 10px !important;"><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; color: rgb(51, 51, 51); padding-bottom: 4px !important; font-family: roboto !important; font-size: 15px !important;">Do I have to necessarily register to shop on online dairy?</h1><p style="text-align: justify; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; font-size: 12px; line-height: 18px;">No, you can directly phone call or message us and after a proper confirmation on the delivery we will provide the product at your doorstep.</p></div><div class="muiv2-ques" style="padding: 5px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(231, 225, 225); border-left-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; margin: 5px 10px !important; font-family: latoregular; color: rgb(101, 101, 101);"><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; color: rgb(51, 51, 51); padding-bottom: 4px !important; font-family: roboto !important; font-size: 15px !important;">Can I have multiple registrations?</h1><p style="text-align: justify; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; font-size: 12px; line-height: 18px;">No, unless you have several Gmail accounts.</p></div><div class="muiv2-ques" style="padding: 5px 0px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(231, 225, 225); border-left-color: initial; border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; color: rgb(101, 101, 101); font-family: latoregular; margin: 5px 10px !important;"><h1 style="text-align: justify; margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; color: rgb(51, 51, 51); padding-bottom: 4px !important; font-family: roboto !important; font-size: 15px !important;">Can I add more than one delivery address to an account?</h1><p style="text-align: justify; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; list-style: none; font-size: 12px; line-height: 18px;">Yes, you can add it according to your latest location.&nbsp;</p></div><p></p>										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `BrandName` int(100) DEFAULT NULL,
  `ProductOverview` longtext,
  `Price` int(11) DEFAULT NULL,
  `BestBefore` varchar(100) DEFAULT NULL,
  `MadeYear` int(6) DEFAULT NULL,
  `PaymentType` varchar(100) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `ProductName`, `BrandName`, `ProductOverview`, `Price`, `BestBefore`, `MadeYear`, `PaymentType`, `Vimage1`) VALUES
(42, 'Delicious Margarine', 27, 'Amul Delicious Margarine 500 gm ..', 190, '2 months', 2020, 'Cash', 'product delicious.jpg'),
(43, 'Cheese 10 Slice ', 27, 'Amul Cheese 10 Slice- Processed Cheese Spread', 250, '1 Week', 2020, 'Cash', 'amul.jpg'),
(44, 'Pasteurised Butter', 33, 'Nova Pasteurised Butter 500g Block', 410, '6 months', 2020, 'Cash', 'butter2.jpg'),
(45, 'Pizza Cheese Mozzarella ', 27, 'Amul''s Pizza Cheese Mozzarella, 1kg', 950, '6 months', 2020, 'Cash', 'p22.jpg'),
(46, 'Sweetned Dairy Creamer ', 29, 'Blue Cow Sweetned Dairy Creamer 390 Gm', 135, '6 months', 2020, 'Cash', 'p23.jpg'),
(47, 'Dairy Creamier', 24, 'JK Dairy Top Dairy Creamer- Creamier and Tastier - 800 gm ', 772, '6 months', 2020, 'Cash', 'p21.jpg'),
(48, 'Paneer', 26, 'DDC Paneer 500 gm (Made from Fresh Milk)', 385, '1/2 Weeks', 2020, 'Cash', 'p20.jpg'),
(49, 'Full Cream Milk ', 28, 'Red Cow Instant Full Cream Milk Powder 1 kg, 2200', 2200, '12 months', 2020, 'Cash', 'p19.jpg'),
(50, 'EveryDay ', 25, 'Nestle Everyday Milk Powder 400 g - (KH-263)', 419, '12 months', 2020, 'Cash', 'p18.jpg'),
(51, 'Dairy Creamer', 24, 'JK Dairy Top Dairy Creamer - Creamier and Tastier - 400 gm ', 386, '12 months', 2020, 'Cash', 'p17.jpg'),
(52, 'Lassi', 27, 'Amul Lassi, 200 ml', 40, '6 months', 2020, 'Cash', 'p15.jpg'),
(54, 'Fresh Cream ', 27, 'Amul Fresh Cream, 1 Litre', 560, '1 Week', 2020, 'Cash', 'p13.jpg'),
(55, 'Yak Cheese', 26, 'DDC Yak Cheese, 200 gm ', 370, '6 months', 2020, 'Cash', 'p12.jpg'),
(56, 'EveryDay ', 25, 'Nestle Everyday Milk Powder - 800 g - (KH-262)\r\n', 830, '12 months', 2020, 'Cash', 'p11.jpg'),
(57, 'Coconut Milk', 32, 'Bhanbori Coconut Milk, 400 ml', 230, '6 months', 2020, 'Cash', 'p10.jpg'),
(58, 'Cow Milk Cheese', 30, 'Kanchan Cheese - Made of Cow Milk', 210, '12 months', 2020, 'Cash', 'p9.jpg'),
(59, 'Cheese Block ', 27, 'Amul Cheese Block, 1kg ', 950, '2 months', 2020, 'Cash', 'p8.jpg'),
(60, 'Paneer ', 26, 'DDC Paneer, 200 g (Made of Fresh Milk)\r\n', 160, '6 months', 2020, 'Cash', 'p7.jpg'),
(61, 'Butter', 27, 'Amul Pasteurized Butter, 100 g', 130, '2 months', 2020, 'Cash', 'p6.jpg'),
(62, 'Fresh Keshar Milk ', 26, 'DDC Fresh Keshar Milk, 200 ml ', 60, '1/2 Weeks', 2020, 'Cash', 'p5.jpg'),
(63, 'Butter', 27, 'Amul Pasteurized Butter - 500 g', 650, '1/2 Weeks', 2020, 'Cash', 'p4.jpg'),
(64, 'Cheese', 27, 'Amul Cheese - Chiplet, 200 g Pack ', 230, '1/2 Weeks', 2020, 'Cash', 'p3.jpg'),
(65, 'Butter', 26, 'DDC Butter, 250g', 250, '1/2 Weeks', 2020, 'Cash', 'p2.jpg'),
(66, 'Milk', 33, 'Nova Milk, 1 ltr', 70, '1/2 Weeks', 2020, 'Cash', 'nova milk 1 ltr.jpg'),
(67, 'Malt Milk ', 25, 'Nestle Milo Cocoa Malt MIlk Beverage, 180 ml', 50, '6 months', 2020, 'Cash', 'milo .jpg'),
(68, 'Kool Kesar Flavored Milk ', 27, 'Amul Kool Kesar Flavored Milk, 200 ml ', 90, '1/2 Weeks', 2020, 'Cash', 'milkk.jpg'),
(69, 'Cheese Block ', 34, 'Kraft Cheese Block, 200 g (AD-0028)\r\n', 320, '6 months', 2020, 'Cash', 'kraft.jpg'),
(70, 'Creamy Condensed Milk ', 38, 'F&N Rich & Creamy Condensed Milk', 120, '3 months', 2020, 'Cash', 'condensed milk.jpg'),
(71, 'Coconut Cream ', 37, 'Sunlee Coconut Cream, 400 ml ', 230, '6 months', 2020, 'Cash', 'coco cream.jpg'),
(72, 'Yak Milk Churpi ', 35, 'Organic Yak Milk Churpi, 500 gm ', 750, '12 months', 2020, 'Cash', 'churpo.jpg'),
(73, 'Churpi', 35, 'Churpi 500 gm ', 280, '12 months', 2020, 'Cash', 'churpi.jpg'),
(74, 'Koko Chocolate Milk ', 27, 'Amul Kool Koko Chocolate Milk 200 ml', 65, '2 months', 2020, 'Cash', 'choco milk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'bryan3@gmail.com', '2020-05-16 12:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'Bryan3@gmail.com', 'Best Dairy Item and Freshly Brought From Organic Farm', '2020-05-16 14:06:07', 1),
(4, 'rick23@gmail.com', 'Faster service, i love it. Thank You for it. ', '2020-05-16 14:38:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(8, 'Rick ', 'ricksacnhez@gmail.com', '00c66aaf5f2c3f49946f15c1ad2ea0d3', '9867364545', NULL, NULL, NULL, NULL, '2020-05-25 16:13:46', NULL),
(9, 'ray', 'ray21@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9841332211', NULL, NULL, NULL, NULL, '2020-05-25 16:14:34', NULL),
(10, 'Adam Smith', 'adam24@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9841212323', NULL, NULL, NULL, NULL, '2020-05-26 10:26:28', '2020-05-26 15:43:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
