-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: code_vein_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `active_gifts`
--

DROP TABLE IF EXISTS `active_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_gifts` (
  `GiftName` varchar(100) NOT NULL,
  `GiftTree` varchar(100) DEFAULT NULL,
  `BC_Origin` varchar(100) DEFAULT NULL,
  `ReqStr` varchar(100) DEFAULT NULL,
  `ReqDex` varchar(100) DEFAULT NULL,
  `ReqMnd` varchar(100) DEFAULT NULL,
  `ReqWil` varchar(100) DEFAULT NULL,
  `ReqVit` varchar(100) DEFAULT NULL,
  `ReqFor` varchar(100) DEFAULT NULL,
  `Exclusive` tinyint(1) DEFAULT NULL,
  `ReqComp` varchar(100) DEFAULT NULL,
  `ReqOHSw` tinyint(1) DEFAULT NULL,
  `ReqTHSw` tinyint(1) DEFAULT NULL,
  `ReqSpHalPol` tinyint(1) DEFAULT NULL,
  `ReqTHHam` tinyint(1) DEFAULT NULL,
  `ReqBayoRif` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `GiftName` (`GiftName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_gifts`
--

LOCK TABLES `active_gifts` WRITE;
/*!40000 ALTER TABLE `active_gifts` DISABLE KEYS */;
INSERT INTO `active_gifts` VALUES ('Ablative Blood','Light','Eos','','','','','','',0,'',0,0,0,0,0),('Active IFF','Light','Hunter','','','','','','',0,'',0,0,0,0,0),('Adrenaline','Light','Fighter','B','','','','','',0,'',0,0,0,0,0),('Antibody Generation','Light','Eos','','','B','','','',0,'',0,0,0,0,0),('Argent Wolf Cross','Dark','Hades','','','','C','','',0,'',0,0,0,0,0),('Arm of Set','Dark','Queen\'s Throat','','','','B','','',0,'',0,0,0,0,0),('Aurora Flash','Dark','Queen\'s Breath','','','B','','','',0,'',0,0,0,0,0),('Auto Heal','Light','Demeter','','','','','','',1,'',0,0,0,0,0),('Baba Yaga\'s Gaze','Dark','Queen','','','','A','','',0,'',0,0,0,0,0),('Binding Mark','Dark','Hunter','','C','','','','',0,'',0,0,0,0,0),('Blade Dance','Light','Prometheus','','','','','','',1,'',0,0,0,0,0),('Blast Bolt','Dark','Isis','','','C','C','','',0,'',0,0,0,0,0),('Blazing Roar','Dark','Caster','','','','B','','',0,'',0,0,0,0,0),('Blood Awakening','Light','','','','','','','',0,'Mia Karnstein',0,0,0,0,0),('Blood Barrage','Light','Scout','','','','D+','','',0,'',0,0,0,0,0),('Blood Guard','Light','Fighter','','','','','','',0,'',0,0,0,0,0),('Blood Sacrifice','Dark','Hunter','','','','C','','',0,'',0,0,0,0,0),('Blood Shot','Dark','Caster','','','','C','','',0,'',0,0,0,0,0),('Blood Spike','Light','Dark Knight','','','C','','','',0,'',0,0,0,0,0),('Blood Weapon','Light','Dark Knight','','','D+','','','',0,'',0,0,0,0,0),('Bloodsucking Blades','Dark','Artemis','','','','D','','',0,'',0,0,0,0,0),('Bloody Impact','Light','Hermes','','','C','','','',0,'',0,0,0,0,0),('Blow of Madness','Light','Berserker','B','','','','','',0,'',0,0,0,0,0),('Bridge to Glory','Light','Eos','','','B+','','','',0,'',0,0,0,0,0),('Chaotic Ash','Dark','Queen','','','B','B','','',0,'',0,0,0,0,0),('Chariot Rush','Skill','Dark Knight','','','','','','',0,'',0,0,1,0,0),('Circulating Pulse','Skill','Queenslayer','','','','','','',0,'',1,0,1,0,1),('Cleansing Light','Light','Queenslayer','','','C','','C+','',0,'',0,0,0,0,0),('Cloak of Winter','Light','Queen\'s Breath','','','B','','','',0,'',0,0,0,0,0),('Concentration','Light','Assassin','','','','','','C',0,'',0,0,0,0,0),('Conviction Spike','Light','','','','','','','',0,'Io',0,0,0,0,0),('Countermeasure','Dark','Hephaestus','','B','','C','','',0,'',0,0,0,0,0),('Crimson Moon','Dark','Scathach','','','','B','','',0,'',0,0,0,0,0),('Crushing Might','Light','Fionn','B','','','','','',0,'',0,0,0,0,0),('Dancing Blaze','Dark','Hephaestus','','','','C','','',0,'',0,0,0,0,0),('Dark Shout','Dark','Queen\'s Throat','','','C','B','','',0,'',0,0,0,0,0),('Disremember','Light','Demeter','','','C','C','','',0,'',0,0,0,0,0),('Dogged Fighter','Light','Atlas','','','','','B','',0,'',0,0,0,0,0),('Draconic Stake','Dark','Isis','','','C','C','','',0,'',0,0,0,0,0),('Dragon Lunge','Skill','Berserker','','','','','','',0,'',0,1,0,1,0),('Dusk Edge','Dark','Queen\'s Ribcage','','','','B','','',0,'',0,0,0,0,0),('Elder Contract','Dark','Queen\'s Ribcage','','','','B','','',0,'',0,0,0,0,0),('Elemental Wall','Light','Eos','','','B','','','',0,'',0,0,0,0,0),('Ember Reversal','Dark','Scathach','','','','C','','',0,'',0,0,0,0,0),('Ephemeral Refrain','Dark','','','','','','','',0,'Eva Roux',0,0,0,0,0),('Execution','Dark','Hades','','','C','C','','',0,'',0,0,0,0,0),('Fatal Surge','Dark','','','','','','','',0,'Jack Rutherford',0,0,0,0,0),('Feral Tenacity','Light','Warrior','','','','B','','',0,'',0,0,0,0,0),('Final Journey','Light','Queenslayer','','','','','','',1,'',0,0,0,0,0),('Fire Lily','Dark','Queen\'s Claw','','','','C','','',0,'',0,0,0,0,0),('Fire Storm','Dark','Prometheus','','','','D+','','',0,'',0,0,0,0,0),('Flame Barrage','Light','','','','','D+','','',0,'',0,0,0,0,0),('Flame Protection','Light','Dark Knight','','','D+','','','',0,'',0,0,0,0,0),('Flame Spike','Light','Hunter','','','C','','','',0,'',0,0,0,0,0),('Flame Weapon','Light','Prometheus','','','D+','','','',0,'',0,0,0,0,0),('Flames of Rage','Dark','Hephaestus','','','','C','','',0,'',0,0,0,0,0),('Flashing Fang','Light','Atlas','A','','','','','',0,'',0,0,0,0,0),('Floating Light','Light','Hermes','','','','','','',0,'',0,0,0,0,0),('Foulblood Barrier','Light','Atlas','','','D+','','B','',0,'',0,0,0,0,0),('Fourfold Verdict','Dark','Isis','','','B','B','','',0,'',0,0,0,0,0),('Freezing Roar','Dark','Artemis','','','','B','','',0,'',0,0,0,0,0),('Frenzied Fire','Dark','Queenslayer','','','','','','',0,'',0,0,0,0,0),('Frost Spike','Light','Hermes','','','C','','','',0,'',0,0,0,0,0),('Frost Weapon','Light','Fionn','','','D+','','','',0,'',0,0,0,0,0),('Fusillade Rondo','Skill','Artemis','','','','','','',0,'',0,0,0,0,1),('Gift Prowess','Dark','Harmonia','','','C','B','','',0,'',0,0,0,0,0),('Grave Knocker','Skill','Fionn','','','','','','',0,'',0,0,0,0,0),('Guard of Honor','Dark','Artemis','','','','B','','',0,'',0,0,0,0,0),('Guard Reversal','Light','Atlas','','','','','B','',0,'',0,0,0,0,0),('Guard Stability','Light','Survivor','','','C','','','',0,'',0,0,0,0,0),('Hasten','Light','Prometheus','','C','D+','','','',0,'',0,0,0,0,0),('Hunting Feast','Light','Hunter','','','C','','','',0,'',0,0,0,0,0),('Ice Armor','Light','Artemis','','','','','','',0,'',0,0,0,0,0),('Ice Barrage','Light','Fionn','','','','D+','','',0,'',0,0,0,0,0),('Ichorous Ice','Dark','Queen\'s Ribcage','','','','B','','',0,'',0,0,0,0,0),('Impact Wave','Light','Atlas','B','','','','B','',0,'',0,0,0,0,0),('Indra\'s Coil','Dark','Isis','','','C','C','','',0,'',0,0,0,0,0),('Inhibit Removal','Light','Hephaestus','','','D+','','','',0,'',0,0,0,0,0),('Iron Will','Light','Berserker','','','','','','C',0,'',0,0,0,0,0),('Juggernaut','Light','Queen\'s Breath','','','','','','',1,'',0,0,0,0,0),('Jupiter\'s Blade','Dark','','','','','B','','',0,'',0,0,0,0,0),('Leak Removal','Light','Survivor','','','D+','','','',0,'',0,0,0,0,0),('Legion Punisher','Skill','Queen\'s Breath','','','','','','',0,'',0,1,0,1,0),('Lightning Barrage','Light','','','','','D+','','',0,'',0,0,0,0,0),('Lightning Weapon','Light','Mercury','','','D+','','','',0,'',0,0,0,0,0),('Lupinus Vita','Light','','','','','','','',0,'Yakumo Shinonome',0,0,0,0,0),('Merciless Reaper','Light','Assassin','','C','','','','C',0,'',0,0,0,0,0),('Modest Offering','Light','','','','D+','','','',0,'',0,0,0,0,0),('Morale Boost','Light','Heimdal','','B','D+','','','B',0,'',0,0,0,0,0),('Night Fog Veil','Light','Heimdal','','B','','D+','','B',0,'',0,0,0,0,0),('Nightstalker','Light','Assassin','','C','','','','C',0,'',0,0,0,0,0),('Numbing Mark','Dark','Assassin','','C','','','','',0,'',0,0,0,0,0),('Overdrive','Light','Assassin','','C','','','','C',0,'',0,0,0,0,0),('Panacea\'s Essence','Light','Eos','','','B','','','',0,'',0,0,0,0,0),('Peony Flash','Dark','Scathach','','','','','','',1,'',0,0,0,0,0),('Perfect Balance','Light','Warrior','','','','C','','',0,'',0,0,0,0,0),('Phantom Assault','Skill','Prometheus','','','','','','',0,'',1,0,1,0,1),('Plasma Roar','Light','Isis','','','','B','','',0,'',0,0,0,0,0),('Precision','Light','Berserker','B','','','','','',0,'',0,0,0,0,0),('Prismatic Veil','Light','Demeter','','','C+','','B','',0,'',0,0,0,0,0),('Prize Perception','Light','Scout','','','','','','',0,'',0,0,0,0,0),('Purging Thorn','Dark','Queen','','','B','B','','',0,'',0,0,0,0,0),('Rage of Perkunas','Dark','Queen','','','','A','','',0,'',0,0,0,0,0),('Raijin\'s Veil','Light','Mercury','','','D+','','','',0,'',0,0,0,0,0),('Ranged Impact','Light','Hunter','','C','','','','',0,'',0,0,0,0,0),('Reckless Abandon','Dark','','','','','','','',0,'Louis',0,0,0,0,0),('Red Shoes','Light','Fionn','','','','','','',1,'',0,0,0,0,0),('Regenerator','Light','Eos','','','B','','','',0,'',0,0,0,0,0),('Restorative Offering','Light','','','','','','','',0,'',0,0,0,0,0),('Rose Flame','Dark','Queen\'s Claw','','B','','C','','',0,'',0,0,0,0,0),('Royal Heart','Light','Berserker','','','','','','C',0,'',0,0,0,0,0),('Sacrificial Edge','Dark','Heimdal','','','','','','',1,'',0,0,0,0,0),('Sand Edge','Dark','Harmonia','','','C','B','','',0,'',0,0,0,0,0),('Sands of Depravity','Dark','Queen\'s Throat','','','','B','','',0,'',0,0,0,0,0),('Sanguine Roar','Dark','Darkseeker','','','','B','','',0,'',0,0,0,0,0),('Severing Abyss','Skill','Heimdal','','','','','','',0,'',1,0,1,0,1),('Shadow Assault','Skill','Assassin','','','','','','',0,'',1,0,1,0,1),('Shadow Leap','Dark','Isis','','','','','','',1,'',0,0,0,0,0),('Shifting Hollow','Skill','Ranger','','','','','','',0,'',0,0,0,0,0),('Shock Web','Dark','Artemis','','','','B','','',0,'',0,0,0,0,0),('Slow Removal','Light','Mercury','','','D+','','','',0,'',0,0,0,0,0),('Slow Trap','Dark','Scout','','','','C','','',0,'',0,0,0,0,0),('Slow Web','Dark','','','D+','','C','','',0,'',0,0,0,0,0),('Slowing Shot','Dark','Scout','','','','C','','',0,'',0,0,0,0,0),('Sly Vengeance','Dark','Queen\'s Claw','','','','','','',1,'',0,0,0,0,0),('Somatic Zeal','Light','Dark Knight','','','D+','','','',0,'',0,0,0,0,0),('Sonic Arrow','Dark','Ranger','','','','','','',0,'',0,0,0,0,0),('Spoils Spotter','Light','Ranger','','','','','','',0,'',0,0,0,0,0),('Steady Bulwark','Light','Hermes','','','C','','','',0,'',0,0,0,0,0),('Stun Removal','Light','Hermes','','','D+','','','',0,'',0,0,0,0,0),('Stun Shot','Dark','','','','','C','','',0,'',0,0,0,0,0),('Stun Trap','Dark','Assassin','','','','C','','',0,'',0,0,0,0,0),('Stun Web','Dark','','','D+','','C','','',0,'',0,0,0,0,0),('Supernatural Blood','Dark','Harmonia','','','','','','',1,'',0,0,0,0,0),('Swallow Cutter','Skill','Hermes','','','','','','',0,'',0,1,0,1,0),('Sympathetic Boon','Light','Eos','','','B','','','',0,'',0,0,0,0,0),('Time Crunch','Dark','Scathach','','C','','C','','',0,'',0,0,0,0,0),('Tormenting Blast','Skill','Atlas','','','','','','',0,'',0,1,0,1,0),('Treasure Tracker','Light','Survivor','','','','','','',0,'',0,0,0,0,0),('Triple Annihilator','Skill','Fighter','','','','','','',0,'',0,1,0,1,0),('Twilight','Dark','Queen\'s Ribcage','','','','','','',0,'',0,0,0,0,0),('Valiant Heart','Light','Survivor','','','C','','','',0,'',0,0,0,0,0),('Vanishing Hollow','Skill','Hephaestus','','','','','','',0,'',0,0,0,0,0),('Venom Mark','Dark','Ranger','','C','','','','',0,'',0,0,0,0,0),('Venom Removal','Light','Mercury','','','D+','','','',0,'',0,0,0,0,0),('Venom Trap','Dark','Darkseeker','','','','C','','',0,'',0,0,0,0,0),('Venomous Shot','Dark','Darkseeker','','','','C','','',0,'',0,0,0,0,0),('Venomous Web','Dark','','','D+','','C','','',0,'',0,0,0,0,0),('Vigorous Zeal','Light','','','','D+','','','',0,'',0,0,0,0,0),('Vivification','Light','Mercury','','','D+','','','',0,'',0,0,0,0,0),('Vodnik Mass','Dark','Queen\'s Ribcage','','','','A','','',0,'',0,0,0,0,0),('Volatile Storm','Dark','Harmonia','','','C','B','','',0,'',0,0,0,0,0),('Walpurgis Fire','Dark','Queen','','','','A','','',0,'',0,0,0,0,0),('Warding Mark','Dark','Prometheus','','C','','','','',0,'',0,0,0,0,0),('Will-O\'-the-Wisp','Dark','Scout','','B','','C','','',0,'',0,0,0,0,0);
/*!40000 ALTER TABLE `active_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_codes`
--

DROP TABLE IF EXISTS `blood_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_codes` (
  `BC_Name` varchar(100) NOT NULL,
  `Strength` varchar(100) NOT NULL,
  `Dexterity` varchar(100) NOT NULL,
  `Mind` varchar(100) NOT NULL,
  `Willpower` varchar(100) NOT NULL,
  `Vitality` varchar(100) NOT NULL,
  `Fortitude` varchar(100) NOT NULL,
  `Ichor` varchar(100) NOT NULL,
  `Balance` int NOT NULL,
  `Mobility` varchar(100) NOT NULL,
  `BC_Weight` int NOT NULL,
  UNIQUE KEY `BC_Name` (`BC_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_codes`
--

LOCK TABLES `blood_codes` WRITE;
/*!40000 ALTER TABLE `blood_codes` DISABLE KEYS */;
INSERT INTO `blood_codes` VALUES ('Artemis','D','B+','C+','A','C+','B','30(50)',66,'Normal',80),('Assassin','C+','B+','D+','C+','C','B+','10(30)',70,'Quick',58),('Astrea','C','C+','B','B','D+','C','30(60)',51,'Normal',85),('Atlas','A+','D+','D+','C','A+','C+','10(30)',95,'Slow',247),('Berserker','A','D','D+','D+','B+','B+','10(30)',92,'Slow',250),('Caster','D+','C','B','B+','E+','E+','30(54)',48,'Normal',98),('Dark Knight','A','B','C','C','C+','D+','20(40)',78,'Normal',102),('Darkseeker','D+','B','B+','B+','D','D','24(50)',49,'Normal',105),('Demeter','A','D+','A','C+','B+','E+','30(60)',64,'Normal',99),('Eos','B','C','A+','C+','A','C','30(60)',64,'Normal',98),('Fighter','B+','B','C','D+','D','D','16(36)',77,'Normal',120),('Fionn','A','C','B','D+','B','B','14(34)',94,'Slow',250),('Hades','A+','B','C','C','C+','B','14(40)',92,'Slow',250),('Harmonia','D','C','B','A+','C','C','30(60)',52,'Normal',80),('Heimdall','C+','A+','C+','C+','C','A+','16(40)',78,'Quick',55),('Hephaestus','C','A','C','B+','B','C+','20(40)',76,'Normal',80),('Hermes','B','C','B+','C','C+','C+','24(50)',63,'Normal',100),('Hunter','C','B','C+','B+','C+','C','30(50)',64,'Normal',80),('Ishtar','B+','C','A','B','C','A+','30(60)',64,'Normal',100),('Isis','C','B','B+','B+','C+','C+','30(60)',52,'Slow',249),('Mercury','B','B+','C+','C+','C','C+','20(40)',80,'Normal',95),('Prometheus','B+','B+','C+','C+','C+','A','20(40)',79,'Normal',103),('Queen','C+','C','A','A','C+','C','30(60)',51,'Normal',103),('Queen\'s Breath','A','D+','A','D+','C+','D+','28(60)',63,'Normal',95),('Queen\'s Claw','B+','A','C+','B+','E+','C','30(50)',64,'Normal',80),('Queen\'s Ribcage','D+','C+','B+','A','E+','D','30(60)',49,'Normal',105),('Queen\'s Throat','D','D','A+','A','D','D+','30(60)',50,'Quick',63),('Queenslayer','B+','A','B','C+','C+','C','20(40)',79,'Normal',100),('Ranger','C','B+','D+','C','D','C','16(36)',69,'Quick',70),('Scathach','B','B+','B','B','C','B','30(50)',65,'Normal',99),('Scout','C+','A','B','C+','C+','C','24(44)',69,'Quick',60),('Survivor','C','A','C+','D+','C','B','24(48)',75,'Normal',80),('Warrior','A+','C+','C','B','B','E+','10(30)',91,'Slow',245);
/*!40000 ALTER TABLE `blood_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blood_veils`
--

DROP TABLE IF EXISTS `blood_veils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_veils` (
  `BV_Name` varchar(100) NOT NULL,
  `BV_Type` varchar(100) DEFAULT NULL,
  `ReqStr` varchar(100) DEFAULT NULL,
  `ReqDex` varchar(100) DEFAULT NULL,
  `ReqMnd` varchar(100) DEFAULT NULL,
  `ReqWil` varchar(100) DEFAULT NULL,
  `StrScal` varchar(100) DEFAULT NULL,
  `DexScal` varchar(100) DEFAULT NULL,
  `MndScal` varchar(100) DEFAULT NULL,
  `WilScal` varchar(100) DEFAULT NULL,
  `BV_Weight` int NOT NULL,
  UNIQUE KEY `BV_Name` (`BV_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_veils`
--

LOCK TABLES `blood_veils` WRITE;
/*!40000 ALTER TABLE `blood_veils` DISABLE KEYS */;
INSERT INTO `blood_veils` VALUES ('Blackblood Liberator','Ogre','-','-','-','B','D','-','D+','A',49),('Blue Hounds','Hound','-','D+','D','D','-','C+','C','C',53),('GXH Assault','Ivy','C','-','D','C','B','E','C','B',40),('GXL Defender','Hound','-','C','D+','-','E+','B','C+','D',88),('GXM Variant','Ogre','D+','-','D+','-','C+','E','C+','D',63),('Hedgehog Fort','Hound','D+','-','D','C+','C+','D','C','B+',80),('Ivory Grace','Ivy','-','D','C+','C+','-','C','B+','B+',12),('Night Claw','Ogre','-','D+','D','D','-','A','C','C',30),('Night Fang','Hound','D+','-','-','-','C+','E','D+','D+',60),('Night Spear','Stinger','-','D+','D+','-','E+','C+','C+','D+',65),('Night Thorn','Ivy','-','-','D+','D+','D+','D+','C+','C+',24),('Noble Silver','Ogre','-','-','B','-','D+','D+','A','D',22),('Prayer Shawl','Ivy','-','-','D+','-','D+','D+','C+','D',48),('Queenslayer Claw','Ogre','-','D','D+','D+','-','C','C+','C+',49),('Queenslayer Thorn','Stinger','-','-','D+','-','D','E+','C+','D+',47),('Raven Fatigues','Stinger','D','-','-','C+','C','E+','D+','B+',38),('Silver Garb','Stinger','D+','-','D+','-','C+','E','C+','D',80),('Suicide Spur','Ivy','-','-','D+','B','D+','E+','C+','A',35),('White Vestment','Hound','-','D','C+','D','-','C','B+','C',65),('Winter Mantle','Stinger','-','-','C+','-','E','D+','B+','D+',74);
/*!40000 ALTER TABLE `blood_veils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companions`
--

DROP TABLE IF EXISTS `companions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companions` (
  `CompanionName` varchar(100) DEFAULT NULL,
  `BloodVeil` varchar(100) DEFAULT NULL,
  `WeaponType` varchar(100) DEFAULT NULL,
  UNIQUE KEY `CompanionName` (`CompanionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companions`
--

LOCK TABLES `companions` WRITE;
/*!40000 ALTER TABLE `companions` DISABLE KEYS */;
INSERT INTO `companions` VALUES ('Louis','Ogre','One-Handed Swords'),('Yakumo Shinonome','Hound','Two-Handed Swords'),('Mia Karnstein','Stinger','Bayonet Rifles'),('Io','Ivy','Spears/Halberds/Polearms'),('Jack Rutherford','Hound','One-Handed Swords'),('Eva Roux','Ivy','Bayonet Rifles');
/*!40000 ALTER TABLE `companions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passive_gifts`
--

DROP TABLE IF EXISTS `passive_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passive_gifts` (
  `GiftName` varchar(100) NOT NULL,
  `GiftTree` varchar(100) DEFAULT NULL,
  `BC_Origin` varchar(100) DEFAULT NULL,
  `IncStr` tinyint(1) DEFAULT NULL,
  `IncDex` tinyint(1) DEFAULT NULL,
  `IncMnd` tinyint(1) DEFAULT NULL,
  `IncWil` tinyint(1) DEFAULT NULL,
  `IncVit` tinyint(1) DEFAULT NULL,
  `IncFor` tinyint(1) DEFAULT NULL,
  `Exclusive` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `GiftName` (`GiftName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passive_gifts`
--

LOCK TABLES `passive_gifts` WRITE;
/*!40000 ALTER TABLE `passive_gifts` DISABLE KEYS */;
INSERT INTO `passive_gifts` VALUES ('Augmented Regeneration','Light','Scout',0,0,0,0,0,0,0),('Avarice','Light','Hephaestus',0,0,0,0,0,0,0),('Balance Up','Light','Berserker',0,0,0,0,0,0,0),('Bayonet Mastery','Light','Artemis',0,0,0,0,0,0,0),('Blood Buff','Dark','',0,0,0,0,0,0,0),('Blood Grab','Dark','Artemis',0,0,0,0,0,0,1),('Blood-Draining Venom','Dark','Darkseeker',0,0,0,0,0,0,1),('Bolster','Light','',0,0,0,0,0,0,0),('Charge Accelerator','Light','Heimdal',0,0,0,0,0,0,0),('Charisma','Light','',0,0,0,0,0,0,0),('Complete Attention','Light','',0,0,0,0,0,0,0),('Dark Impulse','Dark','Caster',0,0,0,0,0,0,0),('Debuff Build-Up','Light','',0,0,0,0,0,0,0),('Deft Parry','Light','Prometheus',0,0,0,0,0,0,0),('Deliverance','Light','Ishtar',0,0,0,0,0,0,1),('Dexterity Up','Light','Hunter',0,1,0,0,0,0,0),('Dexterity/Fortitude Up','Light','Heimdal',0,1,0,0,0,1,0),('Dexterity/Willpower Up','Light','Artemis',0,1,0,1,0,0,0),('Drain Boost','Light','Queenslayer',0,0,0,0,0,0,0),('Eternal Blade Dance','Light','Prometheus',0,0,0,0,0,0,1),('Evasive Snare','Dark','Hephaestus',0,0,0,0,0,0,1),('Fall Damage Reduction','Dark','Darkseeker',0,0,0,0,0,0,0),('Fire Buff','Dark','Scathach',0,0,0,0,0,0,0),('Firm Stand','Light','Atlas',0,0,0,0,0,0,1),('Focused Carnage','Light','Hermes',0,0,0,0,0,0,0),('Focused Gift Speed','Dark','Artemis',0,0,0,0,0,0,0),('Focused Guard','Light','Fionn',0,0,0,0,0,0,0),('Focused Stamina Usage','Light','Fighter',0,0,0,0,0,0,0),('Fortitude Up','Light','Fionn',0,0,0,0,0,1,0),('Goddess\'s Smile','Light','Ishtar',0,0,0,0,0,0,0),('Guard Drain Rating Up','Light','Atlas',0,0,0,0,0,0,0),('Guard Stability','Light','Ranger',0,0,0,0,0,0,0),('Halberd Mastery','Light','Dark Knight',0,0,0,0,0,0,0),('Hammer Mastery','Light','Fionn',0,0,0,0,0,0,0),('Health Boost','Light','Fighter',0,0,0,0,0,0,0),('Health Stimulant','Light','Warrior',0,0,0,0,0,0,0),('Heroic Fang','Light','Hermes',0,0,0,0,0,0,0),('Ice Buff','Dark','',0,0,0,0,0,0,0),('Ichor Reduction','Dark','Queen\'s Throat',0,0,0,0,0,0,0),('Ichor Strikes','Light','Hunter',0,0,0,0,0,0,0),('Improved Regeneration','Light','Warrior',0,0,0,0,0,0,0),('Increased Gift Speed','GiftTree','Light',0,0,0,0,0,0,0),('Inhibit Resistance','Light','Hephaestus',0,0,0,0,0,0,0),('Leak Resistance','Light','Survivor',0,0,0,0,0,0,0),('Life Steal','Dark','Survivor',0,0,0,0,0,0,0),('Light Impulse','Light','Ishtar',0,0,0,0,0,0,0),('Lightning Buff','Dark','',0,0,0,0,0,0,0),('Maintained Focus','Light','Mercury',0,0,0,0,0,0,0),('Max Ichor Boost','Dark','Harmonia',0,0,0,0,0,0,0),('Mind Up','Light','Ishtar',0,0,1,0,0,0,0),('Mind/Fortitude Up','Light','Demeter',0,0,1,0,0,1,0),('Mind/Vitality Up','Light','Eos',0,0,1,0,1,0,0),('Mind/Willpower Up','Light','Harmonia',0,0,1,1,0,0,0),('One-Handed Sword Mastery','Light','Prometheus',0,0,0,0,0,0,0),('Opportunism','Dark','',0,0,0,0,0,0,0),('Pioneer\'s Guidance','Light','Hephaestus',0,0,0,0,0,0,0),('Regeneration Shift','Light','Heimdal',0,0,0,0,0,0,0),('Regenerative Drain','Dark','Hades',0,0,0,0,0,0,0),('Resilient Focus','Light','Atlas',0,0,0,0,0,0,0),('Revenant Dagger','Dark','',0,0,0,0,0,0,0),('Revenant\'s Greed','Light','Hermes',0,0,0,0,0,0,0),('Revenant\'s Hunger','Light','Mercury',0,0,0,0,0,0,0),('Revenants Ambition','Light','Queen\'s Breath',0,0,0,0,0,0,0),('Savvy Evasion','Light','Prometheus',0,0,0,0,0,0,0),('Sharpened Fangs','Dark','Assassin',0,0,0,0,0,0,0),('Slow Resistance','Light','Mercury',0,0,0,0,0,0,0),('Sprinter','Light','Mercury',0,0,0,0,0,0,0),('Stamina Boost','Light','Ranger',0,0,0,0,0,0,0),('Stamina Stimulant','Light','Heimdal',0,0,0,0,0,0,0),('Strength Up','Light','Hermes',1,0,0,0,0,0,0),('Strength/Dexterity Up','Light','Prometheus',1,1,0,0,0,0,0),('Strength/Vitality Up','Light','Atlas',1,0,0,0,1,0,0),('Strength/Willpower Up','Dark','Scathach',1,0,0,1,0,0,0),('Stun Buff','Dark','Scout',0,0,0,0,0,0,0),('Stun Resistance','Light','Hermes',0,0,0,0,0,0,0),('Survival Instinct','Dark','Hades',0,0,0,0,0,0,0),('Swift Destruction','Light','Hephaestus',0,0,0,0,0,0,0),('Tenacious Fang','Light','',0,0,0,0,0,0,0),('Tirelessness','Light','',0,0,0,0,0,0,0),('Two-Handed Sword Mastery','Light','Atlas',0,0,0,0,0,0,0),('Venom Buff','Dark','Darkseeker',0,0,0,0,0,0,0),('Venom Resistance','Light','Mercury',0,0,0,0,0,0,0),('Vitality Up','Light','Survivor',0,0,0,0,1,0,0),('Vow of Ichor','Dark','Isis',0,0,0,0,0,0,0),('Weapon Drain Rating Up','Dark','Caster',0,0,0,0,0,0,0),('Willpower Up','Light','Queen',0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `passive_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `WP_Name` varchar(100) NOT NULL,
  `WP_Type` varchar(100) DEFAULT NULL,
  `ReqStr` varchar(100) DEFAULT NULL,
  `ReqDex` varchar(100) DEFAULT NULL,
  `ReqMnd` varchar(100) DEFAULT NULL,
  `ReqWil` varchar(100) DEFAULT NULL,
  `StrScal` varchar(100) DEFAULT NULL,
  `DexScal` varchar(100) DEFAULT NULL,
  `MndScal` varchar(100) DEFAULT NULL,
  `WilScal` varchar(100) DEFAULT NULL,
  `WP_Weight` int NOT NULL,
  UNIQUE KEY `WP_Name` (`WP_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES ('Argent Wolf Bayonet','Bayonet Rifles','-','C','-','C+','-','B','D','B+',27),('Argent Wolf Blade','One-Handed Swords','D','D','-','-','C','C','E+','D',35),('Argent Wolf Brand','Two-Handed Swords','B','-','-','-','A','E','-','-',82),('Argent Wolf King\'s Blade','Two-Handed Swords','B','-','D','-','A','-','C','D+',88),('Argent Wolf Poleaxe','Spears/Halberds/Polearms','-','B','-','-','E','A','-','-',66),('Argent Wolf Warhammer','Two-Handed Hammers','B','D','-','-','A','C','-','-',84),('Assassin\'s Sickle','Spears/Halberds/Polearms','D','B','-','D+','C','A','D+','C+',42),('Bardiche','Spears/Halberds/Polearms','D+','D+','-','-','C+','C+','-','-',52),('Bayonet','Bayonet Rifles','-','C','D','C+','-','A','C','B+',14),('Black Bayonet','Bayonet Rifles','-','C+','-','C+','-','B+','D','B+',24),('Black Greatsword','Two-Handed Swords','C+','-','-','D','B+','D','D+','C',70),('Black Halberd','Spears/Halberds/Polearms','E','B','D','-','D','A','C','D+',48),('Black Saber','One-Handed Swords','B','-','-','-','A','D+','-','-',48),('Blazing Claw','One-Handed Swords','D','B','C','D','C','A','C','B',28),('Broadsword','One-Handed Swords','D+','-','-','-','C+','C','-','-',43),('Brodiaea','Bayonet Rifles','-','C+','D','C','-','A','C','B',10),('Burned Warhammer','Two-Handed Hammers','C+','-','D','-','B+','D','C','D+',72),('Burning Disaster','Bayonet Rifles','C+','B','C','-','B+','A','B','E+',33),('Dammerung','Spears/Halberds/Polearms','C','D','-','D+','B','C','C+','D+',57),('Enduring Crimson','One-Handed Swords','C','C','-','-','B','B','-','-',34),('Executioner','One-Handed Swords','D+','B','D','D','C+','A','C','C',38),('Garnet Splitter','Spears/Halberds/Polearms','D','C+','D','-','C','B+','C','D+',54),('Hammer of Thralldom','Two-Handed Hammers','C+','-','-','-','B+','D','-','-',95),('Hanemukuro','One-Handed Swords','D','C+','-','-','C','B','-','-',32),('Heavy Axe','Two-Handed Hammers','C','-','-','-','B','E','-','-',55),('Huge Hammer','Two-Handed Hammers','B','-','-','-','A','D','-','-',87),('Iceblood','One-Handed Swords','D+','C+','D','C','C+','B+','B','C',17),('Impaler','Spears/Halberds/Polearms','-','D','-','-','D+','B','-','-',47),('Impulse Anchor','Two-Handed Hammers','D+','-','-','-','C+','E','-','-',78),('Judgement Edge','Two-Handed Swords','B','-','-','-','A','D+','-','-',86),('Juggernaut Sledgehammer','Two-Handed Hammers','B','-','-','-','A','D+','-','-',76),('Libertador','Bayonet Rifles','-','D+','C','C','-','C+','B','B',20),('Lost Bardiche','Spears/Halberds/Polearms','D','-','-','-','C','D+','-','-',50),('Lost Bayonet','Bayonet Rifles','-','-','-','D','-','C','D','C',11),('Lost Broadsword','One-Handed Swords','D+','D','-','-','C+','D','-','-',40),('Lost Heavy Axe','Two-Handed Hammers','B','D','-','-','A','C','-','-',50),('Lost Zweihander','Two-Handed Swords','D+','-','-','-','C+','D','-','-',80),('Machete','One-Handed Swords','C','D','-','-','B','C','-','-',46),('Nagimukuro','Two-Handed Swords','D+','C','-','-','C+','B','-','-',75),('Obliterator Axe','Spears/Halberds/Polearms','B','-','-','-','A','D','-','-',70),('Oni Bane','Two-Handed Swords','B','-','-','-','A','E','-','-',78),('Pipe of Thralldom','One-Handed Swords','D+','D+','-','-','C+','C','-','-',5),('Queenslayer Bayonet','Bayonet Rifles','-','D','D+','D+','-','A','C+','B',15),('Queenslayer Blade','One-Handed Swords','D+','D+','-','-','C+','C','-','-',35),('Queenslayer Greatsword','Two-Handed Swords','C','-','-','-','B','D+','-','-',73),('Queenslayer Halberd','Spears/Halberds/Polearms','D','D','-','-','C','C','-','-',60),('Queenslayer Hammer','Two-Handed Hammers','C+','-','-','-','B+','D','-','-',74),('Riot Breaker','Bayonet Rifles','D+','D','D','C','B','C+','C','B',22),('Rubellite Piercer','Bayonet Rifles','-','D','D+','D+','-','A','C+','C+',18),('Sunset Bayonet','Bayonet Rifles','-','D','-','D','-','C+','C','D',8),('Sunset Great Sword','Two-Handed Swords','D+','-','-','-','C+','D','-','-',65),('Sunset Halberd','Spears/Halberds/Polearms','-','D','-','-','D+','C','-','-',58),('Sunset Hammer','Two-Handed Hammers','D+','-','-','-','C+','D+','-','-',68),('Sunset Sword','One-Handed Swords','D','-','-','-','C','D+','-','-',30),('Tyrant\'s Labrys','Two-Handed Hammers','B','-','-','-','A','D+','D+','D+',58),('Warped Blade','Two-Handed Swords','C','-','-','-','B','D+','D+','D+',72),('Zweihander','Two-Handed Swords','C','-','-','-','B','E','-','-',87);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-29 13:17:20
