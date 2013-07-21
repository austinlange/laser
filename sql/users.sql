/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

SET standard_conforming_strings = 'off';
SET backslash_quote = 'on';

CREATE TABLE users (
  user_id integer NOT NULL,
  user_login varchar(20) NOT NULL,
  user_email varchar(50) DEFAULT NULL,
  user_password varchar(255) NOT NULL,
  user_name varchar(100) NOT NULL,
  user_phone varchar(12) DEFAULT NULL,
  user_created timestamp NOT NULL,
  user_checkout_enabled smallint NOT NULL DEFAULT 0,
  user_status smallint NOT NULL DEFAULT 1,
  PRIMARY KEY (user_id)
);
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO users VALUES (14,'jbfcmal','','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','Dave','914.773.7663','2011-02-21 15:05:34',0,0),(15,'thomoconnor','a','*AD4205E3AEFF7AC9C4B2ED2AC20CB293BEE1BA71','Thom O\'Connor','914.815.0513','2011-02-21 15:24:00',1,1),(16,'jakegreene','jgreene@burnsfilmcenter.org','*D35DCEAB2EEC05579907EFBF630F1459DB6FF724','Jacob Greene','518.588.7537','2011-02-22 10:15:00',1,1),(17,'seangallagher','sgallagher@burnsfilmcenter.org','*90B71CDB366F6FDCD546AD9807C74DB32CEC4B95','Sean Gallagher','914.844.4280','2011-02-22 10:17:37',1,1),(18,'darrelswann','swanda@sean.co','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Darrel Swann','555.555.5555','2011-02-22 10:22:53',0,1),(19,'russellpeborde','rpeborde@burnsfilmcenter.org','*CADCB9F59C4EB964BB6C042499B0DF12EE514636','Russell Peborde','914.924.4687','2011-02-22 11:44:41',1,1),(20,'sebastiangillen','sebgillen@gmail.com','*DC706E5DE9EA41C5F78EA282AD03BF9CBB8BA30C','Sebastian Gillen','914.774.5110','2011-02-24 12:30:40',1,1),(21,'brandonthomas','uniquenorma@aol.com','','Brandon Thomas','914.562.3781','2011-02-24 12:31:58',0,1),(22,'jacobboyar','jmboyar@mac.com','','Jacob Boyar','914.244.1333','2011-02-24 12:39:43',0,1),(23,'thomasconnelly','frances.kerrigan@yahoo.com','','Thomas Connelly','914.763.6545','2011-02-24 13:21:32',0,1),(24,'charlotteberg','bry.jen1@verizon.net','','Charlotte Berg','914.769.3659','2011-02-24 13:22:43',0,1),(25,'alexanderventura','alexwv@yahoo.com','','Alexander Ventura','914.923.1942','2011-02-24 13:23:46',0,1),(26,'hameedmourani','wfmourani@aol.com','','Hameed Mourani','914.333.0793','2011-02-24 13:24:33',0,1),(27,'kristypavlick','f14gp@aol.com','','Kristy Pavlick','914.441.4751','2011-02-24 13:25:43',0,1),(28,'iandurso','wallyandwendy@optonline.net','','Ian Durso','845.831.6583','2011-02-24 13:29:41',0,1),(29,'octavioburbano','alice@rawrev.com','','Octavio Burbano','914.420.4208','2011-02-24 13:30:19',0,1),(30,'mackmeller','themellers@gmail.com','','Mack Meller','914.234.7117','2011-02-24 13:31:01',0,1),(31,'seanflynn','flynnd@aol.com','','Sean Flynn','845.566.6653','2011-02-24 13:32:32',0,1),(32,'hudsonschumacher','sageandfriends@gmail.com','','Hudson Schumacher','914.261.1470','2011-02-24 13:33:26',0,1),(33,'andrewskjeveland','lori.skjeveland@gmail.com','','Andrew Skjeveland','914.882.7318','2011-02-24 13:34:34',0,1),(34,'gavinchecchi','nursengc@aol.com','','Gavin Checchi','914.374.5751','2011-02-24 13:39:12',0,1),(35,'raymarszalek','diana.marszalek@yahoo.com','','Ray Marszalek','914.450.3462','2011-02-24 13:40:01',0,1),(36,'walkeryoung','susan@archipelagofilms.com','','Walker Young','914.271.6397','2011-02-24 13:43:35',0,1),(37,'emmanuelpolakoski','joseph.a.polakoski@gmail.com','','Emmanuel Polakoski','914.837.7792','2011-02-24 13:45:24',0,1),(38,'zacharyperez','susan.cuccinello@gmail.com','','Zachary Perez','914.762.5123','2011-02-24 13:46:25',0,1),(39,'henrydelacova','ehsinsabaugh@gmail.com','','Henry delaCova','914.373.4648','2011-02-24 13:47:48',0,1),(40,'jalenrotella-white','lwhitejr36@yahoo.com','','Jalen Rotella-White','914.420.4943','2011-02-24 13:57:11',0,1),(41,'ethanjacobs','mgjacobs@optonline.net','','Ethan Jacobs','914.261.7530','2011-02-24 13:57:55',0,1),(42,'maxcomora','hacomora@optonline.net','','Max Comora','917.371.5675','2011-02-24 14:05:53',0,1),(43,'ezralevine','missyk1215@verizon.net','','Ezra Levine','914.844.7933','2011-02-24 14:07:23',0,1),(44,'jakestern','nicolestern@optonline.net','','Jake Stern','914.773.0444','2011-02-24 14:08:47',0,1),(45,'mimipelton-mccormick','lcpelton@optonline.net','','Mimi Pelton-McCormick','914.523.6852','2011-02-24 14:09:26',0,1),(50,'seanweiner','sweiner@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Sean Weiner','442','2011-03-02 17:47:58',0,1),(51,'jemcostello','nancyhennessee@gmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Jem Costello','914-330-1248','2011-03-02 17:49:40',0,1),(52,'bradyshoemaker','bshoemaker@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Brady Shoemaker','428','2011-03-02 17:51:04',0,1),(53,'aaronmace','amace@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Aaron Mace','438','2011-03-02 17:51:37',0,1),(54,'jessegreen','jgreen@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Jesse Green','12','2011-03-03 14:13:15',0,1),(55,'toddsandler','toddisandler@gmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Todd Sandler','','2011-03-03 14:14:14',0,1),(56,'mayaknell','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Maya Knell','Holen\'s Mast','2011-03-03 14:16:42',0,1),(57,'milesackerman','backerman@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Miles Ackerman','914-271-1268','2011-03-03 14:18:45',0,1),(58,'janissharkey','sharkey@bestweb.net','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Janis Sharkey','914.232.6797','2011-03-03 15:07:12',0,1),(59,'theresadawson','tdawson@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Theresa Dawson','451','2011-03-03 15:53:41',0,1),(60,'sandertancredi','heidisonn.riverspa@yahoo.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Sander Tancredi','914.478.3949','2011-03-03 18:12:41',0,1),(61,'samberger','skberger@fastmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Sam Berger','914.486.0146','2011-03-03 19:37:29',0,1),(62,'annemariesantoro','','','Anne Marie Santoro','','2011-03-04 09:20:58',0,1),(63,'emilyohara','eohara@burnsfilmcenter.org','','Emily O\\\'Hara','','2011-03-04 10:53:15',0,1),(64,'brookemarin','bmarin124@gmail.com','','Brooke Marin','914.610.1552','2011-03-04 15:46:37',0,1),(65,'carolleicht','leichthousevideo@att.net','','Carol Leicht','772-341-8420','2011-03-09 10:29:44',0,1),(66,'adamrothstar','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Adam Rothstar','','2011-03-09 14:56:15',0,1),(67,'holenkahn','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Holen Kahn','','2011-03-09 16:56:47',0,1),(68,'tylernass','','','Tyler Nass','','2011-03-11 15:16:26',0,1),(69,'shivayparekh','','','Shivay Parekh','','2011-03-11 15:16:45',0,1),(70,'conorkennedy','conorkkennedy@gmail.com','','Conor Kennedy','914.844.9006','2011-03-11 16:09:59',0,1),(71,'gregorynemec','gregorynemec@nerizon.net','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Gregory Nemec','914.844.8684','2011-03-14 16:37:25',0,1),(72,'janelleiglesias','janelleiglesias@yahoo.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Janelle Iglesias','804.564.5410','2011-03-14 16:39:07',0,1),(73,'elizagracecattau','birthtalk@aol.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Eliza Grace Cattau','914.260.3834','2011-03-15 12:48:49',0,1),(74,'patconley','paconley@ccsd.ws','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Pat Conley','','2011-03-15 18:44:25',0,1),(75,'christinagriffin','cg@christinagriffinarchitect.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Christina Griffin','914.400.4171','2011-03-16 10:34:11',0,1),(76,'peterwolf','cg@christinagriffinarchitect.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Peter Wolf ','914.400.4171','2011-03-16 10:34:39',0,1),(77,'Natalie Ware','natalieware93@gmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Natalie Ware','914.330.3907','2011-03-16 14:33:56',0,1),(78,'michaelkuegler','','','Michael Kuegler','','2011-03-18 15:04:15',0,1),(79,'nitzanofir','nitzan.ofir@gmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Nitzan Ofir','914.295.4602','2011-03-21 11:41:30',0,1),(80,'lukasarbogast','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Lukas Arbogast','914.406.0255','2011-03-21 19:11:07',0,1),(81,'emilykeating','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Emily Keating','','2011-03-24 11:27:32',0,1),(82,'nadinebarnettcosby','','','Nadine Barnett Cosby','','2011-03-24 17:00:12',0,1),(83,'juliarosen','','','Julia Rosen','','2011-03-25 16:04:00',0,1),(84,'jaimegoldstein','','','Jaime Goldstein','','2011-03-26 14:43:59',0,1),(88,'langeau3987654_87','austias4567ddfe@gmail.com','','Austin Langrgerererererre','9146298888','2011-04-13 14:11:42',1,1),(108,'abbypopper','apopper@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Abby Popper','x424','2011-06-15 11:54:54',0,0),(109,'agatharybicki','arybicki@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Agatha Rybicki','x454','2011-06-15 11:57:24',0,0),(110,'alanabenoit','abenoit@burnsfilmcenter.org','*97E3CA0A0B00371413E6ECCD76C473CCA8757F86','Alana Benoit','x423','2011-06-15 11:58:57',0,0),(111,'amyeskridge','aeskridge@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Amy Eskridge','x435','2011-06-15 12:00:06',0,0),(112,'annmacdonald','amacdonald@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Ann MacDonald','x440','2011-06-15 12:00:42',0,0),(114,'brianakerman','bakerman@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Brian Akerman','x413','2011-06-15 12:03:17',0,0),(115,'chrisfunderberg','cfunderberg@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Christopher Funderberg','x422','2011-06-15 12:04:22',0,0),(116,'craigtreco','ctreco@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Craig Treco','914 494 9576','2011-06-15 12:05:31',0,0),(117,'danpallotti','dpallotti@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Dan Pallotti','x416','2011-06-15 12:06:06',0,0),(118,'denisetreco','dtreco@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Denise Treco','x415','2011-06-15 12:06:32',0,0),(119,'didikirtley','dkirtley@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Didi Kirtley','x430','2011-06-15 12:07:06',0,0),(120,'dominickballetta','dballetta@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Dominick Balletta','x439','2011-06-15 12:07:34',0,0),(121,'elizabethgarrigue','egarrigue@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Elizabeth Garrigue','x412','2011-06-15 12:08:26',0,0),(123,'frankvetere','fvetere@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Frank Vetere','x450','2011-06-15 12:09:42',0,0),(124,'ginaduncan','gduncan@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Gina Duncan','x441','2011-06-15 12:10:01',0,0),(126,'jackrailton','jrailton@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Jack Railton','x431','2011-06-15 12:11:05',0,0),(127,'jessicasucher','jsucher@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Jessica Sucher','x485','2011-06-15 12:11:36',0,0),(128,'joycejabbour','jjabbour@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Joyce Jabbour','x443','2011-06-15 12:12:19',0,0),(129,'judyexton','jexton@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Judy Exton','x414','2011-06-15 12:12:44',0,0),(131,'karengoodman','kgoodman@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Karen Goodman','x419','2011-06-15 12:14:44',0,0),(132,'kimturner','kturner@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Kim Turner','x429','2011-06-15 12:15:03',0,0),(133,'melissatepe','mtepe@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Melissa Tepe','x436','2011-06-15 12:15:30',0,0),(134,'nancyrubini','nrubini@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Nancy Rubini','x432','2011-06-15 12:15:55',0,0),(135,'robsampogna','rsampogna@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Rob Sampogna','x434','2011-06-15 12:16:29',0,0),(138,'steveapkon','sapkon@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Steve Apkon','x401','2011-06-15 12:18:42',0,0),(139,'sungcho','scho@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Sung Cho','x437','2011-06-15 12:19:18',0,0),(140,'susankineke','skineke@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Susan Kineke','x418','2011-06-15 12:19:58',0,0),(141,'susanobrien','sobrien@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Susan O\'Brien','x421','2011-06-15 13:23:52',0,0),(142,'terryannmarshall','tmarshall@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Terry Ann Marshall','x420','2011-06-15 13:24:18',0,0),(147,'andrewjupin','ajupin@burnsfilmcenter.org','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Andrew Jupin','','2011-06-15 13:26:03',0,0),(149,'sebgillen','','*DC706E5DE9EA41C5F78EA282AD03BF9CBB8BA30C','Sebastian Gillen','914-774-5110','2011-06-23 11:36:08',0,0),(151,'karennaimool','knaimool@childrensvillage.org','','Karen Naimool','914 693-0600','2011-07-08 11:39:13',0,0),(155,'joesummerhays','','','Joe Summerhays','','2011-07-12 09:15:52',0,0),(157,'jordanroberts','','','Jordan Roberts','','2011-07-12 09:17:32',0,0),(160,'jamiegoldstein','','','Jamie Goldstein','','2011-07-13 13:32:29',0,0),(161,'timnicholas','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Tim Nicholas','','2011-07-22 15:00:33',0,0),(162,'sebastiansavino','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Sebastian Savino','','2011-07-22 16:18:34',0,0),(163,'debrarodman','drodman111@aol.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Debra Rodman','914 260 5763','2011-07-25 09:05:40',0,0),(164,'russpeborde','rpeborde@burnsfilmcenter.org','*CADCB9F59C4EB964BB6C042499B0DF12EE514636','Russell Peborde','','2011-08-02 15:16:24',1,1),(165,'dylanfranks','','','Dylan Franks','914-629-2801','2011-08-04 14:44:52',0,0),(166,'brandon.thomas','bdub2thetubb@gmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Brandon Thomas','914.699.3230','2011-08-04 16:36:41',0,0),(169,'gregnemec','','','Greg Nemec','','2011-08-19 13:00:11',0,0),(171,'arockshar','','*79B3D77E2511B3886E77B2754C345AC6E44E3C32','Adam Rokshar','','2011-08-23 14:52:35',0,0),(172,'justindrobinski','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Justin Drobinski','','2011-08-24 13:34:27',0,0),(173,'johndoe','','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','John Doe','','2011-08-30 10:15:17',0,0),(174,'amystern','amy.stern10@gmail.com','','Amy Stern','914-723-7011','2011-09-14 17:46:51',0,0),(175,'patrickconley','paconley@ccsd.ws','','Patrick Conley','','2011-09-15 15:38:35',0,0),(176,'danielsimpson','dsimp23412@optonline.net','','Daniel Simpson','914-248-7058','2011-09-22 19:38:33',0,0),(177,'joyscantlebury','conset@aol.com','','Joy Scantlebury','914-946-5169','2011-09-22 19:43:09',0,0),(178,'lisabrown','lisabr@us.ibm.com','','Lisa Brown','914-741-2886','2011-09-23 13:00:56',0,0),(179,'alisonshearer','alison@caramoor.org','','Alison Shearer','914-232-5035','2011-09-23 13:01:32',0,0),(180,'salvaccaro','sal@caramoor.org','','Sal Vaccaro','914-232-5035','2011-09-23 13:02:06',0,0),(181,'helenmeurer','helen@loring.net','','Helen Meurer','914-769-1561','2011-09-23 13:02:37',0,0),(182,'gailsimpson','gsimpson2001@aol.com','','Gail Simpson','914-248-7058','2011-09-23 13:03:27',0,0),(183,'melissaelian','mel416@gmail.com','*2470C0C06DEE42FD1618BB99005ADCA2EC9D1E19','Melissa Elian','9143741766','2011-09-28 16:41:05',0,0),(186,'annekouzmanoff','annieoff@gmail.com','','Anne Kouzmanoff','734-730-1019','2011-10-12 18:41:17',0,0);