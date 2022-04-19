insert into bwc.info_railway_bureau values(1, '兰州', 'lanzhou', 0,0);
insert into bwc.info_train values(1, 'LTD1', '5031', 1, '兰州', 'lanzhou');

use bwc;
select * from info_station;
-- alter table bwc.info_station add column `file_path` varchar(255) NOT NULL;
INSERT INTO bwc.info_station (station_id,station_name,railway_bureau_name,map_version,GPS_version,xm_min,xm_max,ym_min,ym_max,angle,x_scale,y_scale,dx,dy,up_down,stat_direct,ticon_angle,railway_bureau_pinyin,railway_bureau_id,file_path) VALUES
 (13,'嘉峪关','兰州',10,10,434019.172,437220.428,4401356.832,4406546.32,0.0,0.3,0.3,0.0,0.0,-1,1,0,'lanzhou',16,''),
	 (14,'兰州','兰州',10,10,395142.108,398902.086,3989219.643,3990265.963,0.0,0.3,0.3,0.0,0.0,-1,1,0,'lanzhou',16,''),
	 (15,'中卫','兰州',10,10,515016.836,517589.767,4154218.884,4154626.415,0.0,0.3,0.3,0.0,0.0,1,0,0,'lanzhou',16,''),
	 (16,'迎水桥','兰州',10,10,505643.287,512300.126,4152368.208,4153704.944,0.0,0.3,0.3,0.0,0.0,1,0,0,'lanzhou',16,'/profile/upload/2021/10/20/7b4a8109-011c-4db7-94e3-54cd8fd2a7c5.map'),
	 (17,'银川','兰州',10,10,601697.28,602909.881,4261235.386,4267588.321,0.0,0.3,0.3,0.0,0.0,1,1,0,'lanzhou',16,'');
     
-- GRANT DROP ON bwc.* TO 'lanzhou_client'@'%';
-- FLUSH PRIVILEGES;

INSERT INTO bwc.data_lanzhou (`TIME`,header,`length`,signtype,EventType,StationID,PlineID,HeadType,TAXStat,GPSStat,tx,ty,longitude,latitude,direction,PointType,PointID,DistoP,TAXTIME,Speed,MaxSpeed,DriverNo,EngineNo,EngineType,train_direct,headPos_flg,headPos_headType,headPos_bRunHead,headPos_hx,headPos_hy,LocoState,LampStateValue,EngineTypeStr,TaxIsExit,State4G,LinePer,LineName,ProVersion,LampName,winver,acver,lampver,yuliu,sc) VALUES
	 ('2021-11-26 14:02:44',21947,126,2,3,-1,0,65,1,4,564324.6301,4146834.4149,105.727,37.4512,0,0,0,0.0,'2021-11-26 14:01:54',96,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',78),
	 ('2021-11-26 14:02:33',21947,126,2,3,-1,0,65,1,4,564623.8145,4146821.0625,105.7303,37.4511,0,0,0,0.0,'2021-11-26 14:01:42',102,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',22),
	 ('2021-11-26 14:01:44',21947,126,2,3,-1,0,65,1,4,566093.9254,4146606.0612,105.7469,37.449,0,0,0,0.0,'2021-11-26 14:00:54',113,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',136),
	 ('2021-11-26 14:01:33',21947,126,2,3,-1,0,65,1,4,566433.9457,4146553.2962,105.7508,37.4485,0,0,0,0.0,'2021-11-26 14:00:42',112,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',13),
	 ('2021-11-26 14:00:44',21947,126,2,3,-1,0,65,1,4,567945.5872,4146391.454,105.7678,37.447,0,0,0,0.0,'2021-11-26 13:59:54',111,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',157),
	 ('2021-11-26 14:00:33',21947,126,2,3,-1,0,65,1,4,568285.6979,4146412.8628,105.7717,37.4471,0,0,0,0.0,'2021-11-26 13:59:43',113,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',26),
	 ('2021-11-26 13:59:44',21947,126,2,3,-1,0,65,1,4,569794.4911,4146761.1269,105.7888,37.4501,0,0,0,0.0,'2021-11-26 13:58:54',113,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',111),
	 ('2021-11-26 13:59:33',21947,126,2,3,-1,0,65,1,4,570126.57,4146852.4081,105.7925,37.4509,0,0,0,0.0,'2021-11-26 13:58:43',112,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',110),
	 ('2021-11-26 13:58:44',21947,126,2,3,-1,0,65,1,4,571328.8795,4147181.444,105.8062,37.4538,0,0,0,0.0,'2021-11-26 13:57:54',64,125,6104304,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',58),
	 ('2021-11-26 13:58:33',21947,126,2,3,-1,0,65,1,4,571504.0006,4147229.0972,105.8081,37.4542,0,0,0,0.0,'2021-11-26 13:57:43',53,125,61476,29,255,0.0,0,0,0,0.0,0.0,0,0,'SS7C',0,1,0.0,'0',3,'0',3,3,10,'',107);
     
INSERT INTO bwc.info_train (train_id,train_type,train_number,railway_bureau_id,railway_bureau_name,railway_bureau_pinyin) VALUES
	 (160023,'SS7C',29,16,'兰州','lanzhou');


INSERT INTO bwc.info_station (station_id,station_name,railway_bureau_name,map_version,GPS_version,xm_min,xm_max,ym_min,ym_max,angle,x_scale,y_scale,dx,dy,up_down,stat_direct,ticon_angle,railway_bureau_pinyin,railway_bureau_id,file_path) VALUES
	 (7,'襄州北','武汉',10,10,604125.233,606732.18,3568286.922,3574639.884,0.0,0.3,0.3,0.0,0.0,1,1,0,'wuhan',7,'/profile/upload/2021/11/24/ee38f9e8-0df9-4370-8323-875fcec90cd4.map');
INSERT INTO bwc.info_train (train_id,train_type,train_number,railway_bureau_id,railway_bureau_name,railway_bureau_pinyin) VALUES
	 (70002,'HXD1',5031,7,'武汉','wuhan');
CREATE TABLE IF NOT EXISTS `data_wuhan` (
  `Number` int NOT NULL AUTO_INCREMENT,
  `TIME` timestamp NULL DEFAULT NULL,
  `header` smallint unsigned NOT NULL,
  `length` smallint unsigned NOT NULL,
  `signtype` smallint unsigned NOT NULL,
  `EventType` tinyint unsigned NOT NULL,
  `StationID` tinyint NOT NULL,
  `PlineID` tinyint unsigned NOT NULL,
  `HeadType` tinyint unsigned NOT NULL,
  `TAXStat` tinyint unsigned NOT NULL,
  `GPSStat` tinyint unsigned NOT NULL,
  `tx` double NOT NULL,
  `ty` double NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `direction` tinyint unsigned NOT NULL,
  `PointType` tinyint unsigned NOT NULL,
  `PointID` tinyint unsigned NOT NULL,
  `DistoP` float NOT NULL,
  `TAXTIME` datetime NOT NULL,
  `Speed` smallint unsigned NOT NULL,
  `MaxSpeed` smallint unsigned NOT NULL,
  `DriverNo` int unsigned NOT NULL,
  `EngineNo` int unsigned NOT NULL,
  `EngineType` tinyint unsigned NOT NULL,
  `train_direct` float NOT NULL,
  `headPos_flg` tinyint unsigned NOT NULL,
  `headPos_headType` tinyint unsigned NOT NULL,
  `headPos_bRunHead` tinyint unsigned NOT NULL,
  `headPos_hx` double NOT NULL,
  `headPos_hy` double NOT NULL,
  `LocoState` tinyint NOT NULL,
  `LampStateValue` tinyint NOT NULL,
  `EngineTypeStr` char(20) DEFAULT NULL,
  `TaxIsExit` tinyint unsigned NOT NULL,
  `State4G` tinyint unsigned NOT NULL,
  `LinePer` double NOT NULL,
  `LineName` char(20) DEFAULT NULL,
  `ProVersion` tinyint unsigned NOT NULL,
  `LampName` char(20) DEFAULT NULL,
  `winver` smallint unsigned NOT NULL,
  `acver` smallint unsigned NOT NULL,
  `lampver` smallint unsigned NOT NULL,
  `yuliu` char(32) DEFAULT NULL,
  `sc` tinyint unsigned NOT NULL,
  PRIMARY KEY (`Number`),
  KEY `index2` (`EngineTypeStr`,`EngineNo`,`TAXTIME`),
  KEY `index3` (`EngineTypeStr`,`EngineNo`,`TIME`)
) ENGINE=InnoDB AUTO_INCREMENT=2707615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO bwc.data_wuhan (`TIME`,header,`length`,signtype,EventType,StationID,PlineID,HeadType,TAXStat,GPSStat,tx,ty,longitude,latitude,direction,PointType,PointID,DistoP,TAXTIME,Speed,MaxSpeed,DriverNo,EngineNo,EngineType,train_direct,headPos_flg,headPos_headType,headPos_bRunHead,headPos_hx,headPos_hy,LocoState,LampStateValue,EngineTypeStr,TaxIsExit,State4G,LinePer,LineName,ProVersion,LampName,winver,acver,lampver,yuliu,sc) VALUES
	 ('2021-11-26 14:11:44',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:25',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',135),
	 ('2021-11-26 14:11:42',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:23',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',133),
	 ('2021-11-26 14:11:40',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:21',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',131),
	 ('2021-11-26 14:11:38',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:19',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',129),
	 ('2021-11-26 14:11:36',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:17',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',127),
	 ('2021-11-26 14:11:34',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:15',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',125),
	 ('2021-11-26 14:11:32',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:13',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',123),
	 ('2021-11-26 14:11:30',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:11',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',121),
	 ('2021-11-26 14:11:28',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:09',0,16,46446,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',119),
	 ('2021-11-26 14:11:26',21947,206,1,0,7,3,66,1,5,605123.2121,3574328.079,112.116,32.2879,2,1,23,130.176,'2021-11-26 14:11:07',0,16,3501749,5031,255,0.0,0,0,0,0.0,0.0,-1,2,'HXD1',1,1,0.29136894,'18-31A',3,'X10',1,0,10,'',170);

INSERT INTO bwc.info_railway_bureau (railway_bureau_id, railway_bureau_name,railway_bureau_pinyin,train_count,station_count) VALUES
	 ('7', '武汉','wuhan',1,1);
