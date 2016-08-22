-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2016 at 04:47 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Comparisontool`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_property`
--

CREATE TABLE IF NOT EXISTS `ct_property` (
  `cp_id_pk` int(11) NOT NULL AUTO_INCREMENT,
  `cp_property_name` varchar(255) NOT NULL,
  `cp_image` text NOT NULL,
  `cp_district` varchar(255) NOT NULL,
  `cp_tenure` varchar(255) NOT NULL,
  `cp_development_year` varchar(255) NOT NULL,
  `cp_nearest_mrp` text NOT NULL,
  `cp_cbd_connectivity` text NOT NULL,
  `cp_average_psf_price` varchar(255) NOT NULL,
  `cp_per_month_sales` varchar(255) NOT NULL,
  `cp_sale_liquidity_index` varchar(255) NOT NULL,
  `cp_rental_psf` varchar(255) NOT NULL,
  `cp_rent_liquidity_index` varchar(255) NOT NULL,
  `cp_rental_yield` varchar(255) NOT NULL,
  `cp_condominium_heigh` varchar(255) NOT NULL,
  `cp_armenties` varchar(255) NOT NULL,
  `cp_created_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cp_id_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ct_property`
--

INSERT INTO `ct_property` (`cp_id_pk`, `cp_property_name`, `cp_image`, `cp_district`, `cp_tenure`, `cp_development_year`, `cp_nearest_mrp`, `cp_cbd_connectivity`, `cp_average_psf_price`, `cp_per_month_sales`, `cp_sale_liquidity_index`, `cp_rental_psf`, `cp_rent_liquidity_index`, `cp_rental_yield`, `cp_condominium_heigh`, `cp_armenties`, `cp_created_datetime`) VALUES
(1, 'The Sail @ Marina Bay', 'image1.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:39:17'),
(2, 'Condo01', 'image2.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:55'),
(3, 'Condo02', 'image3.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:39:55'),
(4, 'Condo03', 'image4.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:00'),
(5, 'Condo04', 'image5.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:05'),
(6, 'Condo05', 'image6.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:09'),
(7, 'Condo06', 'image7.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:12'),
(8, 'Condo07', 'image8.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:16'),
(9, 'Condo08', 'image9.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:24'),
(10, 'Condo09', 'image10.jpg', 'D15 - Katong', 'Freehold', '2010', 'MRT Tanjong Pagar <svg height="15" width="15">\n  <circle cx="8" cy="8" r="6" stroke-width="2" fill="green" />  \n</svg><br>&nbsp;&nbsp;<i class="material-icons" style="font-size:130%">directions_walk</i> 2 mins', '<i class="material-icons" style="font-size:100%">directions_car</i> 5 mins &nbsp; &nbsp; &nbsp;  <i class="material-icons" style="font-size:100%">directions_subway</i>  10 mins', '$$XXXXPSF', 'X,XXX', '$$X,XXX,XXX', 'S$X,XXX PSF', 'S#X,XXXX,XXX', 'X.X%', 'Low Rise', 'BBQ,Pool Gym, Playground, Tennis', '2016-08-22 10:40:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;