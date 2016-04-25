
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`) USING BTREE,
  KEY `auth_permission_37ef4eb4` (`content_type_id`) USING BTREE,
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_6340c63c` (`user_id`) USING BTREE,
  KEY `auth_user_groups_5f412f9a` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permissions_6340c63c` (`user_id`) USING BTREE,
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for db_info
-- ----------------------------
DROP TABLE IF EXISTS `db_info`;
CREATE TABLE `db_info` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `database_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '关联到q_odatabase_info的id',
  `single_name` varchar(128) NOT NULL DEFAULT '' COMMENT '数据库简称,备注名称',
  `db_url` varchar(50) NOT NULL DEFAULT '' COMMENT 'RDS链接地址',
  `dbip` varchar(20) NOT NULL COMMENT '连接数据库的ip,主库一般是vip,从库是服务器ip',
  `dbport` int(11) NOT NULL DEFAULT '3306' COMMENT '数据库端口',
  `db_user` varchar(40) NOT NULL DEFAULT 'superdba' COMMENT '连接数据库的管理帐号',
  `db_user_pwd` varchar(256) NOT NULL DEFAULT 'superdba_opt' COMMENT '管理帐号密码',
  `db_version` varchar(128) NOT NULL DEFAULT '' COMMENT '数据库版本信息 mysql ...',
  `db_role` varchar(40) NOT NULL DEFAULT 'primary' COMMENT '数据库主备角色 primary|standby',
  `mysql_parent_id` smallint(5) unsigned DEFAULT NULL COMMENT '当为从库时，数据库主库id',
  `db_scenario` varchar(8) NOT NULL DEFAULT 'dev' COMMENT '数据库服务场景【dev|pl|online',
  `status` varchar(10) DEFAULT 'online' COMMENT '数据库当前使用状态【offline|online】',
  `descs` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `project_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '哪个项目在使用该数据库',
  `gmt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_uk` (`single_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录数据库列表';

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`) USING BTREE,
  KEY `django_admin_log_37ef4eb4` (`content_type_id`) USING BTREE,
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for mysqlfab_detail
-- ----------------------------
DROP TABLE IF EXISTS `mysqlfab_detail`;
CREATE TABLE `mysqlfab_detail` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `master_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '需求发布主表mysqlcheck_master的id',
  `sql` text COMMENT 'SQL',
  `descs` varchar(900) NOT NULL DEFAULT '' COMMENT '描述',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `master_id` (`master_id`),
  CONSTRAINT `master_id` FOREIGN KEY (`master_id`) REFERENCES `mysqlfab_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='需求发布明细表';

-- ----------------------------
-- Table structure for mysqlfab_master
-- ----------------------------
DROP TABLE IF EXISTS `mysqlfab_master`;
CREATE TABLE `mysqlfab_master` (
  `id` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `db_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '关联到db_info的id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '发布者id',
  `username` varchar(40) NOT NULL DEFAULT '' COMMENT '发布者名称',
  `subject` varchar(100) NOT NULL DEFAULT '' COMMENT '主题',
  `self_project` enum('y','n') NOT NULL DEFAULT 'y' COMMENT '是否发布者所属的项目数据库',
  `project_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '哪个项目的需求: 项目id',
  `project` varchar(40) NOT NULL DEFAULT '' COMMENT '哪个项目的需求: 项目名称',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '推送状态',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='需求发布主表';

-- ----------------------------
-- Table structure for superdba_groupmenu
-- ----------------------------
DROP TABLE IF EXISTS `superdba_groupmenu`;
CREATE TABLE `superdba_groupmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menus_show` longtext NOT NULL,
  `menus_checked` longtext NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  CONSTRAINT `superdba_groupmenu_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superdba_menu
-- ----------------------------
DROP TABLE IF EXISTS `superdba_menu`;
CREATE TABLE `superdba_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `is_root` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否根菜单',
  `parent_id` int(11) NOT NULL COMMENT '父菜单id',
  `namespace` varchar(100) NOT NULL DEFAULT '',
  `viewname` varchar(100) NOT NULL DEFAULT '',
  `kwargs` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `url_name` varchar(100) NOT NULL DEFAULT '',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用：0不启用，1启用',
  `is_genweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否生成web；1：已生成， 0：未生成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superdba_permissionlist
-- ----------------------------
DROP TABLE IF EXISTS `superdba_permissionlist`;
CREATE TABLE `superdba_permissionlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superdba_rolelist
-- ----------------------------
DROP TABLE IF EXISTS `superdba_rolelist`;
CREATE TABLE `superdba_rolelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superdba_rolelist_permission
-- ----------------------------
DROP TABLE IF EXISTS `superdba_rolelist_permission`;
CREATE TABLE `superdba_rolelist_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolelist_id` int(11) NOT NULL,
  `permissionlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rolelist_id` (`rolelist_id`,`permissionlist_id`),
  KEY `superdb_permissionlist_id_240f9044_fk_superdba_permissionlist_id` (`permissionlist_id`) USING BTREE,
  CONSTRAINT `superdba_rolelist_permission_ibfk_1` FOREIGN KEY (`permissionlist_id`) REFERENCES `superdba_permissionlist` (`id`),
  CONSTRAINT `superdba_rolelist_permission_ibfk_2` FOREIGN KEY (`rolelist_id`) REFERENCES `superdba_rolelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superdba_user
-- ----------------------------
DROP TABLE IF EXISTS `superdba_user`;
CREATE TABLE `superdba_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `superdba_user_role_id_16721a93_fk_superdba_rolelist_id` (`role_id`) USING BTREE,
  CONSTRAINT `superdba_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `superdba_rolelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for superdba_usermenu
-- ----------------------------
DROP TABLE IF EXISTS `superdba_usermenu`;
CREATE TABLE `superdba_usermenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menus_show` longtext NOT NULL,
  `menus_checked` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `superdba_usermenu_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tools_gen_code
-- ----------------------------
DROP TABLE IF EXISTS `tools_gen_code`;
CREATE TABLE `tools_gen_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单keywords|关联superdba_menu表的keywords',
  `tables` varchar(800) NOT NULL DEFAULT '' COMMENT '相关的表|',
  `is_genweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否生成web；1：已生成， 0：未生成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='自动生成模块相关表';
