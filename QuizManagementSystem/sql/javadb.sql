-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: javadb
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reguser`
--

DROP TABLE IF EXISTS `reguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reguser` (
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reguser`
--

LOCK TABLES `reguser` WRITE;
/*!40000 ALTER TABLE `reguser` DISABLE KEYS */;
INSERT INTO `reguser` VALUES ('anirudha','singh','anirudhasingh2532005@gmail.com','123456789'),('suryansh','singh','dfg@sdfg','hazmo'),('deepansh','namdev','tadop14584@arinuse.com','asdfghjkl'),('abudhar','maule','tadop14584@arinuse.com','123@abc');
/*!40000 ALTER TABLE `reguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultanalysis`
--

DROP TABLE IF EXISTS `resultanalysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultanalysis` (
  `testid` int NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `totalmarks` int DEFAULT NULL,
  PRIMARY KEY (`testid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultanalysis`
--

LOCK TABLES `resultanalysis` WRITE;
/*!40000 ALTER TABLE `resultanalysis` DISABLE KEYS */;
INSERT INTO `resultanalysis` VALUES (15,'anirudha','Computer Network',2),(16,'anirudha','Computer Network',1),(17,'anirudha','Operating System',4),(18,'anirudha','Data Structure',3),(19,'anirudha','Database Management System',2),(20,'anirudha','Computer Network',1);
/*!40000 ALTER TABLE `resultanalysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testresult`
--

DROP TABLE IF EXISTS `testresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testresult` (
  `testid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `dateofexam` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`testid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testresult`
--

LOCK TABLES `testresult` WRITE;
/*!40000 ALTER TABLE `testresult` DISABLE KEYS */;
INSERT INTO `testresult` VALUES (15,'anirudhasingh2532005@gmail.com','anirudha','Computer Network','2025-07-15 16:41:18'),(16,'anirudhasingh2532005@gmail.com','anirudha','Computer Network','2025-07-18 15:12:05'),(17,'anirudhasingh2532005@gmail.com','anirudha','Operating System','2025-07-18 18:35:48'),(18,'anirudhasingh2532005@gmail.com','anirudha','Data Structure','2025-07-18 18:38:10'),(19,'anirudhasingh2532005@gmail.com','anirudha','Database Management System','2025-07-25 14:40:23'),(20,'anirudhasingh2532005@gmail.com','anirudha','Computer Network','2025-07-28 10:41:15'),(21,'anirudhasingh2532005@gmail.com','anirudha','Object Oriented Technology','2025-07-28 10:42:50');
/*!40000 ALTER TABLE `testresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testresultdesc`
--

DROP TABLE IF EXISTS `testresultdesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testresultdesc` (
  `testid` int DEFAULT NULL,
  `qno` int DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `uans` char(1) DEFAULT NULL,
  `cans` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testresultdesc`
--

LOCK TABLES `testresultdesc` WRITE;
/*!40000 ALTER TABLE `testresultdesc` DISABLE KEYS */;
INSERT INTO `testresultdesc` VALUES (15,1,'Satellite-Switched Time-Division Multiple Access (SS/TDMA) is','A','C'),(15,2,'Frames from one LAN can be transmitted to another LAN via the device','A','B'),(15,3,'Which of the following TCP/IP protocol is used for transferring electronic mail messages from one machine to another?','A','C'),(15,4,'Which of the following condition is used to transmit two packets over a medium at the same time?','A','B'),(15,5,'The packet of information at the application layer is called','A','B'),(15,6,' This is a time-sensitive service','A','D'),(15,7,'In the network HTTP resources are located by','A','A'),(15,8,'Which of the following TCP/IP protocol allows an application program on one machine to send a datagram to an application program on another machine?','A','A'),(15,9,' Which one of the following task is not done by data link layer?','A','D'),(15,10,'Contention is','A','C'),(16,1,'A station in a network forwards incoming packets by placing them on its shortest output queue. What routing algorithm is being used?','A','A'),(16,2,'Which one of the following is a transport layer protocol used in internet?','A','C'),(16,3,'The synchronous modems are more costly than the asynchronous modems because','A','B'),(16,4,'In the network HTTP resources are located by','B','A'),(16,5,'Which of the following TCP/IP protocol allows an application program on one machine to send a datagram to an application program on another machine?','B','A'),(16,6,'Which of the following is used for modulation and demodulation?','B','A'),(16,7,'Topology with highest reliability is-','C','D'),(16,8,'The term duplex refers to the ability of the data receiving stations to echo back a confirming message to the sender. In full duplex data transmission, both the sender and the receiver','C','B'),(16,9,'The ____ translates internet domain and host names to IP address.','C','A'),(16,10,'Contention is','D','C'),(17,1,' Which among following scheduling algorithms give minimum average waiting time','A','B'),(17,2,' Belady effect occurs in which page replacement algoritm approach?','A','A'),(17,3,'Which of the following instruction steps, would be written within the diamond-shaped box, of a flowchart?','A','B'),(17,4,' In Unix,Which system call creates the new process?','A','A'),(17,5,'The part of machine level instruction, which tells the central processor what has to be done, is','A','A'),(17,6,'Which of the following refers to the associative memory?','A','C'),(17,7,' Which is not valid state of process ?','A','A'),(17,8,'  Number of processes can be completed per unit time?','A','B'),(17,9,'The Memory Buffer Register (MBR)','A','D'),(17,10,'The LRU algorithm','A','C'),(18,1,'  Which data structure is needed to convert infix notations to postfix notations','A','C'),(18,2,'The postfix expression for a+b/c-d is?','A','A'),(18,3,' Which is not one of the traversal technique for tree?','A','D'),(18,4,'Which of the following statements about binary trees is NOT true?','A','A'),(18,5,' Accessing data stored in tape is similar to accessing data from-','A','B'),(18,6,'Which is not a type of queue?','B','D'),(18,7,'In which of the following algorithm input data should be in sorted order?','C','C'),(18,8,'In which sorting method parition of input array is performed?','D','C'),(18,9,' For an undirected graph with n vertices and e edges, the sum of the degree of each vertex is equal to','D','C'),(18,10,'Two main measures for the efficiency of an algorithm are-','D','C'),(19,1,' What is the component of a DBMS that is responsible for storing, retrieving, and updating data? ','D','B'),(19,2,'3. The ability to modify the data structure and not have to change the programs using that data is called:','B','B'),(19,3,'36. Which of the following  is not a name of level  ?','C','D'),(19,4,'5. The database design that uses a hierarchical data structure, but incorporates multiple data entry points is called a:','D','D'),(19,5,'7. What is the main strength of Relational Databases?','A','B'),(19,6,'9. Data integrity can be improved by which of the following means ____________.','B','C'),(19,7,'10. The role of the query system is to:','C','B'),(19,8,'12. The term referring to a physical item existing in the real world that you want to track is called:','D','A'),(19,9,'13. Two different terms are used to describe the characteristics of interest for an entity. They are properties and:','B','C'),(19,10,'32. Which of the following statements is not correct?','C','D'),(20,1,'Satellite-Switched Time-Division Multiple Access (SS/TDMA) is','B','C'),(20,2,'A station in a network forwards incoming packets by placing them on its shortest output queue. What routing algorithm is being used?','A','A'),(20,3,'When you ping the loopback address, a packet is sent where?','C','B'),(20,4,'In file transfer protocol, data transfer can be done in','C','D'),(20,5,'Which of the following TCP/IP protocol allows an application program on one machine to send a datagram to an application program on another machine?','B','A'),(20,6,'What is the default subnet mask for a class C network?','A','D'),(20,7,'Topology with highest reliability is-','B','D'),(20,8,'How many hosts are attached to each of the local area networks at your site?','A','B'),(20,9,'The ____ translates internet domain and host names to IP address.','B','A'),(20,10,' Which one of the following task is not done by data link layer?','C','D'),(21,1,'Following is not a correct statement for preprocessor directive declaration?','E','B'),(21,2,'A function that changes the state of the cout object is called a(n) _____','E','C'),(21,3,'A C++ program contains a function with the header int function(double d, char c). Which of the following function headers could be used within the same program?','E','B'),(21,4,' Which of the following is invalid header file name?','E','A'),(21,5,' In the following statements \n class sports {};class test : public student{};\n class result : public test, public sports {};','E','D'),(21,6,' Inventor of C++ language is','E','B'),(21,7,' Array elements are accessed using','E','D'),(21,8,' A function that is called automatically when an object is created is called as','E','B'),(21,9,' The null character will take space of','E','C'),(21,10,' In C++, symbolic constants created using','E','C');
/*!40000 ALTER TABLE `testresultdesc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-28 15:26:37
