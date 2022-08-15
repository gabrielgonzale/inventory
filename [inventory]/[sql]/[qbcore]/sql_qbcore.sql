CREATE TABLE IF NOT EXISTS `qs_glovebox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) DEFAULT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `qs_ammo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `ammo` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`identifier`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3638 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `qs_stash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stash` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stash` (`stash`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `qs_trunk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plate` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=1141 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `qs_customshops` (
  `cid` varchar(50) DEFAULT NULL,
  `shopname` varchar(50) DEFAULT NULL,
  `shopdata` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `qs_trunk` DISABLE KEYS */;
/*!40000 ALTER TABLE `qs_trunk` ENABLE KEYS */;