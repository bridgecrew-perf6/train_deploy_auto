use bwc;

CREATE TABLE IF NOT EXISTS `data_lanzhou` (
  `Number` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` timestamp NULL DEFAULT NULL,
  `header` smallint(5) unsigned NOT NULL,
  `length` smallint(5) unsigned NOT NULL,
  `signtype` smallint(5) unsigned NOT NULL,
  `EventType` tinyint(3) unsigned NOT NULL,
  `StationID` tinyint(3) NOT NULL,
  `PlineID` tinyint(3) unsigned NOT NULL,
  `HeadType` tinyint(3) unsigned NOT NULL,
  `TAXStat` tinyint(3) unsigned NOT NULL,
  `GPSStat` tinyint(3) unsigned NOT NULL,
  `tx` double NOT NULL,
  `ty` double NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `direction` tinyint(3) unsigned NOT NULL,
  `PointType` tinyint(3) unsigned NOT NULL,
  `PointID` tinyint(3) unsigned NOT NULL,
  `DistoP` float NOT NULL,
  `TAXTIME` datetime NOT NULL,
  `Speed` smallint(5) unsigned NOT NULL,
  `MaxSpeed` smallint(5) unsigned NOT NULL,
  `DriverNo` int(10) unsigned NOT NULL,
  `EngineNo` int(10) unsigned NOT NULL,
  `EngineType` tinyint(3) unsigned NOT NULL,
  `train_direct` float NOT NULL,
  `headPos_flg` tinyint(3) unsigned NOT NULL,
  `headPos_headType` tinyint(3) unsigned NOT NULL,
  `headPos_bRunHead` tinyint(3) unsigned NOT NULL,
  `headPos_hx` double NOT NULL,
  `headPos_hy` double NOT NULL,
  `LocoState` tinyint(3) NOT NULL,
  `LampStateValue` tinyint(3) NOT NULL,
  `EngineTypeStr` char(20) DEFAULT NULL,
  `TaxIsExit` tinyint(3) unsigned NOT NULL,
  `State4G` tinyint(3) unsigned NOT NULL,
  `LinePer` double NOT NULL,
  `LineName` char(20) DEFAULT NULL,
  `ProVersion` tinyint(3) unsigned NOT NULL,
  `LampName` char(20) DEFAULT NULL,
  `winver` smallint(5) unsigned NOT NULL,
  `acver` smallint(5) unsigned NOT NULL,
  `lampver` smallint(5) unsigned NOT NULL,
  `yuliu` char(32) DEFAULT NULL,
  `sc` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`Number`),
  KEY `index2` (`EngineTypeStr`,`EngineNo`,`TAXTIME`),
  KEY `index3` (`EngineTypeStr`,`EngineNo`,`TIME`)
) ENGINE=InnoDB AUTO_INCREMENT=2707615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `info_railway_bureau` (
  `railway_bureau_id` int(10) unsigned NOT NULL,
  `railway_bureau_name` varchar(50) NOT NULL,
  `railway_bureau_pinyin` varchar(50) NOT NULL,
  `train_count` int(10) unsigned DEFAULT NULL,
  `station_count` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`railway_bureau_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `info_station` (
  `station_id` int(10) unsigned NOT NULL COMMENT '主键',
  `station_name` varchar(50) NOT NULL COMMENT '站场名',
  `railway_bureau_name` tinytext NOT NULL COMMENT '铁路局',
  `map_version` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '站场地图版本',
  `GPS_version` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '站场地图版本',
  `xm_min` double NOT NULL COMMENT 'x方向最小坐标',
  `xm_max` double NOT NULL COMMENT 'x方向最大坐标',
  `ym_min` double NOT NULL COMMENT 'y方向最小坐标',
  `ym_max` double NOT NULL COMMENT 'y方向最大坐标',
  `angle` float NOT NULL DEFAULT '0' COMMENT '角度',
  `x_scale` float NOT NULL COMMENT 'x方向比例尺',
  `y_scale` float NOT NULL COMMENT 'y方向比例尺',
  `dx` float NOT NULL DEFAULT '0' COMMENT 'x方向修正值',
  `dy` float NOT NULL DEFAULT '0' COMMENT 'y方向修正值',
  `up_down` tinyint(4) NOT NULL DEFAULT '1' COMMENT '站场上下行方向调整',
  `stat_direct` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '站场南北方向设置',
  `ticon_angle` smallint(6) NOT NULL DEFAULT '0' COMMENT '机车图标角度',
  `railway_bureau_pinyin` varchar(50) NOT NULL COMMENT '所属铁路局名拼音',
  `railway_bureau_id` int(10) unsigned NOT NULL COMMENT '所属铁路局ID',
  `file_path` varchar(255) NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `info_train` (
  `train_id` int(10) unsigned NOT NULL,
  `train_type` varchar(50) NOT NULL,
  `train_number` int(10) unsigned NOT NULL,
  `railway_bureau_id` int(10) unsigned NOT NULL,
  `railway_bureau_name` varchar(50) NOT NULL,
  `railway_bureau_pinyin` varchar(50) NOT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `user_info` (
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `passwd` varchar(20) NOT NULL COMMENT '密码',
  `railway_bureau_name` varchar(50) NOT NULL COMMENT '机务段名',
  `user_right` tinyint(3) unsigned NOT NULL COMMENT '用户权限',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `other_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
