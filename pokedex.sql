-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: pokedex
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (16,'2014_10_12_000000_create_users_table',1),(17,'2014_10_12_100000_create_password_resets_table',1),(18,'2019_08_19_000000_create_failed_jobs_table',1),(19,'2019_12_14_000001_create_personal_access_tokens_table',1),(20,'2022_06_10_095603_create_pokemon_table',1),(21,'2022_06_15_162902_create_notifications_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `id_pok` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nom_pok` varchar(20) NOT NULL,
  `type_pok1` varchar(10) NOT NULL,
  `type_pok2` varchar(10) DEFAULT NULL,
  `methode_evolve` varchar(20) DEFAULT NULL,
  `description` text NOT NULL,
  `Dresseur` varchar(15) DEFAULT NULL,
  `couleur` text,
  PRIMARY KEY (`id_pok`),
  UNIQUE KEY `id_pok` (`id_pok`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbizarre','Plante','Poison','Niveau 16','Il a une etrange graine plante sur son dos. Elle grandit avec lui depuis la naissance.','','#DEFDE0'),(2,'Herbizarre','Plante','Poison','Niveau 36','Alors que son bulbe grossit, il semble perdre son habilite ├â┬á se tenir sur ses pattes.','','#DEFDE0'),(3,'Florizarre','Plante','Poison','Niveau 36','Sa plante murit en absorbant les rayons du soleil. Il migre souvent vers les endroits ensoleilles.','Red','#DEFDE0'),(4,'Salameche','Feu','Aucun','Niveau 16','Il prefere les endroits chauds. En cas de pluie, de la vapeur se forme autour de sa queue.','','#FDDFDF'),(5,'Reptincel','Feu','Aucun','Niveau 36','En agitant sa queue, il peut augmenter le niveau de la temperature ├â┬á un degre incroyable.','','#FDDFDF'),(6,'Dracaufeu','Feu','Vol','Niveau 36','Il peut fondre la roche de son souffle brulant. Il est souvent la cause d\'enormes incendies.','Red','#FDDFDF'),(7,'Carapuce','Eau','Aucun','Niveau 16','Son dos durcit avec l\'age et devient une super carapace. Il peut cracher des jets d\'ecume.','','#DEF3FD'),(8,'Carabaffe','Eau','Aucun','Niveau 36','Il se cache au fond de l\'eau pour guetter sa proie. Ses oreilles sont des gouvernails.','','#DEF3FD'),(9,'Tortank','Eau','Aucun','Niveau 36','Un Pokemon brutal arme de canons hydrauliques. Ses puissants jets d\'eau sont devastateurs.','Red, Leaf','#DEF3FD'),(10,'Chenipan','Insecte','Aucun','Niveau 7','Ses petites pattes sont equipees de ventouses, lui permettant de grimper aux murs.','','#f8d5a3'),(11,'Chrysacier','Insecte','Aucun','Niveau 10','Il est vulnerable aux attaques tant que sa carapace fragile expose son corps tendre et mou.','','#f8d5a3'),(12,'Papilusion','Insecte','Vol','','En combat il bat des ailes tres rapidement pour jeter sur ses ennemis des poudres toxiques.','','#f8d5a3'),(13,'Aspicot','Insecte','Poison','Niveau 7','Il se nourrit de feuilles dans les forets. L\'aiguillon sur son front est empoisonne..','','#f8d5a3'),(14,'Coconfort','Insecte','Poison','Niveau 10','Incapable de se deplacer de lui-meme, il se defend en durcissant sa carapace.','','#f8d5a3'),(15,'Dardargnan','Insecte','Poison','','Il vole ├â┬á tres grande vitesse. Il se bat avec les dards empoisonnes de ses bras.','','#f8d5a3'),(16,'Roucool','Normal','Vol','Niveau 16','Il est souvent vu dans les forets. Il brasse l\'air de ses ailes pres du sol pour projeter du sable.','','#F5F5F5'),(17,'Roucoups','Normal','Vol','Niveau 36','Il protege son territoire avec ardeur et repousse ├â┬á coups de bec tout individu.','','#F5F5F5'),(18,'Roucarnage','Normal','Vol','','Il chasse en survolant la surface de l\'eau et en plongeant pour attraper des proies faciles.','Blue','#F5F5F5'),(19,'Rattata','Normal','Aucun','Niveau 20','Sa morsure est tres puissante. Petit et rapide, on en voit un peu partout.','','#F5F5F5'),(20,'Rattatac','Normal','Aucun','','Si ses moustaches sont coupees, il perds le sens de son equilibre et devient moins rapide.','','#F5F5F5'),(21,'Piafabec','Vol','Normal','Niveau 20','Il chasse les insectes dans les hautes-herbes. Ses petites ailes lui permettent de voler tres vite.','','#F5F5F5'),(22,'Rapasdepic','Vol','Normal','','Ses ailes geantes lui permettent de planer si longtemps qu\'il ne se pose que tres rarement.','','#F5F5F5'),(23,'Abo','Poison','Aucun','Niveau 22','Il se deplace en silence pour devorer des oeufs de Roucool ou de Piafabec.','','#98d7a5'),(24,'Arbok','Poison','Aucun','','Les motifs feroces peints sur son corps changent selon son environnement.','Agatha','#98d7a5'),(25,'Pikachu','Electrique','Aucun','PierreFoudre','Quand plusieurs de ces Pokemon se reunissent, ils provoquent de gigantesques orages.','Red','#FCF7DE'),(26,'Raichu','Electrique','Aucun','','Il doit garder sa queue en contact avec le sol pour eviter toute electrocution.','','#FCF7DE'),(27,'Sabelette','Sol','Aucun','Niveau 22','Il s\'enterre dans les regions arides et desertiques. Il emerge seulement pour chasser.','','#f4e7da'),(28,'Sablaireau','Sol','Aucun','','Il se roule en boule herissee de piques s\'il est menace. Il peut ainsi s\'enfuir ou attaquer.','','#f4e7da'),(29,'NidoranF','Poison','Aucun','Niveau 16','Ce Pokemon est herisse de dards empoisonnes. Les femelles ont des dards plus petits.','','#98d7a5'),(30,'Nidorina','Poison','Aucun','PierreLune','La corne de la femelle grandit lentement. Elle prefere attaquer avec ses griffes et sa gueule.','','#98d7a5'),(31,'Nidoqueen','Poison','Sol','','Ses ecailles tres resistantes et son corps massif sont des armes devastatrices.','','#98d7a5'),(32,'NidoranM','Poison','Aucun','Niveau 16','Son ouie tres fine l\'avertit du danger. Plus ses cornes sont grandes, plus son poison est mortel.','','#98d7a5'),(33,'Nidorino','Poison','Aucun','PierreLune','Tres agressif, il est prompt ├â┬á repondre ├â┬á la violence. La corne sur sa tete est venimeuse.','','#98d7a5'),(34,'Nidoking','Poison','Sol','','Sa queue est une arme redoutable, il s\'en sert pour attraper sa proie et lui broyer les os.','','#98d7a5'),(35,'Melofee','Fee','Aucun','PierreLune','Tres recherche pour son aura mystique, il est tres rare et ne vit que dans des endroits precis.','','#fceaff'),(36,'Melodelfe','Fee','Aucun','','Une sorte de petite fee tres rare. Il se cache en apercevant un etre humain.','','#fceaff'),(37,'Goupix','Feu','Aucun','PierreEau','Il n\'a qu\'une seule queue ├â┬ála naissance. Celle-ci se divise ├â┬á la pointe au fil des ans.','','#FDDFDF'),(38,'Feunard','Feu','Aucun','','Tres intelligent et rancunier. Attrapez-lui une de ses queues et il vous maudira pour 1000 ans.','Leaf','#FDDFDF'),(39,'Rondoudou','Fee','Aucun','PierreLune','Quand ses yeux s\'illuminent, il chante une mysterieuse berceuse.','','#fceaff'),(40,'Grodoudou','Fee','Aucun','','En cas de danger, il gonfle d\'air son corps doux et potele dans des proportions gigantesques.','','#fceaff'),(41,'Nosferapti','Poison','Vol','Niveau 22','Se deplace en colonie dans les endroits sombres. Il s\'oriente grace aux ultrasons.','','#98d7a5'),(42,'Nosferalto','Poison','Vol','','Une fois son adversaire mordu, il absorbera son energie meme s\'il est trop gros pour voler.','Agatha','#98d7a5'),(43,'Mystherbe','Plante','Poison','Niveau 21','Pendant la journee il se cache sous la terre. Il s\'aventure la nuit pour planter des graines.','','#DEFDE0'),(44,'Ortide','Plante','Poison','PierrePlante','Le liquide qui coule de sa bouche est comestible. Il sert ├â┬á appater sa proie.','','#DEFDE0'),(45,'Rafflesia','Plante','Poison','','Plus ses petales son grands, plus ils contiennent de pollen toxique.','','#DEFDE0'),(46,'Paras','Insecte','Plante','Niveau 24','Les champignons sur son dos se nourrissent des nutriments de leur hote insectoide.','','#f8d5a3'),(47,'Parasect','Insecte','Plante','','Une symbiose entre un parasite et un insecte. Le champignon a pris le controle de son hote.','','#f8d5a3'),(48,'Mimitoss','Poison','Insecte','Niveau 31','Il vit a l\'ombre des grands arbres ou il mange des insectes. il est attire par la lumiere.','','#98d7a5'),(49,'Aeromite','Poison','Insecte','','Les motifs ocres de ses ailes changent en fonction de son type de poison.','','#98d7a5'),(50,'Taupiqueur','Sol','Aucun','Niveau 26','Il vit a un metre sous la terre et se nourrit de racines. Il appara├â┬«t rarement ├â┬á la surface.','','#f4e7da'),(51,'Triopikeur','Sol','Aucun','','Un groupe de Taupiqueur. Il cree des seismes en creusant ├â┬á plus de 100 Km de profondeur.','','#f4e7da'),(52,'Miaouss','Normal','Aucun','Niveau 28','Il adore les pieces de monnaie. Il hante les rues ├â┬á la recherche de pieces oubliees par les passants.','','#F5F5F5'),(53,'Persian','Normal','Aucun','','Tres apprecie pour sa fourrure, il est difficile ├â┬á apprivoiser en raison de son caractere retif.','','#F5F5F5'),(54,'Psykokwak','Eau','Aucun','Niveau 33','Il distrait ses ennemis avec des grimaces debiles et les attaque ensuite avec ses pouvoirs Psy.','','#DEF3FD'),(55,'Akwakwak','Eau','Aucun','','Il nage avec elegance le long des cotes. Il est souvent confondu avec le monstre japonais: Kappa.','','#DEF3FD'),(56,'Ferosinge','Combat','Aucun','Niveau 28','Il se met en colere tres vite. Calme ou furieux, son humeur change d\'une seconde ├â┬á l\'autre.','','#E6E0D4'),(57,'Colossinge','Combat','Aucun','','Agressif et teigneux, il poursuit son gibier jusqu\'├â┬á epuisement complet.','','#E6E0D4'),(58,'Caninos','Feu','Aucun','PierreEau','Pour proteger son territoire, il aboie et mord jusqu\'├â┬á ce que les intrus s\'enfuient.','','#FDDFDF'),(59,'Arcanin','Feu','Aucun','','Un Pokemon tres recherche pour sa grace legendaire. Son pas elegant semble glisser sur le vent.','Blue','#FDDFDF'),(60,'Ptitard','Eau','Aucun','Niveau 25','Il court mal avec ses petites pattes. Il prefere nager que de se tenir debout.','','#DEF3FD'),(61,'Tetarte','Eau','Aucun','PierreEau','Amphibie, il peut vivre a l\'air libre mais il doit rester mouille pour survivre.','','#DEF3FD'),(62,'Tartard','Eau','Combat','','Excellent nageur, il pratique le crawl ou la nage papillon mieux qu\'un champion olympique.','','#DEF3FD'),(63,'Abra','Psy','Aucun','Niveau 16','Son don de telepathie lui permet de sentir le danger et de se teleporter en un lieu sur.','','#eaeda1'),(64,'Kadabra','Psy','Aucun','Evolution','Son corps emet des ondes alpha provoquant des migraines ├â┬á ceux qui se trouvent ├â┬á proximite.','','#eaeda1'),(65,'Alakazam','Psy','Aucun','','Son super cerveau peut effectuer des operations ├â┬á la vitesse d\'un ordinateur. Il a un Q.I. de 5000.','Blue','#eaeda1'),(66,'Machoc','Combat','Aucun','Niveau 28','Il adore la musculation. Il pratique les arts martiaux pour devenir encore plus fort.','','#E6E0D4'),(67,'Machopeur','Combat','Aucun','Evolution','Son corps est si puissant qu\'il lui faut une ceinture de force pour equilibrer ses mouvements.','','#E6E0D4'),(68,'Mackogneur','Combat','Aucun','','Ses coups de poings sont si puissants qu\'ils font voler ses adversaires jusqu\'├â┬á l\'horizon.','Aldo','#E6E0D4'),(69,'Chetiflor','Poison','Plante','Niveau 21','Un Pokemon carnivore qui se nourrit de petits insectes. Ses racines servent d\'attaches.','','#DEFDE0'),(70,'Boustiflor','Poison','Plante','PierrePlante','Il crache de la Poudre Toxik pour immobiliser sa proie et il l\'acheve avec de l\'Acide.','','#DEFDE0'),(71,'Empiflor','Poison','Plante','','Il vit en colonie dans la jungle mais personne n\'en est jamais revenu vivant.','Leaf','#DEFDE0'),(72,'Tentacool','Eau','Poison','Niveau 30','Flottant au bord des cotes, les pecheurs se font souvent arroser d\'acide quand ils en accrochent un.','','#DEF3FD'),(73,'Tentacruel','Eau','Poison','','Ses tentacules sont retractees au repos. En situation de chasse, ils rallongent.','','#DEF3FD'),(74,'Racaillou','Roche','Sol','Niveau 25','Il vit dans les plaines ou les montagnes. On le confond souvent avec un petit caillou.','','#d5d5d4'),(75,'Gravalanch','Roche','Sol','Evolution','Pour se deplacer il degringole le long des pentes. Il pulverise tout obstacle sur son passage.','','#d5d5d4'),(76,'Grolem','Roche','Sol','','Son corps de pierre est indestructible. Il peut supporter des explosions de dynamite.','','#d5d5d4'),(77,'Ponyta','Feu','Aucun','Niveau 40','Ses sabots sont plus resistants que le diamant. Il peut aplatir n\'importe quoi en le pietinant.','','#FDDFDF'),(78,'Galopa','Feu','Aucun','','Dote d\'un esprit de competition, il poursuit toute creature rapide pour faire la course.','','#FDDFDF'),(79,'Ramoloss','Eau','Psy','Niveau 37','Tres lent et endormi, il lui faut 5 secondes pour ressentir la douleur d\'une attaque.','','#DEF3FD'),(80,'Flagadoss','Eau','Psy','','Le Kokiyas attache ├â┬á la queue du Ramoloss se nourrit des restes de son hote.','Blue, Olga','#DEF3FD'),(81,'Magneti','Acier','Electrique','Niveau 30','Il controle la gravite pour pouvoir voler. il attaque avec des Cage-eclair.','','#FCF7DE'),(82,'Magneton','Acier','Electrique','','Constitue de Magneti relies les uns aux autres, il appara├â┬«t lorsque le soleil brille.','','#FCF7DE'),(83,'Canarticho','Normal','Vol','','Il utilise l\'oignon qu\'il a dans la bouche comme une epee d\'acier.','','#F5F5F5'),(84,'Doduo','Normal','Vol','Niveau 31','Cet oiseau vole tres mal mais court tres vite. Il laisse de gigantesques empreintes de pas.','','#F5F5F5'),(85,'Dodrio','Normal','Vol','','Il elabore des plans complexes avec ses trois cerveaux. Une de ses tetes reste toujours eveillee.','','#F5F5F5'),(86,'Otaria','Eau','Glace','Niveau 34','La corne sur son front est tres resistante. Elle lui sert ├â┬á percer des blocs de glace.','','#DEF3FD'),(87,'Lamantine','Eau','Glace','','Il emmagasine la chaleur dans son corps. Il peut nager dans l\'eau glacee ├â┬á plus de 8 noeuds.','Olga','#DEF3FD'),(88,'Tadmorv','Poison','Aucun','Niveau 38','Vivant dans des tas d\'ordure, il se nourrit des dechets polluants rejetes par les usines.','','#98d7a5'),(89,'Grotadmorv','Poison','Aucun','','Il est recouvert d\'une epaisse couche toxique. Il laisse une trace empoisonnee derriere lui.','','#98d7a5'),(90,'Kokiyas','Eau','Glace','PierreEau','Protege par une carapace tres resistante, il est vulnerable quand celle-ci s\'ouvre.','','#DEF3FD'),(91,'Crustabri','Eau','Glace','','Une fois menace, il envoie de rapides volees de dards. Sa partie interne est inconnue.','Olga','#DEF3FD'),(92,'Fantominus','Spectre','Poison','Niveau 25','Ce Pokemon gazeux plonge ses victimes dans un profond sommeil sans qu\'elles ne s\'en apercoivent.','','#8A568A'),(93,'Spectrum','Spectre','Poison','Evolution','Il peut se glisser ├â┬á travers les murs comme une creature d\'une autre dimension.','Agatha','#8A568A'),(94,'Ectoplasma','Spectre','Poison','','Les nuits de pleine lune, il imite l\'ombre des passants et se moque de leur effroi.','Leaf, Agatha','#8A568A'),(95,'Onix','Roche','Sol','','Les parties en pierre de son corps durcissent pour devenir comme un diamant de couleur noire.','Aldo','#d5d5d4'),(96,'Soporifik','Psy','Aucun','Niveau 26','Il endort ses ennemis et devore leurs songes. En mangeant de mauvais reves il devient malade.','','#eaeda1'),(97,'Hypnomade','Psy','Aucun','','En fixant son adversaire, il l\'assaille avec les attaques psy d\'hypnose et de Choc Mental.','','#eaeda1'),(98,'Krabby','Eau','Aucun','Niveau 28','Ses pinces sont des armes tres puissantes. Elles lui servent aussi ├â┬á garder son equilibre.','','#DEF3FD'),(99,'Krabboss','Eau','Aucun','','Son enorme pince peut deployer une pression de 1000 Kg. Mais elle est tres encombrante.','','#DEF3FD'),(100,'Voltorbe','Electrique','Aucun','Niveau 30','Vivant dans les centrales, ce Pokemon survolte est souvent confondu avec une Poke Ball.','','#FCF7DE'),(101,'Electrode','Electrique','Aucun','','Il emmagasine des quantites enormes de courants electrique sous pression pouvant exploser.','','#FCF7DE'),(102,'Noeunoeuf','Plante','Psy','PierrePlante','Souvent pris pour des oeufs, ils attaquent en groupe comme un essaim.','','#DEFDE0'),(103,'Noadkoko','Plante','Psy','','On raconte que si une de ses tetes se detache, elle se transforme en Noeunoeuf.','Blue','#DEFDE0'),(104,'Osselait','Sol','Aucun','Niveau 28','Il ne retire jamais son casque en os. Personne n\'a jamais vu son vrai visage.','','#f4e7da'),(105,'Ossatueur','Sol','Aucun','','L\'os qu\'il tient dans sa main est une arme. Il peut le lancer avec adresse pour assommer sa proie.','','#f4e7da'),(106,'Kicklee','Combat','Aucun','','S\'il est presse, ses jambes s\'allongent progressivement. Il court tres rapidement.','Aldo','#E6E0D4'),(107,'Tygnon','Combat','Aucun','','Il distribue des series de coups de poings rapide comme l\'eclair, invisibles ├â┬á l\'oeil nu.','Aldo','#E6E0D4'),(108,'Excelangue','Normal','Aucun','','Il peut projeter sa langue comme un cameleon. Tout contact avec elle produit une irritation.','','#F5F5F5'),(109,'Smogo','Poison','Aucun','Niveau 35','Son corps instable constitue de gaz toxiques peut exploser soudainement.','','#98d7a5'),(110,'Smogogo','Poison','Aucun','','Deux Smogo peuvent se combiner en un seul Smogogo en melangeant leur gaz.','','#98d7a5'),(111,'Rhinocorne','Roche','Sol','Niveau 42','Avec une ossature 1000 fois plus resistante que celle de l\'homme, ses charges sont devastatrices.','','#d5d5d4'),(112,'Rhinoferos','Roche','Sol','','Son epiderme tres eleve lui permet de survivre dans un environnement de plus de 3600 degres.','Blue','#d5d5d4'),(113,'Leveinard','Normal','Aucun','','Un Pokemon rare et difficile ├â┬á capturer qui porte chance et bien-etre ├â┬á son possesseur.','','#F5F5F5'),(114,'Saquedeneu','Plante','Aucun','','Son corps est recouvert de lianes similaires ├â┬á des algues. Elles bougent quand il marche.','','#DEFDE0'),(115,'Kangourex','Normal','Aucun','','Son enfant ne quitte la poche ventrale protectrice qu\'├â┬á l\'age de 3 ans.','Leaf','#F5F5F5'),(116,'Hypotrempe','Eau','Aucun','Niveau 32','Repute pour tirer avec precision sur des insectes volants ├â┬á la surface de l\'eau.','','#DEF3FD'),(117,'Hypocean','Eau','Aucun','','Il peut nager ├â┬á l\'envers en agitant ses petites nageoire pectorales.','','#DEF3FD'),(118,'Poissirene','Eau','Aucun','Niveau 33','Sa queue ondule gracieusement comme un voile. On l\'appelle Reine des oceans.','','#DEF3FD'),(119,'Poissoroy','Eau','Aucun','','Pendant la saison des amours on peut le voir nager pres des rivieres ou des lacs.','','#DEF3FD'),(120,'Stari','Eau','Aucun','PierreEau','Un Pokemon bien curieux qui peut regenerer ses appendices sectionnes pendant un combat.','','#DEF3FD'),(121,'Staross','Eau','Psy','','Son coeur brille des couleurs de l\'arc-en-ciel. On dit que c\'est une pierre precieuse.','','#DEF3FD'),(122,'M. Mime','Psy','Fee','','Derangez le pendant qu\'il mime, et il vous distribuera une volee de claques.','','#eaeda1'),(123,'Insecateur','Insecte','Vol','','Rapide et agile comme un ninja, il se deplace si vite qu\'il cree l\'illusion d\'etre en groupe.','','#f8d5a3'),(124,'Lippoutou','Psy','Glace','','Il ondule ses hanches en marchant et entraine les gens dans des danses frenetiques.','Olga','#eaeda1'),(125,'Elektek','Electrique','Aucun','','Vivant dans les centrales, il provoque des pannes de courant en s\'aventurant en ville.','','#FCF7DE'),(126,'Magmar','Feu','Aucun','','Son corps en fusion brule d\'une flamme orangee le rendant invisible dans le feu.','','#FDDFDF'),(127,'Scarabrute','Insecte','Aucun','','Quand il ne peut ecraser sa proie avec sa pince, il la secoue et l\'envoie dans les airs.','','#f8d5a3'),(128,'Tauros','Normal','Aucun','','Une fois sa cible en vue, il la charge furieusement en fouettant l\'air de sa queue.','','#F5F5F5'),(129,'Magicarpe','Eau','Aucun','Niveau 20','Autrefois, il etait beaucoup plus puissant que cette creature minablement faible.','','#DEF3FD'),(130,'Leviator','Eau','Vol','','Gigantesque et malefique, il est capable de raser une ville entiere dans un acces de rage.','Blue, Peter','#DEF3FD'),(131,'Lokhlass','Eau','Glace','','Ce Pokemon en voie d\'extinction peut transporter des passagers sur son dos par-del├â┬á les oceans.','Red, Olga','#DEF3FD'),(132,'Metamorph','Normal','Aucun','','Il est capable de copier le code genetique d\'un ennemi pour se transformer en son double.','','#F5F5F5'),(133,'Evoli','Normal','Aucun','Sous condition','Ce mysterieux Pokemon peut evoluer de differentes mannieres grace ├â┬á des pierres.','','#F5F5F5'),(134,'Aquali','Eau','Aucun','PierreEau','Il vit au bord de l\'eau. Sa queue lui donne l\'apparence d\'une sirene.','','#DEF3FD'),(135,'Voltali','Electrique','Aucun','PierreFoudre','Il se charge delectricite statique pour envoyer des decharges de 1000 volts.','','#FCF7DE'),(136,'Pyroli','Feu','Aucun','PierreEau','Il peut accumuler suffisamment de chaleur pour atteindre des temperatures de 1 600 degres.','','#FDDFDF'),(137,'Porygon','Normal','Aucun','','Un Pokemon fait de programmes et d\'algorithmes. Il peut survivre en milieu virtuel.','','#F5F5F5'),(138,'Amonita','Eau','Roche','Niveau 40','Disparu depuis longtemps,il peut etre reanime genetiquement ├â┬á partir d\'anciens fossiles.','','#DEF3FD'),(139,'Amonistar','Eau','Roche','','Un Pokemon prehistorique qui disparut quand sa coquille devint trop lourde ├â┬á deplacer.','','#DEF3FD'),(140,'Kabuto','Eau','Roche','Niveau 40','Un Pokemon reconstitue ├â┬á partir d\'un fossile trouve sur un site prehistorique.','','#DEF3FD'),(141,'Kabutops','Eau','Roche','','Sa forme elancee lui permet de nager rapidement. Il lacere sa proie avant d\'en absorber la vie.','','#DEF3FD'),(142,'Ptera','Vol','Roche','','Un Pokemon prehistorique qui attaque son ennemi ├â┬á la gorge avec ses crocs aceres.','Peter','#F5F5F5'),(143,'Ronflex','Normal','Aucun','','Tres paresseux, il ne fait que manger et dormir. Plus il est gros, plus il devient faineant.','Red','#F5F5F5'),(144,'Artikodin','Vol','Glace','','Le legendaire oiseau des glaces. On dit qu\'il appara├â┬«t aux gens perdus dans les sommets.','','#F5F5F5'),(145,'Electhor','Vol','Electrique','','L\'oiseau legendaire de la foudre. Il surgit hors des nuages en lancant d\'enormes eclairs.','','#F5F5F5'),(146,'Sulfura','Vol','Feu','','Le legendaire oiseau de feu. Une pluie de flammes surgit ├â┬á chaque battement de ses ailes.','','#F5F5F5'),(147,'Minidraco','Dragon','Aucun','Niveau 30','Longtemps considere comme legendaire, une colonie fut decouverte dans les oceans.','','#97b3e6'),(148,'Draco','Dragon','Aucun','Niveau 55','Un Pokemon legendaire plein de charme. Il peut controler les variations climatiques.','Peter','#97b3e6'),(149,'Dracolosse','Dragon','Vol','','Un Pokemon marin extremement rare. On dit qu\'il est aussi intelligent que l\'homme.','Peter','#97b3e6'),(150,'Mewtwo','Psy','Aucun','','Il est le fruit de nombreuses experiences genetiques horribles et malsaines.','','#eaeda1'),(151,'Mew','Psy','Aucun','','Unique et rare, son existence est remise en cause par les experts. Peu nombreux sont ceux qui l\'ont vu.','','#eaeda1');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 10:41:35
