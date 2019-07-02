-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: life_insurance_db
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agentcommission`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`agentcommission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`agentcommission` (
  `agentid` bigint(20) DEFAULT NULL,
  `agentnetamount` decimal(13,3) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentcommission`
--

LOCK TABLES life_insurance_mgmt.`agentcommission` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`agentcommission` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`agentcommission` VALUES (3002,50000.000);
/*!40000 ALTER TABLE life_insurance_mgmt.`agentcommission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentcommtx`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`agentcommtx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`agentcommtx` (
  `agentcommtxid` bigint(20) DEFAULT NULL,
  `agentid` bigint(20) DEFAULT NULL,
  `agentamount` decimal(13,2) DEFAULT NULL,
  `AGENTCOMM` decimal(13,2) DEFAULT NULL,
  `AGENTCOMMDATE` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentcommtx`
--

LOCK TABLES life_insurance_mgmt.`agentcommtx` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`agentcommtx` DISABLE KEYS */;
/*!40000 ALTER TABLE life_insurance_mgmt.`agentcommtx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`agents` (
  `agentid` bigint(20) DEFAULT NULL,
  `agentname` varchar(20) DEFAULT NULL,
  `agentfname` varchar(20) DEFAULT NULL,
  `agentage` smallint(6) DEFAULT NULL,
  `agentsex` varchar(1) DEFAULT NULL,
  `agentqual` varchar(20) DEFAULT NULL,
  `agentoccupation` varchar(20) DEFAULT NULL,
  `agentaddress` varchar(20) DEFAULT NULL,
  `agentregdate` datetime DEFAULT NULL,
  `agentsecuritydeposit` decimal(10,3) DEFAULT NULL,
  `branchmgrid` int(11) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES life_insurance_mgmt.`agents` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`agents` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`agents` VALUES (3001,'Raj Mittal','Dev Mittal',33,'M','MCOM','Executive','Mumbai','2005-07-07 00:00:00',30000.000,2001),(3000,'Rahul','Venkat',33,'M','BCOM','Business','Hyderabad','2005-06-18 00:00:00',20000.000,2000),(3002,'Ravi','Ravi1',25,'M','MCA','JP','MNCL','2005-09-30 00:00:00',50000.000,2002);
/*!40000 ALTER TABLE life_insurance_mgmt.`agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`branch` (
  `id` double DEFAULT NULL,
  `bname` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `d2` datetime DEFAULT NULL,
  `phone` double DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES life_insurance_mgmt.`branch` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`branch` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`branch` VALUES (500,'Hyderabad','Banjara Hills','2008-09-23 00:00:00',55566,'AP'),(501,'Ammerpet','Hyderabad','2008-09-29 00:00:00',4055555,'AP');
/*!40000 ALTER TABLE life_insurance_mgmt.`branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchmgr`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`branchmgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`branchmgr` (
  `branchmgrid` bigint(20) DEFAULT NULL,
  `branchmgrname` varchar(22) DEFAULT NULL,
  `branchmgrfname` varchar(22) DEFAULT NULL,
  `branchmgrage` smallint(6) DEFAULT NULL,
  `branchmgrsex` varchar(1) DEFAULT NULL,
  `branchmgrqual` varchar(11) DEFAULT NULL,
  `branchmgraddress` varchar(35) DEFAULT NULL,
  `branchname` varchar(22) DEFAULT NULL,
  `branchmgrjoindate` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchmgr`
--

LOCK TABLES life_insurance_mgmt.`branchmgr` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`branchmgr` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`branchmgr` VALUES (2001,'neelam','mallaiah',24,'M','MCA','SR Nagar','Hyderabad','2008-09-29 00:00:00'),(2000,'praveen','mallaiah',24,'M','MCA','Hyderabad','Hyderabad','2008-09-29 00:00:00'),(2002,'neelam praveen','mallaiah',24,'M','MCA','Jawahar Nagar','Ammerpet','2008-09-29 00:00:00');
/*!40000 ALTER TABLE life_insurance_mgmt.`branchmgr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custbonusdates`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`custbonusdates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`custbonusdates` (
  `custpolicyid` bigint(20) DEFAULT NULL,
  `previousbonusdate` datetime DEFAULT NULL,
  `nextbonusdate` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custbonusdates`
--

LOCK TABLES life_insurance_mgmt.`custbonusdates` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`custbonusdates` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`custbonusdates` VALUES (50000,NULL,'2018-09-30 00:00:00');
/*!40000 ALTER TABLE life_insurance_mgmt.`custbonusdates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custbonustx`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`custbonustx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`custbonustx` (
  `custbonustxid` decimal(22,0) DEFAULT NULL,
  `custpolicyid` bigint(20) DEFAULT NULL,
  `bonusdate` datetime DEFAULT NULL,
  `bonus` bigint(20) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custbonustx`
--

LOCK TABLES life_insurance_mgmt.`custbonustx` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`custbonustx` DISABLE KEYS */;
/*!40000 ALTER TABLE life_insurance_mgmt.`custbonustx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`customer` (
  `custid` bigint(20) DEFAULT NULL,
  `custname` varchar(33) DEFAULT NULL,
  `custfname` varchar(35) DEFAULT NULL,
  `custage` smallint(6) DEFAULT NULL,
  `custsex` varchar(1) DEFAULT NULL,
  `custqual` varchar(35) DEFAULT NULL,
  `custaddress` varchar(35) DEFAULT NULL,
  `custoccupation` varchar(35) DEFAULT NULL,
  `custregdate` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES life_insurance_mgmt.`customer` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`customer` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`customer` VALUES (5000,'cust1','cust2',30,'M','BCOM','Nagpur','GM','2008-09-30 00:00:00');
/*!40000 ALTER TABLE life_insurance_mgmt.`customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custpolicies`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`custpolicies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`custpolicies` (
  `custpolicyid` bigint(20) DEFAULT NULL,
  `custid` bigint(20) DEFAULT NULL,
  `policyid` int(11) DEFAULT NULL,
  `policydate` datetime DEFAULT NULL,
  `premiumtype` varchar(10) DEFAULT NULL,
  `premiumamount` decimal(15,2) DEFAULT NULL,
  `nomineename` varchar(35) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `agentid` bigint(20) DEFAULT NULL,
  `expirydate` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custpolicies`
--

LOCK TABLES life_insurance_mgmt.`custpolicies` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`custpolicies` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`custpolicies` VALUES (50000,5000,10000,'2008-09-30 00:00:00','HALFYEARLY',416.67,'cust1','cust',3002,'2028-09-30 00:00:00');
/*!40000 ALTER TABLE life_insurance_mgmt.`custpolicies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custpolicyamounts`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`custpolicyamounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`custpolicyamounts` (
  `custpolicyid` bigint(20) DEFAULT NULL,
  `amount` decimal(15,3) DEFAULT NULL,
  `interestamount` decimal(15,2) DEFAULT NULL,
  `netamount` decimal(15,2) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custpolicyamounts`
--

LOCK TABLES life_insurance_mgmt.`custpolicyamounts` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`custpolicyamounts` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`custpolicyamounts` VALUES (50000,416.670,0.00,416.67);
/*!40000 ALTER TABLE life_insurance_mgmt.`custpolicyamounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custpremiumdates`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`custpremiumdates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`custpremiumdates` (
  `custpolicyid` bigint(20) DEFAULT NULL,
  `previouspremiumdate` datetime DEFAULT NULL,
  `nextpremiumdate` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custpremiumdates`
--

LOCK TABLES life_insurance_mgmt.`custpremiumdates` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`custpremiumdates` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`custpremiumdates` VALUES (50000,'2008-09-30 00:00:00','2009-03-31 00:00:00');
/*!40000 ALTER TABLE life_insurance_mgmt.`custpremiumdates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custpremiumtx`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`custpremiumtx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`custpremiumtx` (
  `custpremiumtxid` decimal(22,0) DEFAULT NULL,
  `custpolicyid` bigint(20) DEFAULT NULL,
  `premiumamount` decimal(15,2) DEFAULT NULL,
  `premiumpaydate` datetime DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custpremiumtx`
--

LOCK TABLES life_insurance_mgmt.`custpremiumtx` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`custpremiumtx` DISABLE KEYS */;
/*!40000 ALTER TABLE life_insurance_mgmt.`custpremiumtx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`login` (
  `userid` bigint(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES life_insurance_mgmt.`login` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`login` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`login` VALUES (100,'shiva','CEO'),(2000,'neelam','MANAGER'),(1,'insure','CEO'),(2001,'praveen','MANAGER'),(3002,'ravi','AGENT'),(2000,'cust1','CUSTOMER');
/*!40000 ALTER TABLE life_insurance_mgmt.`login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policies`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`policies` (
  `policyid` int(11) DEFAULT NULL,
  `policyname` varchar(50) DEFAULT NULL,
  `policyterm` tinyint(4) DEFAULT NULL,
  `policyamount` decimal(15,3) DEFAULT NULL,
  `policyfaceamount` bigint(20) DEFAULT NULL,
  `policyinterest` tinyint(4) DEFAULT NULL,
  `policydate` datetime DEFAULT NULL,
  `bonusperiod` tinyint(4) DEFAULT NULL,
  `bonusrate` tinyint(4) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policies`
--

LOCK TABLES life_insurance_mgmt.`policies` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`policies` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`policies` VALUES (10000,'JeevanBhemma',20,50000.000,125000,2,'2008-09-29 00:00:00',10,5);
/*!40000 ALTER TABLE life_insurance_mgmt.`policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policycommission`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`policycommission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`policycommission` (
  `targetamount` decimal(20,3) DEFAULT NULL,
  `commissionrate` decimal(5,2) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policycommission`
--

LOCK TABLES life_insurance_mgmt.`policycommission` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`policycommission` DISABLE KEYS */;
/*!40000 ALTER TABLE life_insurance_mgmt.`policycommission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiumamounts`
--

DROP TABLE IF EXISTS life_insurance_mgmt.`premiumamounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE life_insurance_mgmt.`premiumamounts` (
  `policyid` int(11) DEFAULT NULL,
  `monthly` decimal(15,2) DEFAULT NULL,
  `quarterly` decimal(15,2) DEFAULT NULL,
  `halfyearly` decimal(15,2) DEFAULT NULL,
  `annually` decimal(15,2) DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiumamounts`
--

LOCK TABLES life_insurance_mgmt.`premiumamounts` WRITE;
/*!40000 ALTER TABLE life_insurance_mgmt.`premiumamounts` DISABLE KEYS */;
INSERT INTO life_insurance_mgmt.`premiumamounts` VALUES (10000,208.33,625.00,416.67,2500.00);
/*!40000 ALTER TABLE life_insurance_mgmt.`premiumamounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-01 17:56:32
