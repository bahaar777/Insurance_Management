-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2021 at 07:40 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `insurance_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `email_id` varchar(300) NOT NULL,
  `password` varchar(10) NOT NULL,
  `contact_no` int(10) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`email_id`, `password`, `contact_no`) VALUES
('admin1@gmail.com', 'admin1', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `applied_policies`
--

CREATE TABLE IF NOT EXISTS `applied_policies` (
  `Sr_no` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(300) NOT NULL,
  `Fullname` text NOT NULL,
  `cust_address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `contact_no` int(10) NOT NULL,
  `nationality` text NOT NULL,
  `cust_age` int(3) NOT NULL,
  `dob` date NOT NULL,
  `gender` text NOT NULL,
  `guardian_name` text NOT NULL,
  `adhaar_no` int(20) NOT NULL,
  `pan_no` int(20) NOT NULL,
  `nominee_nm` text NOT NULL,
  `nominee_age` int(5) NOT NULL,
  `nominee_email` varchar(400) NOT NULL,
  `nominee_address` text NOT NULL,
  `policy_name` text NOT NULL,
  `policy_type` text NOT NULL,
  `policy_period` int(11) NOT NULL,
  `premium_paid` int(6) NOT NULL,
  `tenure` date NOT NULL,
  `maturity` date NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`Sr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `applied_policies`
--

INSERT INTO `applied_policies` (`Sr_no`, `email_id`, `Fullname`, `cust_address`, `city`, `state`, `country`, `contact_no`, `nationality`, `cust_age`, `dob`, `gender`, `guardian_name`, `adhaar_no`, `pan_no`, `nominee_nm`, `nominee_age`, `nominee_email`, `nominee_address`, `policy_name`, `policy_type`, `policy_period`, `premium_paid`, `tenure`, `maturity`, `status`) VALUES
(1, 'bahar123@gmail.com', 'inamdar bahar aslam', 'ram nagar,savedi ', 'ahmednagar', 'maharashtra', 'india', 2147483647, 'indian', 20, '2002-09-06', 'female', 'aslam inamdar', 6576765, 6562376, 'ruby inamdar', 25, 'ruby1234@gmail.com', 'ram nagar,savedi,nagar', 'star health insurance', 'health insurance', 1, 30000, '2021-09-07', '2023-09-07', 'Approved'),
(5, 'bahar123@gmail.com', 'inamdar bahar aslam', 'ram nagar savedi', 'ahmednagar', 'maharashtra', 'india', 2147483647, 'indian', 20, '2021-09-02', 'female', 'inamdar aslam', 767645, 629856, 'inamdar ruby aslam', 26, 'ruby@gmail.com', 'ram nagar savedi ahmednagar', 'SBI Life Insurance', 'Life Insurance', 10, 0, '2021-09-03', '2021-09-25', 'Under scrutiny');

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_policies`
--

CREATE TABLE IF NOT EXISTS `apply_for_policies` (
  `policy_name` text NOT NULL,
  `policy_type` text NOT NULL,
  `tenure` int(2) NOT NULL,
  `premium` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_for_policies`
--

INSERT INTO `apply_for_policies` (`policy_name`, `policy_type`, `tenure`, `premium`) VALUES
('General Motor Insurance', 'Vehicle Insurance', 7, 7500),
('HDFC Ergo Insurance', 'Two wheeler insurance', 5, 2000),
('HDFC Life Insurance', 'Life Insurance', 40, 6000),
('One Assistant Mobile Insurance', 'Mobile Insurance', 2, 2700),
('SBI Home Insurance', 'Home Insurance', 15, 3500),
('SBI Life Insurance', 'Life Insurance', 10, 5500),
('Star Health Insurance', 'Health Insurance', 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` text NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `feedback_date` date NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email_id`, `feedback_date`, `message`) VALUES
('inamdar bahar aslam', 'bahari12@gmail.com', '2021-09-04', 'Great local insurance company for personal and business related insurance. Get immediate insurance proof and easy payment options.'),
('Firodiya Siddhi Vaibhav', 'siddhif12@gmail.com', '2021-09-02', 'This is top notch. The customer service I receive is the best in the industry. I highly recommend them!');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE IF NOT EXISTS `query` (
  `sr_no` int(11) NOT NULL AUTO_INCREMENT,
  `email_id` varchar(400) NOT NULL,
  `name` text NOT NULL,
  `dt` date NOT NULL,
  `query` varchar(500) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`sr_no`, `email_id`, `name`, `dt`, `query`, `reply`) VALUES
(1, 'bahar123@gmail.com', 'inamdar bahar aslam', '2021-09-08', 'What is the Premium for Mobile Insurance', ''),
(2, 'bahar123@gmail.com', 'inamdar bahar aslam', '2021-09-09', 'What is the Tenure of Life Insurance', ''),
(6, 'bahar123@gmail.com', 'inamdar bahar aslam', '2021-09-10', 'what is the annual premium for life insurance', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `email_id` varchar(300) NOT NULL,
  `Name` text NOT NULL,
  `password` varchar(10) NOT NULL,
  `contact_no` int(10) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`email_id`, `Name`, `password`, `contact_no`) VALUES
('bahar123@gmail.com', 'inamdar bahar aslam', 'Bahar123', 2147483647);
