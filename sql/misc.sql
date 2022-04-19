use bwc;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('7', 'info_railway_bureau', '铁路局管理', '', '', 'InfoRailwayBureau', 'crud', 'com.ruoyi.railway', 'railway', 'railway', '铁路局管理', 'tyj', '0', '/', '{}', 'admin', '2021-07-28 11:47:40', '', '2021-08-29 21:48:00', '铁路局管理');
INSERT INTO `gen_table` VALUES ('8', 'info_station', '车站管理', '', '', 'InfoStation', 'crud', 'com.ruoyi.railway', 'railway', 'station', '车站', 'tyj', '0', '/', '{\"parentMenuId\":\"2006\"}', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59', '车站管理');
INSERT INTO `gen_table` VALUES ('9', 'info_train', '机车管理', null, null, 'InfoTrain', 'crud', 'com.ruoyi.railway', 'railway', 'train', '机车', 'tyj', '0', '/', '{\"parentMenuId\":2006}', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46', '机车管理');
INSERT INTO `gen_table` VALUES ('10', 'user_info', '', null, null, 'UserInfo', 'crud', 'com.ruoyi.system', 'system', 'info', null, 'F', '0', '/', null, 'admin', '2021-07-28 11:47:46', '', null, null);
INSERT INTO `gen_table` VALUES ('11', 'info_train_run', '机车实时数据', null, null, 'TrainRun', 'crud', 'com.ruoyi.railway', 'railway', 'run', '机车实时数据', 'tyj', '0', '/', '{\"parentMenuId\":2006}', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:02', '机车实时数据');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('127', '7', 'railway_bureau_id', null, 'int unsigned', 'Long', 'railwayBureauId', '1', '0', null, '1', null, null, null, 'EQ', null, '', '1', 'admin', '2021-07-28 11:47:40', '', '2021-08-29 21:48:00');
INSERT INTO `gen_table_column` VALUES ('128', '7', 'railway_bureau_name', '名称', 'varchar(50)', 'String', 'railwayBureauName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-07-28 11:47:40', '', '2021-08-29 21:48:00');
INSERT INTO `gen_table_column` VALUES ('129', '7', 'railway_bureau_pinyin', '拼音', 'varchar(50)', 'String', 'railwayBureauPinyin', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-07-28 11:47:40', '', '2021-08-29 21:48:00');
INSERT INTO `gen_table_column` VALUES ('130', '7', 'train_count', '机车数量', 'int unsigned', 'Integer', 'trainCount', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '4', 'admin', '2021-07-28 11:47:40', '', '2021-08-29 21:48:00');
INSERT INTO `gen_table_column` VALUES ('131', '7', 'station_count', '场站数量', 'int unsigned', 'Integer', 'stationCount', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '5', 'admin', '2021-07-28 11:47:40', '', '2021-08-29 21:48:00');
INSERT INTO `gen_table_column` VALUES ('132', '8', 'station_id', '主键', 'int unsigned', 'Long', 'stationId', '1', '0', null, '1', null, null, null, 'EQ', null, '', '1', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('133', '8', 'station_name', '站场名', 'varchar(50)', 'String', 'stationName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('134', '8', 'railway_bureau_name', '铁路局', 'tinytext', 'String', 'railwayBureauName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'textarea', '', '3', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('135', '8', 'map_version', '站场地图版本', 'tinyint unsigned', 'Integer', 'mapVersion', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '4', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('136', '8', 'GPS_version', '站场地图版本', 'tinyint unsigned', 'Integer', 'gpsVersion', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '5', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('137', '8', 'xm_min', 'x方向最小坐标', 'double', 'Double', 'xmMin', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('138', '8', 'xm_max', 'x方向最大坐标', 'double', 'Double', 'xmMax', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('139', '8', 'ym_min', 'y方向最小坐标', 'double', 'Double', 'ymMin', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('140', '8', 'ym_max', 'y方向最大坐标', 'double', 'Double', 'ymMax', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '9', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('141', '8', 'angle', '角度', 'float', 'Double', 'angle', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '10', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('142', '8', 'x_scale', 'x方向比例尺', 'float', 'Double', 'xScale', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '11', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('143', '8', 'y_scale', 'y方向比例尺', 'float', 'Double', 'yScale', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '12', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('144', '8', 'dx', 'x方向修正值', 'float', 'Double', 'dx', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('145', '8', 'dy', 'y方向修正值', 'float', 'Double', 'dy', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '14', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('146', '8', 'up_down', '站场上下行方向调整', 'tinyint', 'Long', 'upDown', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', 'station_top_bottom_type', '15', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('147', '8', 'stat_direct', '站场南北方向设置', 'tinyint unsigned', 'Integer', 'statDirect', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', 'station_direction_type', '16', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('148', '8', 'ticon_angle', '机车图标角度', 'smallint', 'Integer', 'ticonAngle', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '17', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('149', '8', 'railway_bureau_pinyin', '所属铁路局名拼音', 'varchar(50)', 'String', 'railwayBureauPinyin', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', '', '18', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('150', '8', 'railway_bureau_id', '所属铁路局ID', 'int unsigned', 'Long', 'railwayBureauId', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '19', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('151', '9', 'train_id', '序号', 'int unsigned', 'Long', 'trainId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46');
INSERT INTO `gen_table_column` VALUES ('152', '9', 'train_type', '机车型号', 'varchar(50)', 'String', 'trainType', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46');
INSERT INTO `gen_table_column` VALUES ('153', '9', 'train_number', '机车号', 'int unsigned', 'Integer', 'trainNumber', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46');
INSERT INTO `gen_table_column` VALUES ('154', '9', 'railway_bureau_id', '铁路局ID', 'int unsigned', 'Long', 'railwayBureauId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '4', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46');
INSERT INTO `gen_table_column` VALUES ('155', '9', 'railway_bureau_name', '铁路局', 'varchar(50)', 'String', 'railwayBureauName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '5', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46');
INSERT INTO `gen_table_column` VALUES ('156', '9', 'railway_bureau_pinyin', '铁路局拼音', 'varchar(50)', 'String', 'railwayBureauPinyin', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '6', 'admin', '2021-07-28 11:47:40', '', '2021-08-28 12:38:46');
INSERT INTO `gen_table_column` VALUES ('157', '10', 'username', '用户名', 'varchar(20)', 'String', 'username', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '1', 'admin', '2021-07-28 11:47:46', '', null);
INSERT INTO `gen_table_column` VALUES ('158', '10', 'passwd', '密码', 'varchar(20)', 'String', 'passwd', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2021-07-28 11:47:46', '', null);
INSERT INTO `gen_table_column` VALUES ('159', '10', 'railway_bureau_name', '机务段名', 'varchar(50)', 'String', 'railwayBureauName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2021-07-28 11:47:46', '', null);
INSERT INTO `gen_table_column` VALUES ('160', '10', 'user_right', '用户权限', 'tinyint unsigned', 'String', 'userRight', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '4', 'admin', '2021-07-28 11:47:46', '', null);
INSERT INTO `gen_table_column` VALUES ('161', '10', 'id', null, 'int unsigned', 'String', 'id', '1', '1', null, '1', null, null, null, 'EQ', null, '', '5', 'admin', '2021-07-28 11:47:46', '', null);
INSERT INTO `gen_table_column` VALUES ('162', '10', 'other_info', null, 'varchar(255)', 'String', 'otherInfo', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2021-07-28 11:47:46', '', null);
INSERT INTO `gen_table_column` VALUES ('163', '8', 'file_path', 'map文件路径', 'varchar(255)', 'String', 'filePath', '0', '0', null, '1', '1', null, null, 'EQ', 'fileUpload', '', '20', '', '2021-08-28 14:40:13', '', '2021-08-28 14:50:59');
INSERT INTO `gen_table_column` VALUES ('164', '11', 'Number', '火车包数量,一般为一个场站的所有火车', 'int', 'Long', 'number', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('165', '11', 'TIME', '入库时间  ', 'timestamp', 'Date', 'time', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '2', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('166', '11', 'header', '头信息', 'smallint unsigned', 'Integer', 'header', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '3', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('167', '11', 'length', '报文长度', 'smallint unsigned', 'Integer', 'length', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '4', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('168', '11', 'signtype', '信息类别编码', 'smallint unsigned', 'String', 'signtype', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', '', '5', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('169', '11', 'EventType', '进入或离开场站  1--进入  2--离开 3--场外', 'tinyint unsigned', 'Integer', 'eventtype', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', '', '6', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('170', '11', 'StationID', '站场ID', 'tinyint', 'Long', 'stationid', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '7', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('171', '11', 'PlineID', 'line ID', 'tinyint unsigned', 'Integer', 'plineid', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '8', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('172', '11', 'HeadType', 'A节或B节  A  or B', 'tinyint unsigned', 'Integer', 'headtype', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', '', '9', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('173', '11', 'TAXStat', 'TAX状态', 'tinyint unsigned', 'Integer', 'taxstat', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '10', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('174', '11', 'GPSStat', 'GPS状态', 'tinyint unsigned', 'Integer', 'gpsstat', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '11', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('175', '11', 'tx', '当前火车WGS84坐标', 'double', 'Double', 'tx', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '12', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('176', '11', 'ty', '当前火车WGS84坐标', 'double', 'Double', 'ty', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '13', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('177', '11', 'longitude', '当前火车经度', 'double', 'Double', 'longitude', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '14', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('178', '11', 'latitude', '当前火车纬度', 'double', 'Double', 'latitude', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '15', 'admin', '2021-08-28 17:11:24', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('179', '11', 'direction', '方向，0静止，1上行，2下行', 'tinyint unsigned', 'Integer', 'direction', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', 'station_top_bottom_type', '16', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('180', '11', 'PointType', '前方防撞点类型 ，0 没有  1--信号灯  2--土挡 3--接触网终点  4--脱轨器', 'tinyint unsigned', 'Integer', 'pointtype', '0', '0', '1', '1', '1', '1', null, 'EQ', 'select', '', '17', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('181', '11', 'PointID', '防撞点全局索引', 'tinyint unsigned', 'Integer', 'pointid', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '18', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('182', '11', 'DistoP', '距离当前防撞点距离', 'float', 'Double', 'distop', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '19', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('183', '11', 'TAXTIME', '机车上的设备时间', 'datetime', 'Date', 'taxtime', '0', '0', '1', '1', '1', '1', null, 'EQ', 'datetime', '', '20', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('184', '11', 'Speed', '机车速度', 'smallint unsigned', 'Integer', 'speed', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '21', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('185', '11', 'MaxSpeed', '机车限速', 'smallint unsigned', 'Integer', 'maxspeed', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '22', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('186', '11', 'DriverNo', '司机号', 'int unsigned', 'Integer', 'driverno', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '23', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('187', '11', 'EngineNo', '机车号  EngineNo和EngineTypeStr  两个字段拼起来就是机车号', 'int unsigned', 'Integer', 'engineno', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '24', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('188', '11', 'EngineTypeStr', '机车型号  EngineNo和EngineTypeStr  两个字段拼起来就是机车号', 'char(20)', 'String', 'enginetypestr', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '25', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:03');
INSERT INTO `gen_table_column` VALUES ('189', '11', 'EngineType', '机车型号', 'tinyint unsigned', 'Integer', 'enginetype', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '26', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('190', '11', 'train_direct', '火车方向角度', 'float', 'Double', 'trainDirect', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '27', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('191', '11', 'headPos_flg', '头部位置', 'tinyint unsigned', 'Integer', 'headposFlg', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '28', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('192', '11', 'headPos_headType', '头部位置型号', 'tinyint unsigned', 'Integer', 'headposHeadtype', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '29', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('193', '11', 'headPos_bRunHead', null, 'tinyint unsigned', 'Integer', 'headposBrunhead', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '30', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('194', '11', 'headPos_hx', null, 'double', 'Double', 'headposHx', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '31', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('195', '11', 'headPos_hy', null, 'double', 'Double', 'headposHy', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '32', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('196', '11', 'LocoState', null, 'tinyint', 'Integer', 'locostate', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '33', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('197', '11', 'LampStateValue', '信号灯状态', 'tinyint', 'Integer', 'lampstatevalue', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '34', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('198', '11', 'TaxIsExit', 'TAX是否存在', 'tinyint unsigned', 'Integer', 'taxisexit', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '35', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('199', '11', 'State4G', '4G状态', 'tinyint unsigned', 'Integer', 'state4g', '0', '0', '1', '1', '1', '1', '1', 'EQ', null, '', '36', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('200', '11', 'LinePer', '火车在当前线路的百分比', 'double', 'Double', 'lineper', '0', '0', '1', '1', '1', '1', null, 'EQ', 'input', '', '37', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('201', '11', 'LineName', '当前线路名字', 'char(20)', 'String', 'linename', '0', '0', null, '1', '1', '1', null, 'LIKE', 'input', '', '38', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('202', '11', 'ProVersion', '协议版本 ,起始为3，之后累加', 'tinyint unsigned', 'Integer', 'proversion', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '39', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('203', '11', 'LampName', '灯名字', 'char(20)', 'String', 'lampname', '0', '0', null, '1', '1', '1', null, 'LIKE', 'input', '', '40', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('204', '11', 'winver', '显示屏软件版本', 'smallint unsigned', 'Integer', 'winver', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '41', 'admin', '2021-08-28 17:11:25', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('205', '11', 'acver', 'rk3399或tx2主机版本', 'smallint unsigned', 'Integer', 'acver', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '42', 'admin', '2021-08-28 17:11:26', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('207', '11', 'lampver', '信号灯识别软件版本', 'smallint unsigned', 'Integer', 'lampver', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '43', 'admin', '2021-08-28 17:11:26', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('209', '11', 'yuliu', '预留', 'char(32)', 'String', 'yuliu', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '44', 'admin', '2021-08-28 17:11:26', '', '2021-08-28 17:19:04');
INSERT INTO `gen_table_column` VALUES ('211', '11', 'sc', '校验和', 'tinyint unsigned', 'Integer', 'sc', '0', '0', '1', '1', '1', '1', null, 'EQ', null, '', '45', 'admin', '2021-08-28 17:11:26', '', '2021-08-28 17:19:04');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-07-28 10:56:29', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-07-28 10:56:29', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-07-28 10:56:29', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-07-28 10:56:29', '', null, '是否开启登录验证码功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '总部', '0', '负责人', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-07-28 10:56:04', 'admin', '2021-09-16 15:48:10');
INSERT INTO `sys_dept` VALUES ('202', '201', '0,100,200,201', '技术科', '1', null, null, null, '0', '0', 'admin', '2021-09-07 09:44:36', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-07-28 10:56:27', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-07-28 10:56:27', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '南', '1', 'station_direction_type', null, 'default', 'N', '0', 'admin', '2021-08-28 12:15:44', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('101', '0', '北', '0', 'station_direction_type', null, 'default', 'N', '0', 'admin', '2021-08-28 12:15:58', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('102', '0', '上行', '1', 'station_top_bottom_type', null, 'default', 'N', '0', 'admin', '2021-08-28 12:16:15', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('103', '0', '静止', '0', 'station_top_bottom_type', null, 'default', 'N', '0', 'admin', '2021-08-28 12:16:21', 'admin', '2021-08-28 17:16:52', null);
INSERT INTO `sys_dict_data` VALUES ('104', '0', '下行', '2', 'station_top_bottom_type', null, 'default', 'N', '0', 'admin', '2021-08-28 17:17:00', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2021-07-28 10:56:25', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2021-07-28 10:56:25', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2021-07-28 10:56:25', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2021-07-28 10:56:25', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2021-07-28 10:56:25', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2021-07-28 10:56:25', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2021-07-28 10:56:25', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2021-07-28 10:56:25', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2021-07-28 10:56:25', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2021-07-28 10:56:25', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '站场南北方向', 'station_direction_type', '0', 'admin', '2021-08-28 12:14:07', '', null, null);
INSERT INTO `sys_dict_type` VALUES ('101', '站场上下行方向', 'station_top_bottom_type', '0', 'admin', '2021-08-28 12:14:24', '', null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-07-28 10:56:32', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-07-28 10:56:32', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-07-28 10:56:32', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=utf8mb4 COMMENT='系统访问记录';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2031 DEFAULT CHARSET=utf8mb4 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '5', 'system', null, '1', '0', 'M', '0', '0', '', 'system', 'admin', '2021-07-28 10:56:13', 'admin', '2021-09-15 10:15:34', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '4', 'monitor', null, '1', '0', 'M', '0', '0', '', 'chart', 'admin', '2021-07-28 10:56:13', 'admin', '2021-09-16 13:19:09', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '1', '0', 'M', '1', '0', '', 'tool', 'admin', '2021-07-28 10:56:13', 'admin', '2021-09-02 19:31:41', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '临时实时', '0', '4', 'railway/temprun', 'railway/temprun/index', '1', '0', 'C', '1', '1', 'railway:temprun:list', 'guide', 'admin', '2021-07-28 10:56:13', 'admin', '2021-09-07 19:54:43', '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-07-28 10:56:13', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-07-28 10:56:13', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-07-28 10:56:13', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-07-28 10:56:13', 'admin', '2021-09-02 19:43:56', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '1', '0', 'C', '1', '0', 'system:post:list', 'post', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 16:15:19', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '1', '0', 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 16:16:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '1', '0', 'C', '1', '0', 'system:config:list', 'edit', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 16:16:17', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '1', '0', 'C', '1', '0', 'system:notice:list', 'message', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 16:16:27', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2021-07-28 10:56:13', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-07-28 10:56:13', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '1', '0', 'C', '1', '1', 'monitor:job:list', 'job', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 18:14:59', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '1', '0', 'C', '1', '1', 'monitor:druid:list', 'druid', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 18:15:31', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '1', '0', 'C', '1', '1', 'monitor:server:list', 'server', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 18:15:51', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '1', '0', 'C', '1', '1', 'monitor:cache:list', 'redis', 'admin', '2021-07-28 10:56:13', 'admin', '2021-08-31 18:16:03', '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', 'build', 'tool/build/index', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-07-28 10:56:13', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', 'gen', 'tool/gen/index', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-07-28 10:56:13', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-07-28 10:56:13', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-07-28 10:56:13', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-07-28 10:56:13', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1001', '用户查询', '100', '1', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户新增', '100', '2', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户修改', '100', '3', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户删除', '100', '4', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导出', '100', '5', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '用户导入', '100', '6', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '重置密码', '100', '7', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色查询', '101', '1', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色新增', '101', '2', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色修改', '101', '3', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色删除', '101', '4', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '角色导出', '101', '5', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单查询', '102', '1', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单新增', '102', '2', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单修改', '102', '3', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '菜单删除', '102', '4', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门查询', '103', '1', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门新增', '103', '2', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门修改', '103', '3', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '部门删除', '103', '4', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位查询', '104', '1', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位新增', '104', '2', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位修改', '104', '3', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位删除', '104', '4', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '岗位导出', '104', '5', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典查询', '105', '1', '#', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典新增', '105', '2', '#', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典修改', '105', '3', '#', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典删除', '105', '4', '#', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '字典导出', '105', '5', '#', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数查询', '106', '1', '#', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数新增', '106', '2', '#', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数修改', '106', '3', '#', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数删除', '106', '4', '#', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '参数导出', '106', '5', '#', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告查询', '107', '1', '#', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告新增', '107', '2', '#', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告修改', '107', '3', '#', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '公告删除', '107', '4', '#', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作查询', '500', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '操作删除', '500', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '115', '1', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '115', '2', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '115', '3', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '115', '2', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '115', '4', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '115', '5', '#', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-07-28 10:56:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '路局管理', '2006', '1', 'railway', 'railway/railway/index', '1', '0', 'C', '0', '0', 'railway:railway:list', '#', 'admin', '2021-08-27 23:25:20', 'admin', '2021-09-15 11:07:32', '铁路局管理菜单');
INSERT INTO `sys_menu` VALUES ('2001', '铁路局管理查询', '2000', '1', '#', '', '1', '0', 'F', '0', '0', 'railway:railway:query', '#', 'admin', '2021-08-27 23:25:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2002', '铁路局管理新增', '2000', '2', '#', '', '1', '0', 'F', '0', '0', 'railway:railway:add', '#', 'admin', '2021-08-27 23:25:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2003', '铁路局管理修改', '2000', '3', '#', '', '1', '0', 'F', '0', '0', 'railway:railway:edit', '#', 'admin', '2021-08-27 23:25:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '铁路局管理删除', '2000', '4', '#', '', '1', '0', 'F', '0', '0', 'railway:railway:remove', '#', 'admin', '2021-08-27 23:25:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '铁路局管理导出', '2000', '5', '#', '', '1', '0', 'F', '0', '0', 'railway:railway:export', '#', 'admin', '2021-08-27 23:25:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '信息管理', '0', '3', 'railway', null, '1', '0', 'M', '0', '0', '', 'button', 'admin', '2021-08-28 10:17:45', 'admin', '2021-09-15 10:11:27', '');
INSERT INTO `sys_menu` VALUES ('2007', '场站管理', '2006', '1', 'station', 'railway/station/index', '1', '0', 'C', '0', '0', 'railway:station:list', '#', 'admin', '2021-08-28 11:05:14', 'admin', '2021-09-15 10:43:18', '车站菜单');
INSERT INTO `sys_menu` VALUES ('2008', '车站查询', '2007', '1', '#', '', '1', '0', 'F', '0', '0', 'railway:station:query', '#', 'admin', '2021-08-28 11:05:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2009', '车站新增', '2007', '2', '#', '', '1', '0', 'F', '0', '0', 'railway:station:add', '#', 'admin', '2021-08-28 11:05:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '车站修改', '2007', '3', '#', '', '1', '0', 'F', '0', '0', 'railway:station:edit', '#', 'admin', '2021-08-28 11:05:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '车站删除', '2007', '4', '#', '', '1', '0', 'F', '0', '0', 'railway:station:remove', '#', 'admin', '2021-08-28 11:05:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2012', '车站导出', '2007', '5', '#', '', '1', '0', 'F', '0', '0', 'railway:station:export', '#', 'admin', '2021-08-28 11:05:14', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '机车管理', '2006', '1', 'train', 'railway/train/index', '1', '0', 'C', '0', '0', 'railway:train:list', '#', 'admin', '2021-08-28 12:40:06', '', null, '机车菜单');
INSERT INTO `sys_menu` VALUES ('2014', '机车查询', '2013', '1', '#', '', '1', '0', 'F', '0', '0', 'railway:train:query', '#', 'admin', '2021-08-28 12:40:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2015', '机车新增', '2013', '2', '#', '', '1', '0', 'F', '0', '0', 'railway:train:add', '#', 'admin', '2021-08-28 12:40:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2016', '机车修改', '2013', '3', '#', '', '1', '0', 'F', '0', '0', 'railway:train:edit', '#', 'admin', '2021-08-28 12:40:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2017', '机车删除', '2013', '4', '#', '', '1', '0', 'F', '0', '0', 'railway:train:remove', '#', 'admin', '2021-08-28 12:40:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2018', '机车导出', '2013', '5', '#', '', '1', '0', 'F', '0', '0', 'railway:train:export', '#', 'admin', '2021-08-28 12:40:06', '', null, '');
INSERT INTO `sys_menu` VALUES ('2019', '机车实时数据', '2006', '1', 'run', 'railway/run/index', '1', '0', 'C', '1', '0', 'railway:run:list', '#', 'admin', '2021-08-28 17:20:40', 'admin', '2021-09-14 23:51:56', '机车实时数据菜单');
INSERT INTO `sys_menu` VALUES ('2020', '机车实时数据查询', '2019', '1', '#', '', '1', '0', 'F', '0', '0', 'railway:run:query', '#', 'admin', '2021-08-28 17:20:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '机车实时数据新增', '2019', '2', '#', '', '1', '0', 'F', '0', '0', 'railway:run:add', '#', 'admin', '2021-08-28 17:20:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '机车实时数据修改', '2019', '3', '#', '', '1', '0', 'F', '0', '0', 'railway:run:edit', '#', 'admin', '2021-08-28 17:20:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '机车实时数据删除', '2019', '4', '#', '', '1', '0', 'F', '0', '0', 'railway:run:remove', '#', 'admin', '2021-08-28 17:20:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '机车实时数据导出', '2019', '5', '#', '', '1', '0', 'F', '0', '0', 'railway:run:export', '#', 'admin', '2021-08-28 17:20:40', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '运行轨迹', '2030', '1', 'history', 'railway/history/index', '1', '0', 'C', '0', '0', 'railway:history:list', '#', 'admin', '2021-08-31 15:59:12', 'admin', '2021-09-15 10:16:43', '');
INSERT INTO `sys_menu` VALUES ('2027', '机车位置', '0', '0', 'trainview', 'railway/trainview/index', '1', '0', 'C', '0', '1', 'railway:trainview:list', 'guide', 'admin', '2021-09-07 19:59:22', 'admin', '2021-09-16 13:16:41', '');
INSERT INTO `sys_menu` VALUES ('2028', '调车监控', '0', '1', 'stationway', 'railway/stationway/index', '1', '0', 'C', '0', '0', 'railway:stationway:list', 'monitor', 'admin', '2021-09-12 02:52:30', 'admin', '2021-09-16 13:20:22', '');
INSERT INTO `sys_menu` VALUES ('2029', '调车记录', '2030', '1', 'stationhistroy', 'railway/stationhistroy/index', '1', '0', 'C', '0', '0', 'railway:stationhistroy:list', '#', 'admin', '2021-09-12 23:41:32', 'admin', '2021-09-15 10:16:56', '');
INSERT INTO `sys_menu` VALUES ('2030', '历史数据', '0', '2', 'history', null, '1', '0', 'M', '0', '0', null, 'time-range', 'admin', '2021-09-15 10:14:13', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='通知公告表';

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COMMENT='操作日志记录';


-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2021-07-28 10:56:09', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2021-07-28 10:56:09', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2021-07-28 10:56:09', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2021-07-28 10:56:09', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2021-07-28 10:56:11', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', '0', '0', 'admin', '2021-07-28 10:56:11', 'admin', '2021-09-13 11:33:33', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '102');
INSERT INTO `sys_role_dept` VALUES ('2', '105');
INSERT INTO `sys_role_dept` VALUES ('2', '108');
INSERT INTO `sys_role_dept` VALUES ('2', '109');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `railway_id` bigint DEFAULT NULL COMMENT '铁路局ID',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', null, 'admin', '超管', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-09-18 00:04:12', 'admin', '2021-07-28 10:56:07', '', '2021-09-18 00:04:11', '管理员', null);
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2021-07-28 10:56:07', 'admin', '2021-07-28 10:56:07', 'admin', '2021-08-28 16:39:02', '测试员', '2');
-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------

CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('100', '1');
INSERT INTO `sys_user_post` VALUES ('102', '4');
INSERT INTO `sys_user_post` VALUES ('103', '4');
INSERT INTO `sys_user_post` VALUES ('104', '4');
INSERT INTO `sys_user_post` VALUES ('105', '4');
INSERT INTO `sys_user_post` VALUES ('107', '4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------

CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('100', '2');
INSERT INTO `sys_user_role` VALUES ('102', '2');
INSERT INTO `sys_user_role` VALUES ('103', '2');
INSERT INTO `sys_user_role` VALUES ('105', '2');
INSERT INTO `sys_user_role` VALUES ('107', '2');
