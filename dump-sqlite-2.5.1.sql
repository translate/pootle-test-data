PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
CREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
);
INSERT INTO "auth_permission" VALUES(1,'Can add session',1,'add_session');
INSERT INTO "auth_permission" VALUES(2,'Can change session',1,'change_session');
INSERT INTO "auth_permission" VALUES(3,'Can delete session',1,'delete_session');
INSERT INTO "auth_permission" VALUES(4,'Can add permission',2,'add_permission');
INSERT INTO "auth_permission" VALUES(5,'Can change permission',2,'change_permission');
INSERT INTO "auth_permission" VALUES(6,'Can delete permission',2,'delete_permission');
INSERT INTO "auth_permission" VALUES(7,'Can add group',3,'add_group');
INSERT INTO "auth_permission" VALUES(8,'Can change group',3,'change_group');
INSERT INTO "auth_permission" VALUES(9,'Can delete group',3,'delete_group');
INSERT INTO "auth_permission" VALUES(10,'Can add user',4,'add_user');
INSERT INTO "auth_permission" VALUES(11,'Can change user',4,'change_user');
INSERT INTO "auth_permission" VALUES(12,'Can delete user',4,'delete_user');
INSERT INTO "auth_permission" VALUES(13,'Can add content type',5,'add_contenttype');
INSERT INTO "auth_permission" VALUES(14,'Can change content type',5,'change_contenttype');
INSERT INTO "auth_permission" VALUES(15,'Can delete content type',5,'delete_contenttype');
INSERT INTO "auth_permission" VALUES(16,'Can add site',6,'add_site');
INSERT INTO "auth_permission" VALUES(17,'Can change site',6,'change_site');
INSERT INTO "auth_permission" VALUES(18,'Can delete site',6,'delete_site');
INSERT INTO "auth_permission" VALUES(19,'Can add log entry',7,'add_logentry');
INSERT INTO "auth_permission" VALUES(20,'Can change log entry',7,'change_logentry');
INSERT INTO "auth_permission" VALUES(21,'Can delete log entry',7,'delete_logentry');
INSERT INTO "auth_permission" VALUES(22,'Can add registration profile',8,'add_registrationprofile');
INSERT INTO "auth_permission" VALUES(23,'Can change registration profile',8,'change_registrationprofile');
INSERT INTO "auth_permission" VALUES(24,'Can delete registration profile',8,'delete_registrationprofile');
INSERT INTO "auth_permission" VALUES(25,'Can add site configuration',9,'add_siteconfiguration');
INSERT INTO "auth_permission" VALUES(26,'Can change site configuration',9,'change_siteconfiguration');
INSERT INTO "auth_permission" VALUES(27,'Can delete site configuration',9,'delete_siteconfiguration');
INSERT INTO "auth_permission" VALUES(28,'Can add vote',10,'add_vote');
INSERT INTO "auth_permission" VALUES(29,'Can change vote',10,'change_vote');
INSERT INTO "auth_permission" VALUES(30,'Can delete vote',10,'delete_vote');
INSERT INTO "auth_permission" VALUES(31,'Can add migration history',11,'add_migrationhistory');
INSERT INTO "auth_permission" VALUES(32,'Can change migration history',11,'change_migrationhistory');
INSERT INTO "auth_permission" VALUES(33,'Can delete migration history',11,'delete_migrationhistory');
INSERT INTO "auth_permission" VALUES(34,'Can add suggestion',12,'add_suggestion');
INSERT INTO "auth_permission" VALUES(35,'Can change suggestion',12,'change_suggestion');
INSERT INTO "auth_permission" VALUES(36,'Can delete suggestion',12,'delete_suggestion');
INSERT INTO "auth_permission" VALUES(37,'Can add directory',13,'add_directory');
INSERT INTO "auth_permission" VALUES(38,'Can change directory',13,'change_directory');
INSERT INTO "auth_permission" VALUES(39,'Can delete directory',13,'delete_directory');
INSERT INTO "auth_permission" VALUES(40,'Can add permission set',14,'add_permissionset');
INSERT INTO "auth_permission" VALUES(41,'Can change permission set',14,'change_permissionset');
INSERT INTO "auth_permission" VALUES(42,'Can delete permission set',14,'delete_permissionset');
INSERT INTO "auth_permission" VALUES(43,'Can add quality check',15,'add_qualitycheck');
INSERT INTO "auth_permission" VALUES(44,'Can change quality check',15,'change_qualitycheck');
INSERT INTO "auth_permission" VALUES(45,'Can delete quality check',15,'delete_qualitycheck');
INSERT INTO "auth_permission" VALUES(46,'Can add suggestion',16,'add_suggestion');
INSERT INTO "auth_permission" VALUES(47,'Can change suggestion',16,'change_suggestion');
INSERT INTO "auth_permission" VALUES(48,'Can delete suggestion',16,'delete_suggestion');
INSERT INTO "auth_permission" VALUES(49,'Can add unit',17,'add_unit');
INSERT INTO "auth_permission" VALUES(50,'Can change unit',17,'change_unit');
INSERT INTO "auth_permission" VALUES(51,'Can delete unit',17,'delete_unit');
INSERT INTO "auth_permission" VALUES(52,'Can add store',18,'add_store');
INSERT INTO "auth_permission" VALUES(53,'Can change store',18,'change_store');
INSERT INTO "auth_permission" VALUES(54,'Can delete store',18,'delete_store');
INSERT INTO "auth_permission" VALUES(55,'Can add language',19,'add_language');
INSERT INTO "auth_permission" VALUES(56,'Can change language',19,'change_language');
INSERT INTO "auth_permission" VALUES(57,'Can delete language',19,'delete_language');
INSERT INTO "auth_permission" VALUES(58,'Can add project',20,'add_project');
INSERT INTO "auth_permission" VALUES(59,'Can change project',20,'change_project');
INSERT INTO "auth_permission" VALUES(60,'Can delete project',20,'delete_project');
INSERT INTO "auth_permission" VALUES(61,'Can add translation project',21,'add_translationproject');
INSERT INTO "auth_permission" VALUES(62,'Can change translation project',21,'change_translationproject');
INSERT INTO "auth_permission" VALUES(63,'Can delete translation project',21,'delete_translationproject');
INSERT INTO "auth_permission" VALUES(64,'Can add pootle profile',22,'add_pootleprofile');
INSERT INTO "auth_permission" VALUES(65,'Can change pootle profile',22,'change_pootleprofile');
INSERT INTO "auth_permission" VALUES(66,'Can delete pootle profile',22,'delete_pootleprofile');
INSERT INTO "auth_permission" VALUES(67,'Can add submission',23,'add_submission');
INSERT INTO "auth_permission" VALUES(68,'Can change submission',23,'change_submission');
INSERT INTO "auth_permission" VALUES(69,'Can delete submission',23,'delete_submission');
INSERT INTO "auth_permission" VALUES(70,'Can add goal',24,'add_goal');
INSERT INTO "auth_permission" VALUES(71,'Can change goal',24,'change_goal');
INSERT INTO "auth_permission" VALUES(72,'Can delete goal',24,'delete_goal');
INSERT INTO "auth_permission" VALUES(73,'Can add Item with goal',25,'add_itemwithgoal');
INSERT INTO "auth_permission" VALUES(74,'Can change Item with goal',25,'change_itemwithgoal');
INSERT INTO "auth_permission" VALUES(75,'Can delete Item with goal',25,'delete_itemwithgoal');
INSERT INTO "auth_permission" VALUES(76,'Can add notice',26,'add_notice');
INSERT INTO "auth_permission" VALUES(77,'Can change notice',26,'change_notice');
INSERT INTO "auth_permission" VALUES(78,'Can delete notice',26,'delete_notice');
INSERT INTO "auth_permission" VALUES(79,'Can add legal page',27,'add_legalpage');
INSERT INTO "auth_permission" VALUES(80,'Can change legal page',27,'change_legalpage');
INSERT INTO "auth_permission" VALUES(81,'Can delete legal page',27,'delete_legalpage');
INSERT INTO "auth_permission" VALUES(82,'Can add static page',28,'add_staticpage');
INSERT INTO "auth_permission" VALUES(83,'Can change static page',28,'change_staticpage');
INSERT INTO "auth_permission" VALUES(84,'Can delete static page',28,'delete_staticpage');
INSERT INTO "auth_permission" VALUES(85,'Can add agreement',29,'add_agreement');
INSERT INTO "auth_permission" VALUES(86,'Can change agreement',29,'change_agreement');
INSERT INTO "auth_permission" VALUES(87,'Can delete agreement',29,'delete_agreement');
INSERT INTO "auth_permission" VALUES(88,'Can add Tag',30,'add_tag');
INSERT INTO "auth_permission" VALUES(89,'Can change Tag',30,'change_tag');
INSERT INTO "auth_permission" VALUES(90,'Can delete Tag',30,'delete_tag');
INSERT INTO "auth_permission" VALUES(91,'Can add Tagged Item',31,'add_taggeditem');
INSERT INTO "auth_permission" VALUES(92,'Can change Tagged Item',31,'change_taggeditem');
INSERT INTO "auth_permission" VALUES(93,'Can delete Tagged Item',31,'delete_taggeditem');
INSERT INTO "auth_permission" VALUES(94,'Can view a translation project',13,'view');
INSERT INTO "auth_permission" VALUES(95,'Can make a suggestion for a translation',13,'suggest');
INSERT INTO "auth_permission" VALUES(96,'Can submit a translation',13,'translate');
INSERT INTO "auth_permission" VALUES(97,'Can overwrite translations on uploading files',13,'overwrite');
INSERT INTO "auth_permission" VALUES(98,'Can review translations',13,'review');
INSERT INTO "auth_permission" VALUES(99,'Can download archives of translation projects',13,'archive');
INSERT INTO "auth_permission" VALUES(100,'Can administrate a translation project',13,'administrate');
INSERT INTO "auth_permission" VALUES(101,'Can commit to version control',13,'commit');
CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
);
CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
);
CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
);
CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
);
CREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
);
INSERT INTO "auth_user" VALUES(1,'nobody','any anonymous user','','','!',0,1,0,'2014-06-12 14:47:09.725929','2014-06-12 14:47:09.725941');
INSERT INTO "auth_user" VALUES(2,'default','any authenticated user','','','!',0,1,0,'2014-06-12 14:47:10.280618','2014-06-12 14:47:10.280646');
INSERT INTO "auth_user" VALUES(3,'admin','Administrator','','','pbkdf2_sha256$10000$bt0ka6tT5j04$AEHsaBmojAPHVa30tg0y1Np9QsbtrAxn8ODyjwEPY2M=',1,1,1,'2014-06-12 14:47:18.847849','2014-06-12 14:47:18.847859');
CREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
);
INSERT INTO "django_content_type" VALUES(1,'session','sessions','session');
INSERT INTO "django_content_type" VALUES(2,'permission','auth','permission');
INSERT INTO "django_content_type" VALUES(3,'group','auth','group');
INSERT INTO "django_content_type" VALUES(4,'user','auth','user');
INSERT INTO "django_content_type" VALUES(5,'content type','contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'site','sites','site');
INSERT INTO "django_content_type" VALUES(7,'log entry','admin','logentry');
INSERT INTO "django_content_type" VALUES(8,'registration profile','registration','registrationprofile');
INSERT INTO "django_content_type" VALUES(9,'site configuration','siteconfig','siteconfiguration');
INSERT INTO "django_content_type" VALUES(10,'vote','voting','vote');
INSERT INTO "django_content_type" VALUES(11,'migration history','south','migrationhistory');
INSERT INTO "django_content_type" VALUES(12,'suggestion','pootle_app','suggestion');
INSERT INTO "django_content_type" VALUES(13,'pootle','pootle_app','directory');
INSERT INTO "django_content_type" VALUES(14,'permission set','pootle_app','permissionset');
INSERT INTO "django_content_type" VALUES(15,'quality check','pootle_store','qualitycheck');
INSERT INTO "django_content_type" VALUES(16,'suggestion','pootle_store','suggestion');
INSERT INTO "django_content_type" VALUES(17,'unit','pootle_store','unit');
INSERT INTO "django_content_type" VALUES(18,'store','pootle_store','store');
INSERT INTO "django_content_type" VALUES(19,'language','pootle_language','language');
INSERT INTO "django_content_type" VALUES(20,'project','pootle_project','project');
INSERT INTO "django_content_type" VALUES(21,'translation project','pootle_translationproject','translationproject');
INSERT INTO "django_content_type" VALUES(22,'pootle profile','pootle_profile','pootleprofile');
INSERT INTO "django_content_type" VALUES(23,'submission','pootle_statistics','submission');
INSERT INTO "django_content_type" VALUES(24,'goal','pootle_tagging','goal');
INSERT INTO "django_content_type" VALUES(25,'Item with goal','pootle_tagging','itemwithgoal');
INSERT INTO "django_content_type" VALUES(26,'notice','pootle_notifications','notice');
INSERT INTO "django_content_type" VALUES(27,'legal page','staticpages','legalpage');
INSERT INTO "django_content_type" VALUES(28,'static page','staticpages','staticpage');
INSERT INTO "django_content_type" VALUES(29,'agreement','staticpages','agreement');
INSERT INTO "django_content_type" VALUES(30,'Tag','taggit','tag');
INSERT INTO "django_content_type" VALUES(31,'Tagged Item','taggit','taggeditem');
CREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
);
INSERT INTO "django_site" VALUES(1,'example.com','example.com');
CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "content_type_id" integer REFERENCES "django_content_type" ("id"),
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
);
CREATE TABLE "registration_registrationprofile" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id"),
    "activation_key" varchar(40) NOT NULL
);
CREATE TABLE "siteconfig_siteconfiguration" (
    "id" integer NOT NULL PRIMARY KEY,
    "site_id" integer NOT NULL REFERENCES "django_site" ("id"),
    "version" varchar(20) NOT NULL,
    "settings" text NOT NULL
);
INSERT INTO "siteconfig_siteconfiguration" VALUES(1,1,'1.0','{"TT_BUILDVERSION": 12017, "POOTLE_BUILDVERSION": 25110}');
CREATE TABLE "votes" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"),
    "object_id" integer unsigned NOT NULL,
    "vote" smallint NOT NULL,
    UNIQUE ("user_id", "content_type_id", "object_id")
);
CREATE TABLE "south_migrationhistory" (
    "id" integer NOT NULL PRIMARY KEY,
    "app_name" varchar(255) NOT NULL,
    "migration" varchar(255) NOT NULL,
    "applied" datetime NOT NULL
);
INSERT INTO "south_migrationhistory" VALUES(1,'pootle_app','0001_initial','2014-06-12 14:46:42.960992');
INSERT INTO "south_migrationhistory" VALUES(2,'pootle_store','0001_initial','2014-06-12 14:46:47.498975');
INSERT INTO "south_migrationhistory" VALUES(3,'pootle_language','0001_initial','2014-06-12 14:46:48.427948');
INSERT INTO "south_migrationhistory" VALUES(4,'pootle_language','0002_auto__del_field_language_description_html__chg_field_language_descript','2014-06-12 14:46:49.390463');
INSERT INTO "south_migrationhistory" VALUES(5,'pootle_project','0001_initial','2014-06-12 14:46:50.125911');
INSERT INTO "south_migrationhistory" VALUES(6,'pootle_project','0002_auto__del_field_project_description_html__chg_field_project_descriptio','2014-06-12 14:46:51.107937');
INSERT INTO "south_migrationhistory" VALUES(7,'pootle_translationproject','0001_initial','2014-06-12 14:46:52.051017');
INSERT INTO "south_migrationhistory" VALUES(8,'pootle_translationproject','0002_auto__del_field_translationproject_description_html__chg_field_transla','2014-06-12 14:46:53.283069');
INSERT INTO "south_migrationhistory" VALUES(9,'pootle_profile','0001_initial','2014-06-12 14:46:55.501275');
INSERT INTO "south_migrationhistory" VALUES(10,'pootle_statistics','0001_initial','2014-06-12 14:46:57.016208');
INSERT INTO "south_migrationhistory" VALUES(11,'pootle_tagging','0001_initial','2014-06-12 14:46:58.178382');
INSERT INTO "south_migrationhistory" VALUES(12,'pootle_notifications','0001_initial','2014-06-12 14:46:59.282409');
INSERT INTO "south_migrationhistory" VALUES(13,'staticpages','0001_initial','2014-06-12 14:47:00.043803');
INSERT INTO "south_migrationhistory" VALUES(14,'staticpages','0002_rename_app','2014-06-12 14:47:00.180007');
INSERT INTO "south_migrationhistory" VALUES(15,'staticpages','0003_auto__del_field_legalpage_body_html__chg_field_legalpage_body','2014-06-12 14:47:01.138490');
INSERT INTO "south_migrationhistory" VALUES(16,'staticpages','0004_auto__add_field_legalpage_virtual_path','2014-06-12 14:47:01.690062');
INSERT INTO "south_migrationhistory" VALUES(17,'staticpages','0005_data__slug_to_virtual_path','2014-06-12 14:47:01.818183');
INSERT INTO "south_migrationhistory" VALUES(18,'staticpages','0006_auto__del_field_legalpage_slug__chg_field_legalpage_virtual_path','2014-06-12 14:47:03.145988');
INSERT INTO "south_migrationhistory" VALUES(19,'staticpages','0007_auto__add_unique_legalpage_virtual_path','2014-06-12 14:47:03.404190');
INSERT INTO "south_migrationhistory" VALUES(20,'staticpages','0008_auto__del_field_legalpage_display_on_register','2014-06-12 14:47:03.990777');
INSERT INTO "south_migrationhistory" VALUES(21,'staticpages','0009_auto__add_staticpage','2014-06-12 14:47:04.265884');
INSERT INTO "south_migrationhistory" VALUES(22,'staticpages','0010_auto__add_agreement__add_unique_agreement_user_document__add_field_sta','2014-06-12 14:47:05.838222');
INSERT INTO "south_migrationhistory" VALUES(23,'staticpages','0011_auto__chg_field_legalpage_modified_on__chg_field_staticpage_modified_o','2014-06-12 14:47:06.858795');
INSERT INTO "south_migrationhistory" VALUES(24,'taggit','0001_initial','2014-06-12 14:47:08.322795');
INSERT INTO "south_migrationhistory" VALUES(25,'taggit','0002_unique_tagnames','2014-06-12 14:47:08.722687');
CREATE TABLE "pootle_app_suggestion" ("id" integer NOT NULL PRIMARY KEY, "unit" integer NOT NULL, "translation_project_id" integer NOT NULL, "state" varchar(16) NOT NULL, "suggester_id" integer NULL, "creation_time" datetime NOT NULL, "reviewer_id" integer NULL, "review_time" datetime NULL);
CREATE TABLE "pootle_app_directory" ("id" integer NOT NULL PRIMARY KEY, "name" varchar(255) NOT NULL, "parent_id" integer NULL, "pootle_path" varchar(255) NOT NULL);
INSERT INTO "pootle_app_directory" VALUES(1,'',NULL,'/');
INSERT INTO "pootle_app_directory" VALUES(2,'projects',1,'/projects/');
INSERT INTO "pootle_app_directory" VALUES(3,'goals',1,'/goals/');
INSERT INTO "pootle_app_directory" VALUES(4,'templates',1,'/templates/');
INSERT INTO "pootle_app_directory" VALUES(5,'en',1,'/en/');
INSERT INTO "pootle_app_directory" VALUES(6,'terminology',2,'/projects/terminology/');
INSERT INTO "pootle_app_directory" VALUES(7,'tutorial',2,'/projects/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(8,'tutorial',4,'/templates/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(9,'son',1,'/son/');
INSERT INTO "pootle_app_directory" VALUES(10,'terminology',9,'/son/terminology/');
INSERT INTO "pootle_app_directory" VALUES(11,'gu',1,'/gu/');
INSERT INTO "pootle_app_directory" VALUES(12,'ff',1,'/ff/');
INSERT INTO "pootle_app_directory" VALUES(13,'terminology',12,'/ff/terminology/');
INSERT INTO "pootle_app_directory" VALUES(14,'nqo',1,'/nqo/');
INSERT INTO "pootle_app_directory" VALUES(15,'nso',1,'/nso/');
INSERT INTO "pootle_app_directory" VALUES(16,'terminology',15,'/nso/terminology/');
INSERT INTO "pootle_app_directory" VALUES(17,'ca',1,'/ca/');
INSERT INTO "pootle_app_directory" VALUES(18,'terminology',17,'/ca/terminology/');
INSERT INTO "pootle_app_directory" VALUES(19,'gnome',18,'/ca/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(20,'sco',1,'/sco/');
INSERT INTO "pootle_app_directory" VALUES(21,'gun',1,'/gun/');
INSERT INTO "pootle_app_directory" VALUES(22,'ca@valencia',1,'/ca@valencia/');
INSERT INTO "pootle_app_directory" VALUES(23,'gd',1,'/gd/');
INSERT INTO "pootle_app_directory" VALUES(24,'ga',1,'/ga/');
INSERT INTO "pootle_app_directory" VALUES(25,'terminology',24,'/ga/terminology/');
INSERT INTO "pootle_app_directory" VALUES(26,'cs',1,'/cs/');
INSERT INTO "pootle_app_directory" VALUES(27,'terminology',26,'/cs/terminology/');
INSERT INTO "pootle_app_directory" VALUES(28,'gnome',27,'/cs/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(29,'gl',1,'/gl/');
INSERT INTO "pootle_app_directory" VALUES(30,'terminology',29,'/gl/terminology/');
INSERT INTO "pootle_app_directory" VALUES(31,'mfe',1,'/mfe/');
INSERT INTO "pootle_app_directory" VALUES(32,'ps',1,'/ps/');
INSERT INTO "pootle_app_directory" VALUES(33,'lb',1,'/lb/');
INSERT INTO "pootle_app_directory" VALUES(34,'pt',1,'/pt/');
INSERT INTO "pootle_app_directory" VALUES(35,'terminology',34,'/pt/terminology/');
INSERT INTO "pootle_app_directory" VALUES(36,'gnome',35,'/pt/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(37,'ln',1,'/ln/');
INSERT INTO "pootle_app_directory" VALUES(38,'terminology',37,'/ln/terminology/');
INSERT INTO "pootle_app_directory" VALUES(39,'lo',1,'/lo/');
INSERT INTO "pootle_app_directory" VALUES(40,'tt',1,'/tt/');
INSERT INTO "pootle_app_directory" VALUES(41,'pms',1,'/pms/');
INSERT INTO "pootle_app_directory" VALUES(42,'tr',1,'/tr/');
INSERT INTO "pootle_app_directory" VALUES(43,'terminology',42,'/tr/terminology/');
INSERT INTO "pootle_app_directory" VALUES(44,'uk',1,'/uk/');
INSERT INTO "pootle_app_directory" VALUES(45,'terminology',44,'/uk/terminology/');
INSERT INTO "pootle_app_directory" VALUES(46,'gnome',45,'/uk/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(47,'lv',1,'/lv/');
INSERT INTO "pootle_app_directory" VALUES(48,'lt',1,'/lt/');
INSERT INTO "pootle_app_directory" VALUES(49,'terminology',48,'/lt/terminology/');
INSERT INTO "pootle_app_directory" VALUES(50,'pa',1,'/pa/');
INSERT INTO "pootle_app_directory" VALUES(51,'terminology',50,'/pa/terminology/');
INSERT INTO "pootle_app_directory" VALUES(52,'gnome',51,'/pa/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(53,'sw',1,'/sw/');
INSERT INTO "pootle_app_directory" VALUES(54,'terminology',53,'/sw/terminology/');
INSERT INTO "pootle_app_directory" VALUES(55,'tg',1,'/tg/');
INSERT INTO "pootle_app_directory" VALUES(56,'th',1,'/th/');
INSERT INTO "pootle_app_directory" VALUES(57,'terminology',56,'/th/terminology/');
INSERT INTO "pootle_app_directory" VALUES(58,'gnome',57,'/th/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(59,'ti',1,'/ti/');
INSERT INTO "pootle_app_directory" VALUES(60,'su',1,'/su/');
INSERT INTO "pootle_app_directory" VALUES(61,'te',1,'/te/');
INSERT INTO "pootle_app_directory" VALUES(62,'is',1,'/is/');
INSERT INTO "pootle_app_directory" VALUES(63,'terminology',62,'/is/terminology/');
INSERT INTO "pootle_app_directory" VALUES(64,'en_GB',1,'/en_GB/');
INSERT INTO "pootle_app_directory" VALUES(65,'ta',1,'/ta/');
INSERT INTO "pootle_app_directory" VALUES(66,'hy',1,'/hy/');
INSERT INTO "pootle_app_directory" VALUES(67,'pt_BR',1,'/pt_BR/');
INSERT INTO "pootle_app_directory" VALUES(68,'terminology',67,'/pt_BR/terminology/');
INSERT INTO "pootle_app_directory" VALUES(69,'gnome',68,'/pt_BR/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(70,'hr',1,'/hr/');
INSERT INTO "pootle_app_directory" VALUES(71,'de',1,'/de/');
INSERT INTO "pootle_app_directory" VALUES(72,'terminology',71,'/de/terminology/');
INSERT INTO "pootle_app_directory" VALUES(73,'ht',1,'/ht/');
INSERT INTO "pootle_app_directory" VALUES(74,'da',1,'/da/');
INSERT INTO "pootle_app_directory" VALUES(75,'terminology',74,'/da/terminology/');
INSERT INTO "pootle_app_directory" VALUES(76,'gnome',75,'/da/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(77,'hi',1,'/hi/');
INSERT INTO "pootle_app_directory" VALUES(78,'terminology',77,'/hi/terminology/');
INSERT INTO "pootle_app_directory" VALUES(79,'gnome',78,'/hi/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(80,'dz',1,'/dz/');
INSERT INTO "pootle_app_directory" VALUES(81,'st',1,'/st/');
INSERT INTO "pootle_app_directory" VALUES(82,'ha',1,'/ha/');
INSERT INTO "pootle_app_directory" VALUES(83,'he',1,'/he/');
INSERT INTO "pootle_app_directory" VALUES(84,'mg',1,'/mg/');
INSERT INTO "pootle_app_directory" VALUES(85,'fur',1,'/fur/');
INSERT INTO "pootle_app_directory" VALUES(86,'zh_CN',1,'/zh_CN/');
INSERT INTO "pootle_app_directory" VALUES(87,'terminology',86,'/zh_CN/terminology/');
INSERT INTO "pootle_app_directory" VALUES(88,'gnome',87,'/zh_CN/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(89,'ml',1,'/ml/');
INSERT INTO "pootle_app_directory" VALUES(90,'mn',1,'/mn/');
INSERT INTO "pootle_app_directory" VALUES(91,'mi',1,'/mi/');
INSERT INTO "pootle_app_directory" VALUES(92,'cy',1,'/cy/');
INSERT INTO "pootle_app_directory" VALUES(93,'en_ZA',1,'/en_ZA/');
INSERT INTO "pootle_app_directory" VALUES(94,'zh_HK',1,'/zh_HK/');
INSERT INTO "pootle_app_directory" VALUES(95,'terminology',94,'/zh_HK/terminology/');
INSERT INTO "pootle_app_directory" VALUES(96,'gnome',95,'/zh_HK/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(97,'mt',1,'/mt/');
INSERT INTO "pootle_app_directory" VALUES(98,'fil',1,'/fil/');
INSERT INTO "pootle_app_directory" VALUES(99,'ms',1,'/ms/');
INSERT INTO "pootle_app_directory" VALUES(100,'terminology',99,'/ms/terminology/');
INSERT INTO "pootle_app_directory" VALUES(101,'gnome',100,'/ms/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(102,'mr',1,'/mr/');
INSERT INTO "pootle_app_directory" VALUES(103,'terminology',102,'/mr/terminology/');
INSERT INTO "pootle_app_directory" VALUES(104,'gnome',103,'/mr/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(105,'ug',1,'/ug/');
INSERT INTO "pootle_app_directory" VALUES(106,'el',1,'/el/');
INSERT INTO "pootle_app_directory" VALUES(107,'eo',1,'/eo/');
INSERT INTO "pootle_app_directory" VALUES(108,'terminology',107,'/eo/terminology/');
INSERT INTO "pootle_app_directory" VALUES(109,'gnome',108,'/eo/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(110,'tk',1,'/tk/');
INSERT INTO "pootle_app_directory" VALUES(111,'af',1,'/af/');
INSERT INTO "pootle_app_directory" VALUES(112,'terminology',111,'/af/terminology/');
INSERT INTO "pootle_app_directory" VALUES(113,'tutorial',111,'/af/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(114,'ve',1,'/ve/');
INSERT INTO "pootle_app_directory" VALUES(115,'oc',1,'/oc/');
INSERT INTO "pootle_app_directory" VALUES(116,'ak',1,'/ak/');
INSERT INTO "pootle_app_directory" VALUES(117,'terminology',116,'/ak/terminology/');
INSERT INTO "pootle_app_directory" VALUES(118,'am',1,'/am/');
INSERT INTO "pootle_app_directory" VALUES(119,'terminology',118,'/am/terminology/');
INSERT INTO "pootle_app_directory" VALUES(120,'gnome',119,'/am/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(121,'it',1,'/it/');
INSERT INTO "pootle_app_directory" VALUES(122,'terminology',121,'/it/terminology/');
INSERT INTO "pootle_app_directory" VALUES(123,'gnome',122,'/it/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(124,'an',1,'/an/');
INSERT INTO "pootle_app_directory" VALUES(125,'ia',1,'/ia/');
INSERT INTO "pootle_app_directory" VALUES(126,'ar',1,'/ar/');
INSERT INTO "pootle_app_directory" VALUES(127,'terminology',126,'/ar/terminology/');
INSERT INTO "pootle_app_directory" VALUES(128,'gnome',127,'/ar/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(129,'tutorial',126,'/ar/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(130,'mk',1,'/mk/');
INSERT INTO "pootle_app_directory" VALUES(131,'terminology',130,'/mk/terminology/');
INSERT INTO "pootle_app_directory" VALUES(132,'gnome',131,'/mk/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(133,'zu',1,'/zu/');
INSERT INTO "pootle_app_directory" VALUES(134,'tutorial',133,'/zu/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(135,'eu',1,'/eu/');
INSERT INTO "pootle_app_directory" VALUES(136,'terminology',135,'/eu/terminology/');
INSERT INTO "pootle_app_directory" VALUES(137,'gnome',136,'/eu/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(138,'tutorial',135,'/eu/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(139,'et',1,'/et/');
INSERT INTO "pootle_app_directory" VALUES(140,'az',1,'/az/');
INSERT INTO "pootle_app_directory" VALUES(141,'terminology',140,'/az/terminology/');
INSERT INTO "pootle_app_directory" VALUES(142,'gnome',141,'/az/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(143,'id',1,'/id/');
INSERT INTO "pootle_app_directory" VALUES(144,'arn',1,'/arn/');
INSERT INTO "pootle_app_directory" VALUES(145,'bn_IN',1,'/bn_IN/');
INSERT INTO "pootle_app_directory" VALUES(146,'pap',1,'/pap/');
INSERT INTO "pootle_app_directory" VALUES(147,'terminology',146,'/pap/terminology/');
INSERT INTO "pootle_app_directory" VALUES(148,'ru',1,'/ru/');
INSERT INTO "pootle_app_directory" VALUES(149,'nl',1,'/nl/');
INSERT INTO "pootle_app_directory" VALUES(150,'terminology',149,'/nl/terminology/');
INSERT INTO "pootle_app_directory" VALUES(151,'gnome',150,'/nl/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(152,'yo',1,'/yo/');
INSERT INTO "pootle_app_directory" VALUES(153,'nn',1,'/nn/');
INSERT INTO "pootle_app_directory" VALUES(154,'terminology',153,'/nn/terminology/');
INSERT INTO "pootle_app_directory" VALUES(155,'gnome',154,'/nn/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(156,'nah',1,'/nah/');
INSERT INTO "pootle_app_directory" VALUES(157,'ne',1,'/ne/');
INSERT INTO "pootle_app_directory" VALUES(158,'csb',1,'/csb/');
INSERT INTO "pootle_app_directory" VALUES(159,'wo',1,'/wo/');
INSERT INTO "pootle_app_directory" VALUES(160,'nap',1,'/nap/');
INSERT INTO "pootle_app_directory" VALUES(161,'es',1,'/es/');
INSERT INTO "pootle_app_directory" VALUES(162,'terminology',161,'/es/terminology/');
INSERT INTO "pootle_app_directory" VALUES(163,'gnome',162,'/es/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(164,'rm',1,'/rm/');
INSERT INTO "pootle_app_directory" VALUES(165,'zh_TW',1,'/zh_TW/');
INSERT INTO "pootle_app_directory" VALUES(166,'terminology',165,'/zh_TW/terminology/');
INSERT INTO "pootle_app_directory" VALUES(167,'gnome',166,'/zh_TW/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(168,'ro',1,'/ro/');
INSERT INTO "pootle_app_directory" VALUES(169,'terminology',168,'/ro/terminology/');
INSERT INTO "pootle_app_directory" VALUES(170,'ro',169,'/ro/terminology/ro/');
INSERT INTO "pootle_app_directory" VALUES(171,'gnome',170,'/ro/terminology/ro/gnome/');
INSERT INTO "pootle_app_directory" VALUES(172,'sah',1,'/sah/');
INSERT INTO "pootle_app_directory" VALUES(173,'jv',1,'/jv/');
INSERT INTO "pootle_app_directory" VALUES(174,'be',1,'/be/');
INSERT INTO "pootle_app_directory" VALUES(175,'fr',1,'/fr/');
INSERT INTO "pootle_app_directory" VALUES(176,'terminology',175,'/fr/terminology/');
INSERT INTO "pootle_app_directory" VALUES(177,'gnome',176,'/fr/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(178,'tutorial',175,'/fr/tutorial/');
INSERT INTO "pootle_app_directory" VALUES(179,'bg',1,'/bg/');
INSERT INTO "pootle_app_directory" VALUES(180,'terminology',179,'/bg/terminology/');
INSERT INTO "pootle_app_directory" VALUES(181,'sv',1,'/sv/');
INSERT INTO "pootle_app_directory" VALUES(182,'terminology',181,'/sv/terminology/');
INSERT INTO "pootle_app_directory" VALUES(183,'gnome',182,'/sv/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(184,'wa',1,'/wa/');
INSERT INTO "pootle_app_directory" VALUES(185,'terminology',184,'/wa/terminology/');
INSERT INTO "pootle_app_directory" VALUES(186,'gnome',185,'/wa/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(187,'ast',1,'/ast/');
INSERT INTO "pootle_app_directory" VALUES(188,'terminology',187,'/ast/terminology/');
INSERT INTO "pootle_app_directory" VALUES(189,'vi',1,'/vi/');
INSERT INTO "pootle_app_directory" VALUES(190,'terminology',189,'/vi/terminology/');
INSERT INTO "pootle_app_directory" VALUES(191,'gnome',190,'/vi/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(192,'fy',1,'/fy/');
INSERT INTO "pootle_app_directory" VALUES(193,'bn',1,'/bn/');
INSERT INTO "pootle_app_directory" VALUES(194,'bo',1,'/bo/');
INSERT INTO "pootle_app_directory" VALUES(195,'fa',1,'/fa/');
INSERT INTO "pootle_app_directory" VALUES(196,'terminology',195,'/fa/terminology/');
INSERT INTO "pootle_app_directory" VALUES(197,'gnome',196,'/fa/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(198,'br',1,'/br/');
INSERT INTO "pootle_app_directory" VALUES(199,'bs',1,'/bs/');
INSERT INTO "pootle_app_directory" VALUES(200,'mai',1,'/mai/');
INSERT INTO "pootle_app_directory" VALUES(201,'fi',1,'/fi/');
INSERT INTO "pootle_app_directory" VALUES(202,'hu',1,'/hu/');
INSERT INTO "pootle_app_directory" VALUES(203,'terminology',202,'/hu/terminology/');
INSERT INTO "pootle_app_directory" VALUES(204,'gnome',203,'/hu/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(205,'ja',1,'/ja/');
INSERT INTO "pootle_app_directory" VALUES(206,'terminology',205,'/ja/terminology/');
INSERT INTO "pootle_app_directory" VALUES(207,'gnome',206,'/ja/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(208,'fo',1,'/fo/');
INSERT INTO "pootle_app_directory" VALUES(209,'ka',1,'/ka/');
INSERT INTO "pootle_app_directory" VALUES(210,'so',1,'/so/');
INSERT INTO "pootle_app_directory" VALUES(211,'kk',1,'/kk/');
INSERT INTO "pootle_app_directory" VALUES(212,'sr',1,'/sr/');
INSERT INTO "pootle_app_directory" VALUES(213,'sq',1,'/sq/');
INSERT INTO "pootle_app_directory" VALUES(214,'terminology',213,'/sq/terminology/');
INSERT INTO "pootle_app_directory" VALUES(215,'gnome',214,'/sq/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(216,'ko',1,'/ko/');
INSERT INTO "pootle_app_directory" VALUES(217,'terminology',216,'/ko/terminology/');
INSERT INTO "pootle_app_directory" VALUES(218,'kn',1,'/kn/');
INSERT INTO "pootle_app_directory" VALUES(219,'terminology',218,'/kn/terminology/');
INSERT INTO "pootle_app_directory" VALUES(220,'gnome',219,'/kn/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(221,'km',1,'/km/');
INSERT INTO "pootle_app_directory" VALUES(222,'terminology',221,'/km/terminology/');
INSERT INTO "pootle_app_directory" VALUES(223,'or',1,'/or/');
INSERT INTO "pootle_app_directory" VALUES(224,'terminology',223,'/or/terminology/');
INSERT INTO "pootle_app_directory" VALUES(225,'sk',1,'/sk/');
INSERT INTO "pootle_app_directory" VALUES(226,'terminology',225,'/sk/terminology/');
INSERT INTO "pootle_app_directory" VALUES(227,'gnome',226,'/sk/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(228,'si',1,'/si/');
INSERT INTO "pootle_app_directory" VALUES(229,'pl',1,'/pl/');
INSERT INTO "pootle_app_directory" VALUES(230,'terminology',229,'/pl/terminology/');
INSERT INTO "pootle_app_directory" VALUES(231,'gnome',230,'/pl/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(232,'kw',1,'/kw/');
INSERT INTO "pootle_app_directory" VALUES(233,'ku',1,'/ku/');
INSERT INTO "pootle_app_directory" VALUES(234,'terminology',233,'/ku/terminology/');
INSERT INTO "pootle_app_directory" VALUES(235,'gnome',234,'/ku/terminology/gnome/');
INSERT INTO "pootle_app_directory" VALUES(236,'sl',1,'/sl/');
INSERT INTO "pootle_app_directory" VALUES(237,'ky',1,'/ky/');
INSERT INTO "pootle_app_directory" VALUES(238,'nb',1,'/nb/');
INSERT INTO "pootle_app_directory" VALUES(239,'terminology',238,'/nb/terminology/');
INSERT INTO "pootle_app_directory" VALUES(240,'gnome',239,'/nb/terminology/gnome/');
CREATE TABLE "pootle_app_permissionset" ("id" integer NOT NULL PRIMARY KEY, "profile_id" integer NOT NULL, "directory_id" integer NOT NULL);
INSERT INTO "pootle_app_permissionset" VALUES(1,1,1);
INSERT INTO "pootle_app_permissionset" VALUES(2,2,1);
INSERT INTO "pootle_app_permissionset" VALUES(3,1,4);
INSERT INTO "pootle_app_permissionset" VALUES(4,2,4);
CREATE TABLE "pootle_app_permissionset_positive_permissions" ("id" integer NOT NULL PRIMARY KEY, "permissionset_id" integer NOT NULL, "permission_id" integer NOT NULL);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(1,1,94);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(2,1,95);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(3,2,96);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(4,2,99);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(5,2,94);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(6,2,95);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(7,3,94);
INSERT INTO "pootle_app_permissionset_positive_permissions" VALUES(8,4,94);
CREATE TABLE "pootle_app_permissionset_negative_permissions" ("id" integer NOT NULL PRIMARY KEY, "permissionset_id" integer NOT NULL, "permission_id" integer NOT NULL);
CREATE TABLE "pootle_store_qualitycheck" ("id" integer NOT NULL PRIMARY KEY, "name" varchar(64) NOT NULL, "unit_id" integer NOT NULL, "category" integer NOT NULL, "message" text NOT NULL, "false_positive" bool NOT NULL);
CREATE TABLE "pootle_store_suggestion" ("id" integer NOT NULL PRIMARY KEY, "target_f" text NOT NULL, "target_hash" varchar(32) NOT NULL, "unit_id" integer NOT NULL, "user_id" integer NULL, "translator_comment_f" text NULL);
CREATE TABLE "pootle_store_unit" ("id" integer NOT NULL PRIMARY KEY, "store_id" integer NOT NULL, "index" integer NOT NULL, "unitid" text NOT NULL, "unitid_hash" varchar(32) NOT NULL, "source_f" text NULL, "source_hash" varchar(32) NOT NULL, "source_wordcount" smallint NOT NULL, "source_length" smallint NOT NULL, "target_f" text NULL, "target_wordcount" smallint NOT NULL, "target_length" smallint NOT NULL, "developer_comment" text NULL, "translator_comment" text NULL, "locations" text NULL, "context" text NULL, "state" integer NOT NULL, "mtime" datetime NOT NULL, "submitted_by_id" integer NULL, "submitted_on" datetime NULL, "commented_by_id" integer NULL, "commented_on" datetime NULL);
CREATE TABLE "pootle_store_store" ("id" integer NOT NULL PRIMARY KEY, "file" varchar(255) NOT NULL, "pending" varchar(255) NOT NULL, "tm" varchar(255) NOT NULL, "parent_id" integer NOT NULL, "translation_project_id" integer NOT NULL, "pootle_path" varchar(255) NOT NULL UNIQUE, "name" varchar(128) NOT NULL, "sync_time" datetime NOT NULL, "state" integer NOT NULL);
INSERT INTO "pootle_store_store" VALUES(1,'tutorial/templates/tutorial.pot','','',8,1,'/templates/tutorial/tutorial.pot','tutorial.pot','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(2,'terminology/son/essential.po','','',10,2,'/son/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(3,'terminology/son/glossmaster.po','','',10,2,'/son/terminology/glossmaster.po','glossmaster.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(4,'terminology/ff/essential.po','','',13,3,'/ff/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(5,'terminology/nso/essential.po','','',16,4,'/nso/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(6,'terminology/ca/essential.po','','',18,5,'/ca/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(7,'terminology/ca/gnome/ca.po','','',19,5,'/ca/terminology/gnome/ca.po','ca.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(8,'terminology/ga/essential.po','','',25,6,'/ga/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(9,'terminology/cs/gnome/cs.po','','',28,7,'/cs/terminology/gnome/cs.po','cs.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(10,'terminology/gl/essential.po','','',30,8,'/gl/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(11,'terminology/pt/gnome/pt.po','','',36,9,'/pt/terminology/gnome/pt.po','pt.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(12,'terminology/ln/GM_ln_20090916.po','','',38,10,'/ln/terminology/GM_ln_20090916.po','GM_ln_20090916.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(13,'terminology/tr/essential.po','','',43,11,'/tr/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(14,'terminology/uk/gnome/uk.po','','',46,12,'/uk/terminology/gnome/uk.po','uk.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(15,'terminology/lt/essential.po','','',49,13,'/lt/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(16,'terminology/pa/gnome/pa.po','','',52,14,'/pa/terminology/gnome/pa.po','pa.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(17,'terminology/sw/essential.po','','',54,15,'/sw/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(18,'terminology/th/gnome/th.po','','',58,16,'/th/terminology/gnome/th.po','th.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(19,'terminology/is/essential.po','','',63,17,'/is/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(20,'terminology/pt_BR/gnome/pt_BR.po','','',69,18,'/pt_BR/terminology/gnome/pt_BR.po','pt_BR.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(21,'terminology/de/essential.po','','',72,19,'/de/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(22,'terminology/da/essential.po','','',75,20,'/da/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(23,'terminology/da/gnome/da.po','','',76,20,'/da/terminology/gnome/da.po','da.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(24,'terminology/hi/fuel_hi.po','','',78,21,'/hi/terminology/fuel_hi.po','fuel_hi.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(25,'terminology/hi/gnome/hi.po','','',79,21,'/hi/terminology/gnome/hi.po','hi.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(26,'terminology/zh_CN/gnome/zh_CN.po','','',88,22,'/zh_CN/terminology/gnome/zh_CN.po','zh_CN.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(27,'terminology/zh_HK/gnome/zh_HK.po','','',96,23,'/zh_HK/terminology/gnome/zh_HK.po','zh_HK.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(28,'terminology/ms/gnome/ms.po','','',101,24,'/ms/terminology/gnome/ms.po','ms.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(29,'terminology/mr/gnome/mr.po','','',104,25,'/mr/terminology/gnome/mr.po','mr.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(30,'terminology/eo/gnome/eo.po','','',109,26,'/eo/terminology/gnome/eo.po','eo.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(31,'terminology/af/gnome-terminologie.po','','',112,27,'/af/terminology/gnome-terminologie.po','gnome-terminologie.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(32,'tutorial/af/tutorial.po','','',113,28,'/af/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(33,'terminology/ak/Glossmaster_ak.po','','',117,29,'/ak/terminology/Glossmaster_ak.po','Glossmaster_ak.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(34,'terminology/am/gnome/am.po','','',120,30,'/am/terminology/gnome/am.po','am.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(35,'terminology/it/gnome/it.po','','',123,31,'/it/terminology/gnome/it.po','it.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(36,'terminology/ar/essential.po','','',127,32,'/ar/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(37,'terminology/ar/gnome/ar.po','','',128,32,'/ar/terminology/gnome/ar.po','ar.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(38,'tutorial/ar/tutorial.po','','',129,33,'/ar/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(39,'terminology/mk/gnome/mk.po','','',132,34,'/mk/terminology/gnome/mk.po','mk.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(40,'tutorial/zu/tutorial.po','','',134,35,'/zu/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(41,'terminology/eu/gnome/eu.po','','',137,36,'/eu/terminology/gnome/eu.po','eu.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(42,'tutorial/eu/tutorial.po','','',138,37,'/eu/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(43,'terminology/az/gnome/az.po','','',142,38,'/az/terminology/gnome/az.po','az.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(44,'terminology/pap/essential.po','','',147,39,'/pap/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(45,'terminology/nl/gnome/nl.po','','',151,40,'/nl/terminology/gnome/nl.po','nl.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(46,'terminology/nn/gnome/nn.po','','',155,41,'/nn/terminology/gnome/nn.po','nn.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(47,'terminology/es/essential.po','','',162,42,'/es/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(48,'terminology/es/gnome/es.po','','',163,42,'/es/terminology/gnome/es.po','es.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(49,'terminology/zh_TW/gnome/zh_TW.po','','',167,43,'/zh_TW/terminology/gnome/zh_TW.po','zh_TW.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(50,'terminology/ro/essential.po','','',169,44,'/ro/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(51,'terminology/ro/ro/gnome/ro.po','','',171,44,'/ro/terminology/ro/gnome/ro.po','ro.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(52,'terminology/fr/gnome/fr.po','','',177,45,'/fr/terminology/gnome/fr.po','fr.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(53,'tutorial/fr/tutorial.po','','',178,46,'/fr/tutorial/tutorial.po','tutorial.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(54,'terminology/bg/essential.po','','',180,47,'/bg/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(55,'terminology/sv/gnome/sv.po','','',183,48,'/sv/terminology/gnome/sv.po','sv.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(56,'terminology/wa/gnome/wa.po','','',186,49,'/wa/terminology/gnome/wa.po','wa.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(57,'terminology/ast/essential.po','','',188,50,'/ast/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(58,'terminology/vi/essential.po','','',190,51,'/vi/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(59,'terminology/vi/gnome/vi.po','','',191,51,'/vi/terminology/gnome/vi.po','vi.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(60,'terminology/fa/gnome/fa.po','','',197,52,'/fa/terminology/gnome/fa.po','fa.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(61,'terminology/hu/gnome/hu.po','','',204,53,'/hu/terminology/gnome/hu.po','hu.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(62,'terminology/ja/gnome/ja.po','','',207,54,'/ja/terminology/gnome/ja.po','ja.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(63,'terminology/sq/gnome/sq.po','','',215,55,'/sq/terminology/gnome/sq.po','sq.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(64,'terminology/ko/essential.po','','',217,56,'/ko/terminology/essential.po','essential.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(65,'terminology/kn/gnome/kn.po','','',220,57,'/kn/terminology/gnome/kn.po','kn.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(66,'terminology/km/GlossaryV3_2Computer.csv.po','','',222,58,'/km/terminology/GlossaryV3_2Computer.csv.po','GlossaryV3_2Computer.csv.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(67,'terminology/or/fuel_or.po','','',224,59,'/or/terminology/fuel_or.po','fuel_or.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(68,'terminology/sk/gnome/sk.po','','',227,60,'/sk/terminology/gnome/sk.po','sk.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(69,'terminology/pl/gnome/pl.po','','',231,61,'/pl/terminology/gnome/pl.po','pl.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(70,'terminology/ku/gnome/ku.po','','',235,62,'/ku/terminology/gnome/ku.po','ku.po','0001-01-01 00:00:00',0);
INSERT INTO "pootle_store_store" VALUES(71,'terminology/nb/gnome/nb.po','','',240,63,'/nb/terminology/gnome/nb.po','nb.po','0001-01-01 00:00:00',0);
CREATE TABLE "pootle_app_language" ("pluralequation" varchar(255) NOT NULL, "code" varchar(50) NOT NULL UNIQUE, "description" text NOT NULL, "directory_id" integer NOT NULL UNIQUE, "fullname" varchar(255) NOT NULL, "specialchars" varchar(255) NOT NULL, "id" integer PRIMARY KEY, "nplurals" smallint NOT NULL);
INSERT INTO "pootle_app_language" VALUES('','templates','',4,'Templates','',1,0);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','en','',5,'English','',2,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','son','',9,'Songhai languages','ɲŋšžãõẽĩƝŊŠŽÃÕẼĨ',3,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','gu','',11,'Gujarati','',4,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ff','',12,'Fulah','',5,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','nqo','',14,'N''Ko','',6,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','nso','',15,'Pedi; Sepedi; Northern Sotho','šŠ',7,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ca','',17,'Catalan; Valencian','',8,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','sco','',20,'Scots','',9,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','gun','',21,'Gun','',10,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ca@valencia','',22,'Catalan; Valencian','',11,2);
INSERT INTO "pootle_app_language" VALUES('(n==1 || n==11) ? 0 : (n==2 || n==12) ? 1 : (n > 2 && n < 20) ? 2 : 3','gd','',23,'Gaelic; Scottish Gaelic','àòùèìÀÈÌÒÙ',12,4);
INSERT INTO "pootle_app_language" VALUES('n==1 ? 0 : n==2 ? 1 : n<7 ? 2 : n<11 ? 3 : 4','ga','',24,'Irish','',13,5);
INSERT INTO "pootle_app_language" VALUES('(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2','cs','',26,'Czech','',14,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','gl','',29,'Galician','',15,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','mfe','',31,'Morisyen','',16,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ps','',32,'Pushto; Pashto','',17,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','lb','',33,'Luxembourgish; Letzeburgesch','',18,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','pt','',34,'Portuguese','',19,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','ln','',37,'Lingala','',20,2);
INSERT INTO "pootle_app_language" VALUES('0','lo','',39,'Lao','',21,1);
INSERT INTO "pootle_app_language" VALUES('0','tt','',40,'Tatar','',22,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','pms','',41,'Piemontese','',23,2);
INSERT INTO "pootle_app_language" VALUES('0','tr','',42,'Turkish','',24,1);
INSERT INTO "pootle_app_language" VALUES('(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)','uk','',44,'Ukrainian','',25,3);
INSERT INTO "pootle_app_language" VALUES('(n%10==1 && n%100!=11 ? 0 : n != 0 ? 1 : 2)','lv','',47,'Latvian','',26,3);
INSERT INTO "pootle_app_language" VALUES('(n%10==1 && n%100!=11 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2)','lt','',48,'Lithuanian','',27,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','pa','',50,'Panjabi; Punjabi','',28,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','sw','',53,'Swahili','',29,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','tg','',55,'Tajik','',30,2);
INSERT INTO "pootle_app_language" VALUES('0','th','',56,'Thai','',31,1);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','ti','',59,'Tigrinya','',32,2);
INSERT INTO "pootle_app_language" VALUES('0','su','',60,'Sundanese','',33,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','te','',61,'Telugu','',34,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','is','',62,'Icelandic','',35,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','en_GB','',64,'English (United Kingdom)','',36,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ta','',65,'Tamil','',37,2);
INSERT INTO "pootle_app_language" VALUES('0','hy','',66,'Armenian','',38,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','pt_BR','',67,'Portuguese (Brazil)','',39,2);
INSERT INTO "pootle_app_language" VALUES('(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)','hr','',70,'Croatian','',40,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','de','',71,'German','',41,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ht','',73,'Haitian; Haitian Creole','',42,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','da','',74,'Danish','',43,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','hi','',77,'Hindi','',44,2);
INSERT INTO "pootle_app_language" VALUES('0','dz','',80,'Dzongkha','',45,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','st','',81,'Sotho, Southern','',46,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ha','',82,'Hausa','',47,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','he','',83,'Hebrew','',48,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','mg','',84,'Malagasy','',49,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','fur','',85,'Friulian','',50,2);
INSERT INTO "pootle_app_language" VALUES('0','zh_CN','',86,'Chinese (China)','←→↔×÷©…—‘’“”【】《》',51,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ml','',89,'Malayalam','',52,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','mn','',90,'Mongolian','',53,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','mi','',91,'Maori','',54,2);
INSERT INTO "pootle_app_language" VALUES('(n==2) ? 1 : 0','cy','',92,'Welsh','',55,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','en_ZA','',93,'English (South Africa)','',56,2);
INSERT INTO "pootle_app_language" VALUES('0','zh_HK','',94,'Chinese (Hong Kong)','←→↔×÷©…—‘’“”「」『』【】《》',57,1);
INSERT INTO "pootle_app_language" VALUES('(n==1 ? 0 : n==0 || ( n%100>1 && n%100<11) ? 1 : (n%100>10 && n%100<20 ) ? 2 : 3)','mt','',97,'Maltese','',58,4);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','fil','',98,'Filipino; Pilipino','',59,2);
INSERT INTO "pootle_app_language" VALUES('0','ms','',99,'Malay','',60,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','mr','',102,'Marathi','',61,2);
INSERT INTO "pootle_app_language" VALUES('0','ug','',105,'Uighur; Uyghur','',62,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','el','',106,'Greek, Modern (1453-)','',63,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','eo','',107,'Esperanto','',64,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','tk','',110,'Turkmen','',65,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','af','',111,'Afrikaans','ëïêôûáéíóúý',66,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ve','',114,'Venda','ḓṋḽṱ ḒṊḼṰ ṅṄ',67,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','oc','',115,'Occitan (post 1500)','',68,2);
INSERT INTO "pootle_app_language" VALUES('n > 1','ak','',116,'Akan','ɛɔƐƆ',69,2);
INSERT INTO "pootle_app_language" VALUES('n > 1','am','',118,'Amharic','',70,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','it','',121,'Italian','',71,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','an','',124,'Aragonese','',72,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ia','',125,'Interlingua (International Auxiliary Language Association)','',73,2);
INSERT INTO "pootle_app_language" VALUES('n==0 ? 0 : n==1 ? 1 : n==2 ? 2 : n%100>=3 && n%100<=10 ? 3 : n%100>=11 ? 4 : 5','ar','',126,'Arabic','',74,6);
INSERT INTO "pootle_app_language" VALUES('n==1 || n%10==1 ? 0 : 1','mk','',130,'Macedonian','',75,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','zu','',133,'Zulu','',76,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','eu','',135,'Basque','',77,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','et','',139,'Estonian','',78,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','az','',140,'Azerbaijani','',79,2);
INSERT INTO "pootle_app_language" VALUES('0','id','',143,'Indonesian','',80,1);
INSERT INTO "pootle_app_language" VALUES('n > 1','arn','',144,'Mapudungun; Mapuche','',81,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','bn_IN','',145,'Bengali (India)','',82,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','pap','',146,'Papiamento','',83,2);
INSERT INTO "pootle_app_language" VALUES('(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)','ru','',148,'Russian','',84,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','nl','',149,'Dutch; Flemish','',85,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','yo','',152,'Yoruba','',86,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','nn','',153,'Norwegian Nynorsk; Nynorsk, Norwegian','',87,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','nah','',156,'Nahuatl languages','',88,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ne','',157,'Nepali','',89,2);
INSERT INTO "pootle_app_language" VALUES('n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2','csb','',158,'Kashubian','',90,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','wo','',159,'Wolof','',91,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','nap','',160,'Neapolitan','',92,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','es','',161,'Spanish; Castilian','',93,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','rm','',164,'Romansh','',94,2);
INSERT INTO "pootle_app_language" VALUES('0','zh_TW','',165,'Chinese (Taiwan)','←→↔×÷©…—‘’“”「」『』【】《》',95,1);
INSERT INTO "pootle_app_language" VALUES('(n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2);','ro','',168,'Romanian','',96,3);
INSERT INTO "pootle_app_language" VALUES('0','sah','',172,'Yakut','',97,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','jv','',173,'Javanese','',98,2);
INSERT INTO "pootle_app_language" VALUES('n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2','be','',174,'Belarusian','',99,3);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','fr','',175,'French','',100,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','bg','',179,'Bulgarian','',101,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','sv','',181,'Swedish','',102,2);
INSERT INTO "pootle_app_language" VALUES('(n > 1)','wa','',184,'Walloon','',103,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ast','',187,'Asturian; Bable; Leonese; Asturleonese','',104,2);
INSERT INTO "pootle_app_language" VALUES('0','vi','',189,'Vietnamese','',105,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','fy','',192,'Frisian','',106,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','bn','',193,'Bengali','',107,2);
INSERT INTO "pootle_app_language" VALUES('0','bo','',194,'Tibetan','',108,1);
INSERT INTO "pootle_app_language" VALUES('0','fa','',195,'Persian','',109,1);
INSERT INTO "pootle_app_language" VALUES('n > 1','br','',198,'Breton','',110,2);
INSERT INTO "pootle_app_language" VALUES('n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2','bs','',199,'Bosnian','',111,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','mai','',200,'Maithili','',112,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','fi','',201,'Finnish','',113,2);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','hu','',202,'Hungarian','',114,2);
INSERT INTO "pootle_app_language" VALUES('0','ja','',205,'Japanese','',115,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','fo','',208,'Faroese','',116,2);
INSERT INTO "pootle_app_language" VALUES('0','ka','',209,'Georgian','',117,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','so','',210,'Somali','',118,2);
INSERT INTO "pootle_app_language" VALUES('0','kk','',211,'Kazakh','',119,1);
INSERT INTO "pootle_app_language" VALUES('(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)','sr','',212,'Serbian','',120,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','sq','',213,'Albanian','',121,2);
INSERT INTO "pootle_app_language" VALUES('0','ko','',216,'Korean','',122,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','kn','',218,'Kannada','',123,2);
INSERT INTO "pootle_app_language" VALUES('0','km','',221,'Central Khmer','',124,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','or','',223,'Oriya','',125,2);
INSERT INTO "pootle_app_language" VALUES('(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2','sk','',225,'Slovak','',126,3);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','si','',228,'Sinhala; Sinhalese','',127,2);
INSERT INTO "pootle_app_language" VALUES('(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)','pl','',229,'Polish','',128,3);
INSERT INTO "pootle_app_language" VALUES('(n==1) ? 0 : (n==2) ? 1 : (n == 3) ? 2 : 3','kw','',232,'Cornish','',129,4);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','ku','',233,'Kurdish','',130,2);
INSERT INTO "pootle_app_language" VALUES('(n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3)','sl','',236,'Slovenian','',131,4);
INSERT INTO "pootle_app_language" VALUES('0','ky','',237,'Kirghiz; Kyrgyz','',132,1);
INSERT INTO "pootle_app_language" VALUES('(n != 1)','nb','',238,'Bokmål, Norwegian; Norwegian Bokmål','',133,2);
CREATE TABLE "pootle_app_project" ("report_target" varchar(512) NOT NULL, "localfiletype" varchar(50) NOT NULL, "code" varchar(255) NOT NULL UNIQUE, "checkstyle" varchar(50) NOT NULL, "source_language_id" integer NOT NULL, "ignoredfiles" varchar(255) NOT NULL, "directory_id" integer NOT NULL UNIQUE, "treestyle" varchar(20) NOT NULL, "fullname" varchar(255) NOT NULL, "id" integer PRIMARY KEY, "description" text NOT NULL);
INSERT INTO "pootle_app_project" VALUES('','po','terminology','terminology',2,'',6,'auto','Terminology',1,'');
INSERT INTO "pootle_app_project" VALUES('','po','tutorial','standard',2,'',7,'auto','Tutorial',2,'<div dir="ltr" lang="en">Tutorial project where users can play with Pootle and learn more about translation and localisation.<br />For more help on localisation, visit the <a href="http://translate.sourceforge.net/wiki/guide/start">localisation guide</a>.</div>');
CREATE TABLE "pootle_app_translationproject" ("description" text NOT NULL, "real_path" varchar(100) NOT NULL, "pootle_path" varchar(255) NOT NULL UNIQUE, "language_id" integer NOT NULL, "directory_id" integer NOT NULL UNIQUE, "project_id" integer NOT NULL, "id" integer PRIMARY KEY);
INSERT INTO "pootle_app_translationproject" VALUES('','tutorial/templates','/templates/tutorial/',1,8,2,1);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/son','/son/terminology/',3,10,1,2);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ff','/ff/terminology/',5,13,1,3);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/nso','/nso/terminology/',7,16,1,4);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ca','/ca/terminology/',8,18,1,5);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ga','/ga/terminology/',13,25,1,6);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/cs','/cs/terminology/',14,27,1,7);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/gl','/gl/terminology/',15,30,1,8);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/pt','/pt/terminology/',19,35,1,9);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ln','/ln/terminology/',20,38,1,10);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/tr','/tr/terminology/',24,43,1,11);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/uk','/uk/terminology/',25,45,1,12);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/lt','/lt/terminology/',27,49,1,13);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/pa','/pa/terminology/',28,51,1,14);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/sw','/sw/terminology/',29,54,1,15);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/th','/th/terminology/',31,57,1,16);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/is','/is/terminology/',35,63,1,17);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/pt_BR','/pt_BR/terminology/',39,68,1,18);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/de','/de/terminology/',41,72,1,19);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/da','/da/terminology/',43,75,1,20);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/hi','/hi/terminology/',44,78,1,21);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/zh_CN','/zh_CN/terminology/',51,87,1,22);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/zh_HK','/zh_HK/terminology/',57,95,1,23);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ms','/ms/terminology/',60,100,1,24);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/mr','/mr/terminology/',61,103,1,25);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/eo','/eo/terminology/',64,108,1,26);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/af','/af/terminology/',66,112,1,27);
INSERT INTO "pootle_app_translationproject" VALUES('','tutorial/af','/af/tutorial/',66,113,2,28);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ak','/ak/terminology/',69,117,1,29);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/am','/am/terminology/',70,119,1,30);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/it','/it/terminology/',71,122,1,31);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ar','/ar/terminology/',74,127,1,32);
INSERT INTO "pootle_app_translationproject" VALUES('','tutorial/ar','/ar/tutorial/',74,129,2,33);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/mk','/mk/terminology/',75,131,1,34);
INSERT INTO "pootle_app_translationproject" VALUES('','tutorial/zu','/zu/tutorial/',76,134,2,35);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/eu','/eu/terminology/',77,136,1,36);
INSERT INTO "pootle_app_translationproject" VALUES('','tutorial/eu','/eu/tutorial/',77,138,2,37);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/az','/az/terminology/',79,141,1,38);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/pap','/pap/terminology/',83,147,1,39);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/nl','/nl/terminology/',85,150,1,40);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/nn','/nn/terminology/',87,154,1,41);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/es','/es/terminology/',93,162,1,42);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/zh_TW','/zh_TW/terminology/',95,166,1,43);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ro','/ro/terminology/',96,169,1,44);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/fr','/fr/terminology/',100,176,1,45);
INSERT INTO "pootle_app_translationproject" VALUES('','tutorial/fr','/fr/tutorial/',100,178,2,46);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/bg','/bg/terminology/',101,180,1,47);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/sv','/sv/terminology/',102,182,1,48);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/wa','/wa/terminology/',103,185,1,49);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ast','/ast/terminology/',104,188,1,50);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/vi','/vi/terminology/',105,190,1,51);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/fa','/fa/terminology/',109,196,1,52);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/hu','/hu/terminology/',114,203,1,53);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ja','/ja/terminology/',115,206,1,54);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/sq','/sq/terminology/',121,214,1,55);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ko','/ko/terminology/',122,217,1,56);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/kn','/kn/terminology/',123,219,1,57);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/km','/km/terminology/',124,222,1,58);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/or','/or/terminology/',125,224,1,59);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/sk','/sk/terminology/',126,226,1,60);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/pl','/pl/terminology/',128,230,1,61);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/ku','/ku/terminology/',130,234,1,62);
INSERT INTO "pootle_app_translationproject" VALUES('','terminology/nb','/nb/terminology/',133,239,1,63);
CREATE TABLE "pootle_app_pootleprofile" ("id" integer NOT NULL PRIMARY KEY, "user_id" integer NOT NULL UNIQUE, "unit_rows" smallint NOT NULL, "input_height" smallint NOT NULL, "ui_lang" varchar(50) NULL);
INSERT INTO "pootle_app_pootleprofile" VALUES(1,1,9,5,NULL);
INSERT INTO "pootle_app_pootleprofile" VALUES(2,2,9,5,NULL);
INSERT INTO "pootle_app_pootleprofile" VALUES(3,3,9,5,NULL);
CREATE TABLE "pootle_app_pootleprofile_languages" ("id" integer NOT NULL PRIMARY KEY, "pootleprofile_id" integer NOT NULL, "language_id" integer NOT NULL);
CREATE TABLE "pootle_app_pootleprofile_projects" ("id" integer NOT NULL PRIMARY KEY, "pootleprofile_id" integer NOT NULL, "project_id" integer NOT NULL);
CREATE TABLE "pootle_app_pootleprofile_alt_src_langs" ("id" integer NOT NULL PRIMARY KEY, "pootleprofile_id" integer NOT NULL, "language_id" integer NOT NULL);
CREATE TABLE "pootle_app_submission" ("id" integer NOT NULL PRIMARY KEY, "creation_time" datetime NOT NULL, "translation_project_id" integer NOT NULL, "submitter_id" integer NULL, "from_suggestion_id" integer NULL UNIQUE, "unit_id" integer NULL, "field" integer NULL, "type" integer NULL, "old_value" text NOT NULL, "new_value" text NOT NULL);
CREATE TABLE "pootle_tagging_goal" ("id" integer NOT NULL PRIMARY KEY, "name" varchar(100) NOT NULL UNIQUE, "slug" varchar(100) NOT NULL UNIQUE, "description" text NOT NULL, "priority" integer NOT NULL, "project_goal" bool NOT NULL, "directory_id" integer NOT NULL UNIQUE);
CREATE TABLE "pootle_tagging_itemwithgoal" ("id" integer NOT NULL PRIMARY KEY, "object_id" integer NOT NULL, "content_type_id" integer NOT NULL, "tag_id" integer NOT NULL);
CREATE TABLE "pootle_notifications_notice" ("id" integer NOT NULL PRIMARY KEY, "directory_id" integer NOT NULL, "message" text NOT NULL, "added" datetime NULL);
INSERT INTO "pootle_notifications_notice" VALUES(1,1,'New language <a href="/templates/">Templates</a> created.','2014-06-12 14:47:11.514472');
INSERT INTO "pootle_notifications_notice" VALUES(2,1,'New language <a href="/en/">English</a> created.','2014-06-12 14:47:12.099879');
INSERT INTO "pootle_notifications_notice" VALUES(3,1,'New project <a href="/projects/terminology/">Terminology</a> created.','2014-06-12 14:47:12.792848');
INSERT INTO "pootle_notifications_notice" VALUES(4,4,'New project <a href="/templates/tutorial/">Tutorial</a> added to language <a href="/templates/">Templates</a>.','2014-06-12 14:47:16.505051');
INSERT INTO "pootle_notifications_notice" VALUES(5,7,'New language <a href="/templates/tutorial/">Templates</a> added to project <a href="/projects/tutorial/">Tutorial</a>.','2014-06-12 14:47:16.505448');
INSERT INTO "pootle_notifications_notice" VALUES(6,1,'New project <a href="/projects/tutorial/">Tutorial</a> created.','2014-06-12 14:47:16.704753');
INSERT INTO "pootle_notifications_notice" VALUES(7,9,'New project <a href="/son/terminology/">Terminology</a> added to language <a href="/son/">Songhai languages</a>.','2014-06-12 14:47:16.716911');
INSERT INTO "pootle_notifications_notice" VALUES(8,6,'New language <a href="/son/terminology/">Songhai languages</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.717214');
INSERT INTO "pootle_notifications_notice" VALUES(9,1,'New language <a href="/son/">Songhai languages</a> created.','2014-06-12 14:47:16.724317');
INSERT INTO "pootle_notifications_notice" VALUES(10,1,'New language <a href="/gu/">Gujarati</a> created.','2014-06-12 14:47:16.732212');
INSERT INTO "pootle_notifications_notice" VALUES(11,12,'New project <a href="/ff/terminology/">Terminology</a> added to language <a href="/ff/">Fulah</a>.','2014-06-12 14:47:16.743556');
INSERT INTO "pootle_notifications_notice" VALUES(12,6,'New language <a href="/ff/terminology/">Fulah</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.743856');
INSERT INTO "pootle_notifications_notice" VALUES(13,1,'New language <a href="/ff/">Fulah</a> created.','2014-06-12 14:47:16.750485');
INSERT INTO "pootle_notifications_notice" VALUES(14,1,'New language <a href="/nqo/">N''Ko</a> created.','2014-06-12 14:47:16.758667');
INSERT INTO "pootle_notifications_notice" VALUES(15,15,'New project <a href="/nso/terminology/">Terminology</a> added to language <a href="/nso/">Pedi; Sepedi; Northern Sotho</a>.','2014-06-12 14:47:16.770259');
INSERT INTO "pootle_notifications_notice" VALUES(16,6,'New language <a href="/nso/terminology/">Pedi; Sepedi; Northern Sotho</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.770572');
INSERT INTO "pootle_notifications_notice" VALUES(17,1,'New language <a href="/nso/">Pedi; Sepedi; Northern Sotho</a> created.','2014-06-12 14:47:16.777938');
INSERT INTO "pootle_notifications_notice" VALUES(18,17,'New project <a href="/ca/terminology/">Terminology</a> added to language <a href="/ca/">Catalan; Valencian</a>.','2014-06-12 14:47:16.790036');
INSERT INTO "pootle_notifications_notice" VALUES(19,6,'New language <a href="/ca/terminology/">Catalan; Valencian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.790406');
INSERT INTO "pootle_notifications_notice" VALUES(20,1,'New language <a href="/ca/">Catalan; Valencian</a> created.','2014-06-12 14:47:16.799974');
INSERT INTO "pootle_notifications_notice" VALUES(21,1,'New language <a href="/sco/">Scots</a> created.','2014-06-12 14:47:16.808655');
INSERT INTO "pootle_notifications_notice" VALUES(22,1,'New language <a href="/gun/">Gun</a> created.','2014-06-12 14:47:16.817227');
INSERT INTO "pootle_notifications_notice" VALUES(23,1,'New language <a href="/ca@valencia/">Catalan; Valencian</a> created.','2014-06-12 14:47:16.825321');
INSERT INTO "pootle_notifications_notice" VALUES(24,1,'New language <a href="/gd/">Gaelic; Scottish Gaelic</a> created.','2014-06-12 14:47:16.833799');
INSERT INTO "pootle_notifications_notice" VALUES(25,24,'New project <a href="/ga/terminology/">Terminology</a> added to language <a href="/ga/">Irish</a>.','2014-06-12 14:47:16.845334');
INSERT INTO "pootle_notifications_notice" VALUES(26,6,'New language <a href="/ga/terminology/">Irish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.845648');
INSERT INTO "pootle_notifications_notice" VALUES(27,1,'New language <a href="/ga/">Irish</a> created.','2014-06-12 14:47:16.852428');
INSERT INTO "pootle_notifications_notice" VALUES(28,26,'New project <a href="/cs/terminology/">Terminology</a> added to language <a href="/cs/">Czech</a>.','2014-06-12 14:47:16.864471');
INSERT INTO "pootle_notifications_notice" VALUES(29,6,'New language <a href="/cs/terminology/">Czech</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.864785');
INSERT INTO "pootle_notifications_notice" VALUES(30,1,'New language <a href="/cs/">Czech</a> created.','2014-06-12 14:47:16.873640');
INSERT INTO "pootle_notifications_notice" VALUES(31,29,'New project <a href="/gl/terminology/">Terminology</a> added to language <a href="/gl/">Galician</a>.','2014-06-12 14:47:16.885230');
INSERT INTO "pootle_notifications_notice" VALUES(32,6,'New language <a href="/gl/terminology/">Galician</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.885538');
INSERT INTO "pootle_notifications_notice" VALUES(33,1,'New language <a href="/gl/">Galician</a> created.','2014-06-12 14:47:16.892381');
INSERT INTO "pootle_notifications_notice" VALUES(34,1,'New language <a href="/mfe/">Morisyen</a> created.','2014-06-12 14:47:16.900785');
INSERT INTO "pootle_notifications_notice" VALUES(35,1,'New language <a href="/ps/">Pushto; Pashto</a> created.','2014-06-12 14:47:16.909202');
INSERT INTO "pootle_notifications_notice" VALUES(36,1,'New language <a href="/lb/">Luxembourgish; Letzeburgesch</a> created.','2014-06-12 14:47:16.917590');
INSERT INTO "pootle_notifications_notice" VALUES(37,34,'New project <a href="/pt/terminology/">Terminology</a> added to language <a href="/pt/">Portuguese</a>.','2014-06-12 14:47:16.929433');
INSERT INTO "pootle_notifications_notice" VALUES(38,6,'New language <a href="/pt/terminology/">Portuguese</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.929835');
INSERT INTO "pootle_notifications_notice" VALUES(39,1,'New language <a href="/pt/">Portuguese</a> created.','2014-06-12 14:47:16.938804');
INSERT INTO "pootle_notifications_notice" VALUES(40,37,'New project <a href="/ln/terminology/">Terminology</a> added to language <a href="/ln/">Lingala</a>.','2014-06-12 14:47:16.950236');
INSERT INTO "pootle_notifications_notice" VALUES(41,6,'New language <a href="/ln/terminology/">Lingala</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.950539');
INSERT INTO "pootle_notifications_notice" VALUES(42,1,'New language <a href="/ln/">Lingala</a> created.','2014-06-12 14:47:16.956855');
INSERT INTO "pootle_notifications_notice" VALUES(43,1,'New language <a href="/lo/">Lao</a> created.','2014-06-12 14:47:16.965230');
INSERT INTO "pootle_notifications_notice" VALUES(44,1,'New language <a href="/tt/">Tatar</a> created.','2014-06-12 14:47:16.973571');
INSERT INTO "pootle_notifications_notice" VALUES(45,1,'New language <a href="/pms/">Piemontese</a> created.','2014-06-12 14:47:16.982004');
INSERT INTO "pootle_notifications_notice" VALUES(46,42,'New project <a href="/tr/terminology/">Terminology</a> added to language <a href="/tr/">Turkish</a>.','2014-06-12 14:47:16.994372');
INSERT INTO "pootle_notifications_notice" VALUES(47,6,'New language <a href="/tr/terminology/">Turkish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:16.994743');
INSERT INTO "pootle_notifications_notice" VALUES(48,1,'New language <a href="/tr/">Turkish</a> created.','2014-06-12 14:47:17.001623');
INSERT INTO "pootle_notifications_notice" VALUES(49,44,'New project <a href="/uk/terminology/">Terminology</a> added to language <a href="/uk/">Ukrainian</a>.','2014-06-12 14:47:17.014141');
INSERT INTO "pootle_notifications_notice" VALUES(50,6,'New language <a href="/uk/terminology/">Ukrainian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.014465');
INSERT INTO "pootle_notifications_notice" VALUES(51,1,'New language <a href="/uk/">Ukrainian</a> created.','2014-06-12 14:47:17.023678');
INSERT INTO "pootle_notifications_notice" VALUES(52,1,'New language <a href="/lv/">Latvian</a> created.','2014-06-12 14:47:17.032531');
INSERT INTO "pootle_notifications_notice" VALUES(53,48,'New project <a href="/lt/terminology/">Terminology</a> added to language <a href="/lt/">Lithuanian</a>.','2014-06-12 14:47:17.044280');
INSERT INTO "pootle_notifications_notice" VALUES(54,6,'New language <a href="/lt/terminology/">Lithuanian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.044649');
INSERT INTO "pootle_notifications_notice" VALUES(55,1,'New language <a href="/lt/">Lithuanian</a> created.','2014-06-12 14:47:17.051342');
INSERT INTO "pootle_notifications_notice" VALUES(56,50,'New project <a href="/pa/terminology/">Terminology</a> added to language <a href="/pa/">Panjabi; Punjabi</a>.','2014-06-12 14:47:17.065401');
INSERT INTO "pootle_notifications_notice" VALUES(57,6,'New language <a href="/pa/terminology/">Panjabi; Punjabi</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.065705');
INSERT INTO "pootle_notifications_notice" VALUES(58,1,'New language <a href="/pa/">Panjabi; Punjabi</a> created.','2014-06-12 14:47:17.075690');
INSERT INTO "pootle_notifications_notice" VALUES(59,53,'New project <a href="/sw/terminology/">Terminology</a> added to language <a href="/sw/">Swahili</a>.','2014-06-12 14:47:17.087566');
INSERT INTO "pootle_notifications_notice" VALUES(60,6,'New language <a href="/sw/terminology/">Swahili</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.087877');
INSERT INTO "pootle_notifications_notice" VALUES(61,1,'New language <a href="/sw/">Swahili</a> created.','2014-06-12 14:47:17.094648');
INSERT INTO "pootle_notifications_notice" VALUES(62,1,'New language <a href="/tg/">Tajik</a> created.','2014-06-12 14:47:17.103471');
INSERT INTO "pootle_notifications_notice" VALUES(63,56,'New project <a href="/th/terminology/">Terminology</a> added to language <a href="/th/">Thai</a>.','2014-06-12 14:47:17.115287');
INSERT INTO "pootle_notifications_notice" VALUES(64,6,'New language <a href="/th/terminology/">Thai</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.115592');
INSERT INTO "pootle_notifications_notice" VALUES(65,1,'New language <a href="/th/">Thai</a> created.','2014-06-12 14:47:17.124586');
INSERT INTO "pootle_notifications_notice" VALUES(66,1,'New language <a href="/ti/">Tigrinya</a> created.','2014-06-12 14:47:17.133247');
INSERT INTO "pootle_notifications_notice" VALUES(67,1,'New language <a href="/su/">Sundanese</a> created.','2014-06-12 14:47:17.142061');
INSERT INTO "pootle_notifications_notice" VALUES(68,1,'New language <a href="/te/">Telugu</a> created.','2014-06-12 14:47:17.150905');
INSERT INTO "pootle_notifications_notice" VALUES(69,62,'New project <a href="/is/terminology/">Terminology</a> added to language <a href="/is/">Icelandic</a>.','2014-06-12 14:47:17.162628');
INSERT INTO "pootle_notifications_notice" VALUES(70,6,'New language <a href="/is/terminology/">Icelandic</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.162932');
INSERT INTO "pootle_notifications_notice" VALUES(71,1,'New language <a href="/is/">Icelandic</a> created.','2014-06-12 14:47:17.169797');
INSERT INTO "pootle_notifications_notice" VALUES(72,1,'New language <a href="/en_GB/">English (United Kingdom)</a> created.','2014-06-12 14:47:17.178517');
INSERT INTO "pootle_notifications_notice" VALUES(73,1,'New language <a href="/ta/">Tamil</a> created.','2014-06-12 14:47:17.187368');
INSERT INTO "pootle_notifications_notice" VALUES(74,1,'New language <a href="/hy/">Armenian</a> created.','2014-06-12 14:47:17.198591');
INSERT INTO "pootle_notifications_notice" VALUES(75,67,'New project <a href="/pt_BR/terminology/">Terminology</a> added to language <a href="/pt_BR/">Portuguese (Brazil)</a>.','2014-06-12 14:47:17.210629');
INSERT INTO "pootle_notifications_notice" VALUES(76,6,'New language <a href="/pt_BR/terminology/">Portuguese (Brazil)</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.210933');
INSERT INTO "pootle_notifications_notice" VALUES(77,1,'New language <a href="/pt_BR/">Portuguese (Brazil)</a> created.','2014-06-12 14:47:17.219651');
INSERT INTO "pootle_notifications_notice" VALUES(78,1,'New language <a href="/hr/">Croatian</a> created.','2014-06-12 14:47:17.228555');
INSERT INTO "pootle_notifications_notice" VALUES(79,71,'New project <a href="/de/terminology/">Terminology</a> added to language <a href="/de/">German</a>.','2014-06-12 14:47:17.240365');
INSERT INTO "pootle_notifications_notice" VALUES(80,6,'New language <a href="/de/terminology/">German</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.240667');
INSERT INTO "pootle_notifications_notice" VALUES(81,1,'New language <a href="/de/">German</a> created.','2014-06-12 14:47:17.247344');
INSERT INTO "pootle_notifications_notice" VALUES(82,1,'New language <a href="/ht/">Haitian; Haitian Creole</a> created.','2014-06-12 14:47:17.256363');
INSERT INTO "pootle_notifications_notice" VALUES(83,74,'New project <a href="/da/terminology/">Terminology</a> added to language <a href="/da/">Danish</a>.','2014-06-12 14:47:17.268382');
INSERT INTO "pootle_notifications_notice" VALUES(84,6,'New language <a href="/da/terminology/">Danish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.268689');
INSERT INTO "pootle_notifications_notice" VALUES(85,1,'New language <a href="/da/">Danish</a> created.','2014-06-12 14:47:17.278418');
INSERT INTO "pootle_notifications_notice" VALUES(86,77,'New project <a href="/hi/terminology/">Terminology</a> added to language <a href="/hi/">Hindi</a>.','2014-06-12 14:47:17.290891');
INSERT INTO "pootle_notifications_notice" VALUES(87,6,'New language <a href="/hi/terminology/">Hindi</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.291270');
INSERT INTO "pootle_notifications_notice" VALUES(88,1,'New language <a href="/hi/">Hindi</a> created.','2014-06-12 14:47:17.300603');
INSERT INTO "pootle_notifications_notice" VALUES(89,1,'New language <a href="/dz/">Dzongkha</a> created.','2014-06-12 14:47:17.309946');
INSERT INTO "pootle_notifications_notice" VALUES(90,1,'New language <a href="/st/">Sotho, Southern</a> created.','2014-06-12 14:47:17.319131');
INSERT INTO "pootle_notifications_notice" VALUES(91,1,'New language <a href="/ha/">Hausa</a> created.','2014-06-12 14:47:17.328144');
INSERT INTO "pootle_notifications_notice" VALUES(92,1,'New language <a href="/he/">Hebrew</a> created.','2014-06-12 14:47:17.337149');
INSERT INTO "pootle_notifications_notice" VALUES(93,1,'New language <a href="/mg/">Malagasy</a> created.','2014-06-12 14:47:17.346084');
INSERT INTO "pootle_notifications_notice" VALUES(94,1,'New language <a href="/fur/">Friulian</a> created.','2014-06-12 14:47:17.355248');
INSERT INTO "pootle_notifications_notice" VALUES(95,86,'New project <a href="/zh_CN/terminology/">Terminology</a> added to language <a href="/zh_CN/">Chinese (China)</a>.','2014-06-12 14:47:17.369885');
INSERT INTO "pootle_notifications_notice" VALUES(96,6,'New language <a href="/zh_CN/terminology/">Chinese (China)</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.370240');
INSERT INTO "pootle_notifications_notice" VALUES(97,1,'New language <a href="/zh_CN/">Chinese (China)</a> created.','2014-06-12 14:47:17.380059');
INSERT INTO "pootle_notifications_notice" VALUES(98,1,'New language <a href="/ml/">Malayalam</a> created.','2014-06-12 14:47:17.389439');
INSERT INTO "pootle_notifications_notice" VALUES(99,1,'New language <a href="/mn/">Mongolian</a> created.','2014-06-12 14:47:17.398150');
INSERT INTO "pootle_notifications_notice" VALUES(100,1,'New language <a href="/mi/">Maori</a> created.','2014-06-12 14:47:17.406914');
INSERT INTO "pootle_notifications_notice" VALUES(101,1,'New language <a href="/cy/">Welsh</a> created.','2014-06-12 14:47:17.415920');
INSERT INTO "pootle_notifications_notice" VALUES(102,1,'New language <a href="/en_ZA/">English (South Africa)</a> created.','2014-06-12 14:47:17.425021');
INSERT INTO "pootle_notifications_notice" VALUES(103,94,'New project <a href="/zh_HK/terminology/">Terminology</a> added to language <a href="/zh_HK/">Chinese (Hong Kong)</a>.','2014-06-12 14:47:17.437034');
INSERT INTO "pootle_notifications_notice" VALUES(104,6,'New language <a href="/zh_HK/terminology/">Chinese (Hong Kong)</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.437337');
INSERT INTO "pootle_notifications_notice" VALUES(105,1,'New language <a href="/zh_HK/">Chinese (Hong Kong)</a> created.','2014-06-12 14:47:17.446447');
INSERT INTO "pootle_notifications_notice" VALUES(106,1,'New language <a href="/mt/">Maltese</a> created.','2014-06-12 14:47:17.455227');
INSERT INTO "pootle_notifications_notice" VALUES(107,1,'New language <a href="/fil/">Filipino; Pilipino</a> created.','2014-06-12 14:47:17.464262');
INSERT INTO "pootle_notifications_notice" VALUES(108,99,'New project <a href="/ms/terminology/">Terminology</a> added to language <a href="/ms/">Malay</a>.','2014-06-12 14:47:17.476464');
INSERT INTO "pootle_notifications_notice" VALUES(109,6,'New language <a href="/ms/terminology/">Malay</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.476767');
INSERT INTO "pootle_notifications_notice" VALUES(110,1,'New language <a href="/ms/">Malay</a> created.','2014-06-12 14:47:17.485695');
INSERT INTO "pootle_notifications_notice" VALUES(111,102,'New project <a href="/mr/terminology/">Terminology</a> added to language <a href="/mr/">Marathi</a>.','2014-06-12 14:47:17.498096');
INSERT INTO "pootle_notifications_notice" VALUES(112,6,'New language <a href="/mr/terminology/">Marathi</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.498470');
INSERT INTO "pootle_notifications_notice" VALUES(113,1,'New language <a href="/mr/">Marathi</a> created.','2014-06-12 14:47:17.507411');
INSERT INTO "pootle_notifications_notice" VALUES(114,1,'New language <a href="/ug/">Uighur; Uyghur</a> created.','2014-06-12 14:47:17.516713');
INSERT INTO "pootle_notifications_notice" VALUES(115,1,'New language <a href="/el/">Greek, Modern (1453-)</a> created.','2014-06-12 14:47:17.528336');
INSERT INTO "pootle_notifications_notice" VALUES(116,107,'New project <a href="/eo/terminology/">Terminology</a> added to language <a href="/eo/">Esperanto</a>.','2014-06-12 14:47:17.540352');
INSERT INTO "pootle_notifications_notice" VALUES(117,6,'New language <a href="/eo/terminology/">Esperanto</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.540662');
INSERT INTO "pootle_notifications_notice" VALUES(118,1,'New language <a href="/eo/">Esperanto</a> created.','2014-06-12 14:47:17.552052');
INSERT INTO "pootle_notifications_notice" VALUES(119,1,'New language <a href="/tk/">Turkmen</a> created.','2014-06-12 14:47:17.562944');
INSERT INTO "pootle_notifications_notice" VALUES(120,111,'New project <a href="/af/terminology/">Terminology</a> added to language <a href="/af/">Afrikaans</a>.','2014-06-12 14:47:17.581870');
INSERT INTO "pootle_notifications_notice" VALUES(121,6,'New language <a href="/af/terminology/">Afrikaans</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.582193');
INSERT INTO "pootle_notifications_notice" VALUES(122,111,'New project <a href="/af/tutorial/">Tutorial</a> added to language <a href="/af/">Afrikaans</a>.','2014-06-12 14:47:17.591950');
INSERT INTO "pootle_notifications_notice" VALUES(123,7,'New language <a href="/af/tutorial/">Afrikaans</a> added to project <a href="/projects/tutorial/">Tutorial</a>.','2014-06-12 14:47:17.592252');
INSERT INTO "pootle_notifications_notice" VALUES(124,1,'New language <a href="/af/">Afrikaans</a> created.','2014-06-12 14:47:17.597086');
INSERT INTO "pootle_notifications_notice" VALUES(125,1,'New language <a href="/ve/">Venda</a> created.','2014-06-12 14:47:17.606535');
INSERT INTO "pootle_notifications_notice" VALUES(126,1,'New language <a href="/oc/">Occitan (post 1500)</a> created.','2014-06-12 14:47:17.615836');
INSERT INTO "pootle_notifications_notice" VALUES(127,116,'New project <a href="/ak/terminology/">Terminology</a> added to language <a href="/ak/">Akan</a>.','2014-06-12 14:47:17.628022');
INSERT INTO "pootle_notifications_notice" VALUES(128,6,'New language <a href="/ak/terminology/">Akan</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.628325');
INSERT INTO "pootle_notifications_notice" VALUES(129,1,'New language <a href="/ak/">Akan</a> created.','2014-06-12 14:47:17.635371');
INSERT INTO "pootle_notifications_notice" VALUES(130,118,'New project <a href="/am/terminology/">Terminology</a> added to language <a href="/am/">Amharic</a>.','2014-06-12 14:47:17.652602');
INSERT INTO "pootle_notifications_notice" VALUES(131,6,'New language <a href="/am/terminology/">Amharic</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.652930');
INSERT INTO "pootle_notifications_notice" VALUES(132,1,'New language <a href="/am/">Amharic</a> created.','2014-06-12 14:47:17.663566');
INSERT INTO "pootle_notifications_notice" VALUES(133,121,'New project <a href="/it/terminology/">Terminology</a> added to language <a href="/it/">Italian</a>.','2014-06-12 14:47:17.679692');
INSERT INTO "pootle_notifications_notice" VALUES(134,6,'New language <a href="/it/terminology/">Italian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.680013');
INSERT INTO "pootle_notifications_notice" VALUES(135,1,'New language <a href="/it/">Italian</a> created.','2014-06-12 14:47:17.689136');
INSERT INTO "pootle_notifications_notice" VALUES(136,1,'New language <a href="/an/">Aragonese</a> created.','2014-06-12 14:47:17.698405');
INSERT INTO "pootle_notifications_notice" VALUES(137,1,'New language <a href="/ia/">Interlingua (International Auxiliary Language Association)</a> created.','2014-06-12 14:47:17.707745');
INSERT INTO "pootle_notifications_notice" VALUES(138,126,'New project <a href="/ar/terminology/">Terminology</a> added to language <a href="/ar/">Arabic</a>.','2014-06-12 14:47:17.720769');
INSERT INTO "pootle_notifications_notice" VALUES(139,6,'New language <a href="/ar/terminology/">Arabic</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.721235');
INSERT INTO "pootle_notifications_notice" VALUES(140,126,'New project <a href="/ar/tutorial/">Tutorial</a> added to language <a href="/ar/">Arabic</a>.','2014-06-12 14:47:17.739871');
INSERT INTO "pootle_notifications_notice" VALUES(141,7,'New language <a href="/ar/tutorial/">Arabic</a> added to project <a href="/projects/tutorial/">Tutorial</a>.','2014-06-12 14:47:17.740194');
INSERT INTO "pootle_notifications_notice" VALUES(142,1,'New language <a href="/ar/">Arabic</a> created.','2014-06-12 14:47:17.744931');
INSERT INTO "pootle_notifications_notice" VALUES(143,130,'New project <a href="/mk/terminology/">Terminology</a> added to language <a href="/mk/">Macedonian</a>.','2014-06-12 14:47:17.759916');
INSERT INTO "pootle_notifications_notice" VALUES(144,6,'New language <a href="/mk/terminology/">Macedonian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.760237');
INSERT INTO "pootle_notifications_notice" VALUES(145,1,'New language <a href="/mk/">Macedonian</a> created.','2014-06-12 14:47:17.769257');
INSERT INTO "pootle_notifications_notice" VALUES(146,133,'New project <a href="/zu/tutorial/">Tutorial</a> added to language <a href="/zu/">Zulu</a>.','2014-06-12 14:47:17.785655');
INSERT INTO "pootle_notifications_notice" VALUES(147,7,'New language <a href="/zu/tutorial/">Zulu</a> added to project <a href="/projects/tutorial/">Tutorial</a>.','2014-06-12 14:47:17.785979');
INSERT INTO "pootle_notifications_notice" VALUES(148,1,'New language <a href="/zu/">Zulu</a> created.','2014-06-12 14:47:17.790819');
INSERT INTO "pootle_notifications_notice" VALUES(149,135,'New project <a href="/eu/terminology/">Terminology</a> added to language <a href="/eu/">Basque</a>.','2014-06-12 14:47:17.806404');
INSERT INTO "pootle_notifications_notice" VALUES(150,6,'New language <a href="/eu/terminology/">Basque</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.806779');
INSERT INTO "pootle_notifications_notice" VALUES(151,135,'New project <a href="/eu/tutorial/">Tutorial</a> added to language <a href="/eu/">Basque</a>.','2014-06-12 14:47:17.822475');
INSERT INTO "pootle_notifications_notice" VALUES(152,7,'New language <a href="/eu/tutorial/">Basque</a> added to project <a href="/projects/tutorial/">Tutorial</a>.','2014-06-12 14:47:17.822927');
INSERT INTO "pootle_notifications_notice" VALUES(153,1,'New language <a href="/eu/">Basque</a> created.','2014-06-12 14:47:17.829971');
INSERT INTO "pootle_notifications_notice" VALUES(154,1,'New language <a href="/et/">Estonian</a> created.','2014-06-12 14:47:17.845156');
INSERT INTO "pootle_notifications_notice" VALUES(155,140,'New project <a href="/az/terminology/">Terminology</a> added to language <a href="/az/">Azerbaijani</a>.','2014-06-12 14:47:17.864703');
INSERT INTO "pootle_notifications_notice" VALUES(156,6,'New language <a href="/az/terminology/">Azerbaijani</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.865189');
INSERT INTO "pootle_notifications_notice" VALUES(157,1,'New language <a href="/az/">Azerbaijani</a> created.','2014-06-12 14:47:17.879083');
INSERT INTO "pootle_notifications_notice" VALUES(158,1,'New language <a href="/id/">Indonesian</a> created.','2014-06-12 14:47:17.893616');
INSERT INTO "pootle_notifications_notice" VALUES(159,1,'New language <a href="/arn/">Mapudungun; Mapuche</a> created.','2014-06-12 14:47:17.905511');
INSERT INTO "pootle_notifications_notice" VALUES(160,1,'New language <a href="/bn_IN/">Bengali (India)</a> created.','2014-06-12 14:47:17.917614');
INSERT INTO "pootle_notifications_notice" VALUES(161,146,'New project <a href="/pap/terminology/">Terminology</a> added to language <a href="/pap/">Papiamento</a>.','2014-06-12 14:47:17.930026');
INSERT INTO "pootle_notifications_notice" VALUES(162,6,'New language <a href="/pap/terminology/">Papiamento</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.930331');
INSERT INTO "pootle_notifications_notice" VALUES(163,1,'New language <a href="/pap/">Papiamento</a> created.','2014-06-12 14:47:17.937111');
INSERT INTO "pootle_notifications_notice" VALUES(164,1,'New language <a href="/ru/">Russian</a> created.','2014-06-12 14:47:17.946849');
INSERT INTO "pootle_notifications_notice" VALUES(165,149,'New project <a href="/nl/terminology/">Terminology</a> added to language <a href="/nl/">Dutch; Flemish</a>.','2014-06-12 14:47:17.959841');
INSERT INTO "pootle_notifications_notice" VALUES(166,6,'New language <a href="/nl/terminology/">Dutch; Flemish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.960151');
INSERT INTO "pootle_notifications_notice" VALUES(167,1,'New language <a href="/nl/">Dutch; Flemish</a> created.','2014-06-12 14:47:17.968653');
INSERT INTO "pootle_notifications_notice" VALUES(168,1,'New language <a href="/yo/">Yoruba</a> created.','2014-06-12 14:47:17.978432');
INSERT INTO "pootle_notifications_notice" VALUES(169,153,'New project <a href="/nn/terminology/">Terminology</a> added to language <a href="/nn/">Norwegian Nynorsk; Nynorsk, Norwegian</a>.','2014-06-12 14:47:17.991447');
INSERT INTO "pootle_notifications_notice" VALUES(170,6,'New language <a href="/nn/terminology/">Norwegian Nynorsk; Nynorsk, Norwegian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:17.991880');
INSERT INTO "pootle_notifications_notice" VALUES(171,1,'New language <a href="/nn/">Norwegian Nynorsk; Nynorsk, Norwegian</a> created.','2014-06-12 14:47:18.004573');
INSERT INTO "pootle_notifications_notice" VALUES(172,1,'New language <a href="/nah/">Nahuatl languages</a> created.','2014-06-12 14:47:18.019534');
INSERT INTO "pootle_notifications_notice" VALUES(173,1,'New language <a href="/ne/">Nepali</a> created.','2014-06-12 14:47:18.038550');
INSERT INTO "pootle_notifications_notice" VALUES(174,1,'New language <a href="/csb/">Kashubian</a> created.','2014-06-12 14:47:18.053175');
INSERT INTO "pootle_notifications_notice" VALUES(175,1,'New language <a href="/wo/">Wolof</a> created.','2014-06-12 14:47:18.066386');
INSERT INTO "pootle_notifications_notice" VALUES(176,1,'New language <a href="/nap/">Neapolitan</a> created.','2014-06-12 14:47:18.076514');
INSERT INTO "pootle_notifications_notice" VALUES(177,161,'New project <a href="/es/terminology/">Terminology</a> added to language <a href="/es/">Spanish; Castilian</a>.','2014-06-12 14:47:18.093584');
INSERT INTO "pootle_notifications_notice" VALUES(178,6,'New language <a href="/es/terminology/">Spanish; Castilian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.093904');
INSERT INTO "pootle_notifications_notice" VALUES(179,1,'New language <a href="/es/">Spanish; Castilian</a> created.','2014-06-12 14:47:18.103057');
INSERT INTO "pootle_notifications_notice" VALUES(180,1,'New language <a href="/rm/">Romansh</a> created.','2014-06-12 14:47:18.112768');
INSERT INTO "pootle_notifications_notice" VALUES(181,165,'New project <a href="/zh_TW/terminology/">Terminology</a> added to language <a href="/zh_TW/">Chinese (Taiwan)</a>.','2014-06-12 14:47:18.126895');
INSERT INTO "pootle_notifications_notice" VALUES(182,6,'New language <a href="/zh_TW/terminology/">Chinese (Taiwan)</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.127278');
INSERT INTO "pootle_notifications_notice" VALUES(183,1,'New language <a href="/zh_TW/">Chinese (Taiwan)</a> created.','2014-06-12 14:47:18.136241');
INSERT INTO "pootle_notifications_notice" VALUES(184,168,'New project <a href="/ro/terminology/">Terminology</a> added to language <a href="/ro/">Romanian</a>.','2014-06-12 14:47:18.156922');
INSERT INTO "pootle_notifications_notice" VALUES(185,6,'New language <a href="/ro/terminology/">Romanian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.157358');
INSERT INTO "pootle_notifications_notice" VALUES(186,1,'New language <a href="/ro/">Romanian</a> created.','2014-06-12 14:47:18.174541');
INSERT INTO "pootle_notifications_notice" VALUES(187,1,'New language <a href="/sah/">Yakut</a> created.','2014-06-12 14:47:18.185954');
INSERT INTO "pootle_notifications_notice" VALUES(188,1,'New language <a href="/jv/">Javanese</a> created.','2014-06-12 14:47:18.195705');
INSERT INTO "pootle_notifications_notice" VALUES(189,1,'New language <a href="/be/">Belarusian</a> created.','2014-06-12 14:47:18.205320');
INSERT INTO "pootle_notifications_notice" VALUES(190,175,'New project <a href="/fr/terminology/">Terminology</a> added to language <a href="/fr/">French</a>.','2014-06-12 14:47:18.218547');
INSERT INTO "pootle_notifications_notice" VALUES(191,6,'New language <a href="/fr/terminology/">French</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.218853');
INSERT INTO "pootle_notifications_notice" VALUES(192,175,'New project <a href="/fr/tutorial/">Tutorial</a> added to language <a href="/fr/">French</a>.','2014-06-12 14:47:18.230377');
INSERT INTO "pootle_notifications_notice" VALUES(193,7,'New language <a href="/fr/tutorial/">French</a> added to project <a href="/projects/tutorial/">Tutorial</a>.','2014-06-12 14:47:18.230683');
INSERT INTO "pootle_notifications_notice" VALUES(194,1,'New language <a href="/fr/">French</a> created.','2014-06-12 14:47:18.235271');
INSERT INTO "pootle_notifications_notice" VALUES(195,179,'New project <a href="/bg/terminology/">Terminology</a> added to language <a href="/bg/">Bulgarian</a>.','2014-06-12 14:47:18.248083');
INSERT INTO "pootle_notifications_notice" VALUES(196,6,'New language <a href="/bg/terminology/">Bulgarian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.248394');
INSERT INTO "pootle_notifications_notice" VALUES(197,1,'New language <a href="/bg/">Bulgarian</a> created.','2014-06-12 14:47:18.254672');
INSERT INTO "pootle_notifications_notice" VALUES(198,181,'New project <a href="/sv/terminology/">Terminology</a> added to language <a href="/sv/">Swedish</a>.','2014-06-12 14:47:18.267693');
INSERT INTO "pootle_notifications_notice" VALUES(199,6,'New language <a href="/sv/terminology/">Swedish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.268003');
INSERT INTO "pootle_notifications_notice" VALUES(200,1,'New language <a href="/sv/">Swedish</a> created.','2014-06-12 14:47:18.276525');
INSERT INTO "pootle_notifications_notice" VALUES(201,184,'New project <a href="/wa/terminology/">Terminology</a> added to language <a href="/wa/">Walloon</a>.','2014-06-12 14:47:18.295564');
INSERT INTO "pootle_notifications_notice" VALUES(202,6,'New language <a href="/wa/terminology/">Walloon</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.296016');
INSERT INTO "pootle_notifications_notice" VALUES(203,1,'New language <a href="/wa/">Walloon</a> created.','2014-06-12 14:47:18.309333');
INSERT INTO "pootle_notifications_notice" VALUES(204,187,'New project <a href="/ast/terminology/">Terminology</a> added to language <a href="/ast/">Asturian; Bable; Leonese; Asturleonese</a>.','2014-06-12 14:47:18.326807');
INSERT INTO "pootle_notifications_notice" VALUES(205,6,'New language <a href="/ast/terminology/">Asturian; Bable; Leonese; Asturleonese</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.327257');
INSERT INTO "pootle_notifications_notice" VALUES(206,1,'New language <a href="/ast/">Asturian; Bable; Leonese; Asturleonese</a> created.','2014-06-12 14:47:18.335319');
INSERT INTO "pootle_notifications_notice" VALUES(207,189,'New project <a href="/vi/terminology/">Terminology</a> added to language <a href="/vi/">Vietnamese</a>.','2014-06-12 14:47:18.348690');
INSERT INTO "pootle_notifications_notice" VALUES(208,6,'New language <a href="/vi/terminology/">Vietnamese</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.348997');
INSERT INTO "pootle_notifications_notice" VALUES(209,1,'New language <a href="/vi/">Vietnamese</a> created.','2014-06-12 14:47:18.358293');
INSERT INTO "pootle_notifications_notice" VALUES(210,1,'New language <a href="/fy/">Frisian</a> created.','2014-06-12 14:47:18.370914');
INSERT INTO "pootle_notifications_notice" VALUES(211,1,'New language <a href="/bn/">Bengali</a> created.','2014-06-12 14:47:18.381130');
INSERT INTO "pootle_notifications_notice" VALUES(212,1,'New language <a href="/bo/">Tibetan</a> created.','2014-06-12 14:47:18.391571');
INSERT INTO "pootle_notifications_notice" VALUES(213,195,'New project <a href="/fa/terminology/">Terminology</a> added to language <a href="/fa/">Persian</a>.','2014-06-12 14:47:18.404933');
INSERT INTO "pootle_notifications_notice" VALUES(214,6,'New language <a href="/fa/terminology/">Persian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.405243');
INSERT INTO "pootle_notifications_notice" VALUES(215,1,'New language <a href="/fa/">Persian</a> created.','2014-06-12 14:47:18.413897');
INSERT INTO "pootle_notifications_notice" VALUES(216,1,'New language <a href="/br/">Breton</a> created.','2014-06-12 14:47:18.426582');
INSERT INTO "pootle_notifications_notice" VALUES(217,1,'New language <a href="/bs/">Bosnian</a> created.','2014-06-12 14:47:18.441205');
INSERT INTO "pootle_notifications_notice" VALUES(218,1,'New language <a href="/mai/">Maithili</a> created.','2014-06-12 14:47:18.451505');
INSERT INTO "pootle_notifications_notice" VALUES(219,1,'New language <a href="/fi/">Finnish</a> created.','2014-06-12 14:47:18.461911');
INSERT INTO "pootle_notifications_notice" VALUES(220,202,'New project <a href="/hu/terminology/">Terminology</a> added to language <a href="/hu/">Hungarian</a>.','2014-06-12 14:47:18.475481');
INSERT INTO "pootle_notifications_notice" VALUES(221,6,'New language <a href="/hu/terminology/">Hungarian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.475792');
INSERT INTO "pootle_notifications_notice" VALUES(222,1,'New language <a href="/hu/">Hungarian</a> created.','2014-06-12 14:47:18.484777');
INSERT INTO "pootle_notifications_notice" VALUES(223,205,'New project <a href="/ja/terminology/">Terminology</a> added to language <a href="/ja/">Japanese</a>.','2014-06-12 14:47:18.500496');
INSERT INTO "pootle_notifications_notice" VALUES(224,6,'New language <a href="/ja/terminology/">Japanese</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.500813');
INSERT INTO "pootle_notifications_notice" VALUES(225,1,'New language <a href="/ja/">Japanese</a> created.','2014-06-12 14:47:18.509569');
INSERT INTO "pootle_notifications_notice" VALUES(226,1,'New language <a href="/fo/">Faroese</a> created.','2014-06-12 14:47:18.519588');
INSERT INTO "pootle_notifications_notice" VALUES(227,1,'New language <a href="/ka/">Georgian</a> created.','2014-06-12 14:47:18.530005');
INSERT INTO "pootle_notifications_notice" VALUES(228,1,'New language <a href="/so/">Somali</a> created.','2014-06-12 14:47:18.540859');
INSERT INTO "pootle_notifications_notice" VALUES(229,1,'New language <a href="/kk/">Kazakh</a> created.','2014-06-12 14:47:18.556966');
INSERT INTO "pootle_notifications_notice" VALUES(230,1,'New language <a href="/sr/">Serbian</a> created.','2014-06-12 14:47:18.572628');
INSERT INTO "pootle_notifications_notice" VALUES(231,213,'New project <a href="/sq/terminology/">Terminology</a> added to language <a href="/sq/">Albanian</a>.','2014-06-12 14:47:18.591820');
INSERT INTO "pootle_notifications_notice" VALUES(232,6,'New language <a href="/sq/terminology/">Albanian</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.592234');
INSERT INTO "pootle_notifications_notice" VALUES(233,1,'New language <a href="/sq/">Albanian</a> created.','2014-06-12 14:47:18.604626');
INSERT INTO "pootle_notifications_notice" VALUES(234,216,'New project <a href="/ko/terminology/">Terminology</a> added to language <a href="/ko/">Korean</a>.','2014-06-12 14:47:18.625821');
INSERT INTO "pootle_notifications_notice" VALUES(235,6,'New language <a href="/ko/terminology/">Korean</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.626265');
INSERT INTO "pootle_notifications_notice" VALUES(236,1,'New language <a href="/ko/">Korean</a> created.','2014-06-12 14:47:18.637224');
INSERT INTO "pootle_notifications_notice" VALUES(237,218,'New project <a href="/kn/terminology/">Terminology</a> added to language <a href="/kn/">Kannada</a>.','2014-06-12 14:47:18.651608');
INSERT INTO "pootle_notifications_notice" VALUES(238,6,'New language <a href="/kn/terminology/">Kannada</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.652037');
INSERT INTO "pootle_notifications_notice" VALUES(239,1,'New language <a href="/kn/">Kannada</a> created.','2014-06-12 14:47:18.664382');
INSERT INTO "pootle_notifications_notice" VALUES(240,221,'New project <a href="/km/terminology/">Terminology</a> added to language <a href="/km/">Central Khmer</a>.','2014-06-12 14:47:18.680806');
INSERT INTO "pootle_notifications_notice" VALUES(241,6,'New language <a href="/km/terminology/">Central Khmer</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.681120');
INSERT INTO "pootle_notifications_notice" VALUES(242,1,'New language <a href="/km/">Central Khmer</a> created.','2014-06-12 14:47:18.687777');
INSERT INTO "pootle_notifications_notice" VALUES(243,223,'New project <a href="/or/terminology/">Terminology</a> added to language <a href="/or/">Oriya</a>.','2014-06-12 14:47:18.702136');
INSERT INTO "pootle_notifications_notice" VALUES(244,6,'New language <a href="/or/terminology/">Oriya</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.702455');
INSERT INTO "pootle_notifications_notice" VALUES(245,1,'New language <a href="/or/">Oriya</a> created.','2014-06-12 14:47:18.708967');
INSERT INTO "pootle_notifications_notice" VALUES(246,225,'New project <a href="/sk/terminology/">Terminology</a> added to language <a href="/sk/">Slovak</a>.','2014-06-12 14:47:18.722211');
INSERT INTO "pootle_notifications_notice" VALUES(247,6,'New language <a href="/sk/terminology/">Slovak</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.722526');
INSERT INTO "pootle_notifications_notice" VALUES(248,1,'New language <a href="/sk/">Slovak</a> created.','2014-06-12 14:47:18.730960');
INSERT INTO "pootle_notifications_notice" VALUES(249,1,'New language <a href="/si/">Sinhala; Sinhalese</a> created.','2014-06-12 14:47:18.741128');
INSERT INTO "pootle_notifications_notice" VALUES(250,229,'New project <a href="/pl/terminology/">Terminology</a> added to language <a href="/pl/">Polish</a>.','2014-06-12 14:47:18.754212');
INSERT INTO "pootle_notifications_notice" VALUES(251,6,'New language <a href="/pl/terminology/">Polish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.754516');
INSERT INTO "pootle_notifications_notice" VALUES(252,1,'New language <a href="/pl/">Polish</a> created.','2014-06-12 14:47:18.763618');
INSERT INTO "pootle_notifications_notice" VALUES(253,1,'New language <a href="/kw/">Cornish</a> created.','2014-06-12 14:47:18.774365');
INSERT INTO "pootle_notifications_notice" VALUES(254,233,'New project <a href="/ku/terminology/">Terminology</a> added to language <a href="/ku/">Kurdish</a>.','2014-06-12 14:47:18.788475');
INSERT INTO "pootle_notifications_notice" VALUES(255,6,'New language <a href="/ku/terminology/">Kurdish</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.788793');
INSERT INTO "pootle_notifications_notice" VALUES(256,1,'New language <a href="/ku/">Kurdish</a> created.','2014-06-12 14:47:18.799724');
INSERT INTO "pootle_notifications_notice" VALUES(257,1,'New language <a href="/sl/">Slovenian</a> created.','2014-06-12 14:47:18.810527');
INSERT INTO "pootle_notifications_notice" VALUES(258,1,'New language <a href="/ky/">Kirghiz; Kyrgyz</a> created.','2014-06-12 14:47:18.820729');
INSERT INTO "pootle_notifications_notice" VALUES(259,238,'New project <a href="/nb/terminology/">Terminology</a> added to language <a href="/nb/">Bokmål, Norwegian; Norwegian Bokmål</a>.','2014-06-12 14:47:18.833997');
INSERT INTO "pootle_notifications_notice" VALUES(260,6,'New language <a href="/nb/terminology/">Bokmål, Norwegian; Norwegian Bokmål</a> added to project <a href="/projects/terminology/">Terminology</a>.','2014-06-12 14:47:18.834303');
INSERT INTO "pootle_notifications_notice" VALUES(261,1,'New language <a href="/nb/">Bokmål, Norwegian; Norwegian Bokmål</a> created.','2014-06-12 14:47:18.843159');
INSERT INTO "pootle_notifications_notice" VALUES(262,1,'New user <a href="/accounts/admin/">admin</a> registered.','2014-06-12 14:47:18.896727');
CREATE TABLE "staticpages_agreement" ("id" integer NOT NULL PRIMARY KEY, "user_id" integer NOT NULL, "document_id" integer NOT NULL, "agreed_on" datetime NOT NULL);
CREATE TABLE "staticpages_legalpage" ("body" text NOT NULL, "virtual_path" varchar(100) NOT NULL UNIQUE, "title" varchar(100) NOT NULL, "url" varchar(200) NOT NULL, "active" bool NOT NULL, "modified_on" datetime NOT NULL, "id" integer PRIMARY KEY);
CREATE TABLE "staticpages_staticpage" ("body" text NOT NULL, "virtual_path" varchar(100) NOT NULL UNIQUE, "title" varchar(100) NOT NULL, "url" varchar(200) NOT NULL, "active" bool NOT NULL, "modified_on" datetime NOT NULL, "id" integer PRIMARY KEY);
CREATE TABLE "taggit_tag" ("id" integer NOT NULL PRIMARY KEY, "name" varchar(100) NOT NULL, "slug" varchar(100) NOT NULL UNIQUE);
CREATE TABLE "taggit_taggeditem" ("id" integer NOT NULL PRIMARY KEY, "tag_id" integer NOT NULL, "object_id" integer NOT NULL, "content_type_id" integer NOT NULL);
CREATE TABLE "pootlecache" (
    "cache_key" varchar(255) NOT NULL PRIMARY KEY,
    "value" text NOT NULL,
    "expires" datetime NOT NULL
);
INSERT INTO "pootlecache" VALUES(':1:pootle-projects','gAJjZGphbmdvLmRiLm1vZGVscy5xdWVyeQpRdWVyeVNldApxASmBcQJ9cQMoVQVfaXRlcnEETlUO
X3N0aWNreV9maWx0ZXJxBYlVA19kYnEGTlUNX3Jlc3VsdF9jYWNoZXEHXXEIKGNkamFuZ28uZGIu
bW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQljcG9vdGxlX3Byb2plY3QubW9kZWxzClByb2pl
Y3QKcQpdY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpzaW1wbGVfY2xhc3NfZmFjdG9yeQpxC4dScQx9
cQ0oVQ1yZXBvcnRfdGFyZ2V0cQ5YAAAAAFUNbG9jYWxmaWxldHlwZXEPWAIAAABwb1UEY29kZXEQ
WAsAAAB0ZXJtaW5vbG9neVUKY2hlY2tzdHlsZXERWAsAAAB0ZXJtaW5vbG9neVUSc291cmNlX2xh
bmd1YWdlX2lkcRJLAlUWX3NvdXJjZV9sYW5ndWFnZV9jYWNoZXETaAljcG9vdGxlX2xhbmd1YWdl
Lm1vZGVscwpMYW5ndWFnZQpxFF1oC4dScRV9cRYoVQ5wbHVyYWxlcXVhdGlvbnEXWAgAAAAobiAh
PSAxKWgQWAIAAABlblULZGVzY3JpcHRpb25xGFgAAAAAVQZfc3RhdGVxGWNkamFuZ28uZGIubW9k
ZWxzLmJhc2UKTW9kZWxTdGF0ZQpxGimBcRt9cRwoVQZhZGRpbmdxHYlVAmRicR5VB2RlZmF1bHRx
H3ViVQxkaXJlY3RvcnlfaWRxIEsFVQhmdWxsbmFtZXEhWAcAAABFbmdsaXNoVQxzcGVjaWFsY2hh
cnNxIlgAAAAAVQJpZHEjSwJVCG5wbHVyYWxzcSRLAnViVQxpZ25vcmVkZmlsZXNxJVgAAAAAaBlo
GimBcSZ9cScoaB2JaB5oH3ViaCBLBlUJdHJlZXN0eWxlcShYBAAAAGF1dG9oIVgLAAAAVGVybWlu
b2xvZ3lVEF9kaXJlY3RvcnlfY2FjaGVxKWgJY3Bvb3RsZV9hcHAubW9kZWxzLmRpcmVjdG9yeQpE
aXJlY3RvcnkKcSpdaAuHUnErfXEsKFUEbmFtZXEtWAsAAAB0ZXJtaW5vbG9neVULcG9vdGxlX3Bh
dGhxLlgWAAAAL3Byb2plY3RzL3Rlcm1pbm9sb2d5L1UOX3Byb2plY3RfY2FjaGVxL2gMaBloGimB
cTB9cTEoaB2JaB5oH3ViVQlwYXJlbnRfaWRxMksCaCNLBnViaCNLAWgYWAAAAAB1YmgJaApdaAuH
UnEzfXE0KGgOWAAAAABoD1gCAAAAcG9oEFgIAAAAdHV0b3JpYWxoEVgIAAAAc3RhbmRhcmRoEksC
aBNoCWgUXWgLh1JxNX1xNihoF1gIAAAAKG4gIT0gMSloEFgCAAAAZW5oGFgAAAAAaBloGimBcTd9
cTgoaB2JaB5oH3ViaCBLBWghWAcAAABFbmdsaXNoaCJYAAAAAGgjSwJoJEsCdWJoJVgAAAAAaBlo
GimBcTl9cTooaB2JaB5oH3ViaCBLB2goWAQAAABhdXRvaCFYCAAAAFR1dG9yaWFsaCloCWgqXWgL
h1JxO31xPChoLVgIAAAAdHV0b3JpYWxoLlgTAAAAL3Byb2plY3RzL3R1dG9yaWFsL2gvaDNoGWga
KYFxPX1xPihoHYloHmgfdWJoMksCaCNLB3ViaCNLAmgYWAUBAAA8ZGl2IGRpcj0ibHRyIiBsYW5n
PSJlbiI+VHV0b3JpYWwgcHJvamVjdCB3aGVyZSB1c2VycyBjYW4gcGxheSB3aXRoIFBvb3RsZSBh
bmQgbGVhcm4gbW9yZSBhYm91dCB0cmFuc2xhdGlvbiBhbmQgbG9jYWxpc2F0aW9uLjxiciAvPkZv
ciBtb3JlIGhlbHAgb24gbG9jYWxpc2F0aW9uLCB2aXNpdCB0aGUgPGEgaHJlZj0iaHR0cDovL3Ry
YW5zbGF0ZS5zb3VyY2Vmb3JnZS5uZXQvd2lraS9ndWlkZS9zdGFydCI+bG9jYWxpc2F0aW9uIGd1
aWRlPC9hPi48L2Rpdj51YmVVDl9wcmVmZXRjaF9kb25lcT+JVQpfZm9yX3dyaXRlcUCJVQVxdWVy
eXFBY2RqYW5nby5kYi5tb2RlbHMuc3FsLnF1ZXJ5ClF1ZXJ5CnFCKYFxQ31xRChVFWFnZ3JlZ2F0
ZV9zZWxlY3RfbWFza3FFTlUXX2FnZ3JlZ2F0ZV9zZWxlY3RfY2FjaGVxRk5VBWV4dHJhcUdjZGph
bmdvLnV0aWxzLmRhdGFzdHJ1Y3R1cmVzClNvcnRlZERpY3QKcUgpgXFJfXFKVQhrZXlPcmRlcnFL
XXNiVQhqb2luX21hcHFMfXFNKChOVRJwb290bGVfYXBwX3Byb2plY3RxTk5OdHFPaE6FKGhOVRRw
b290bGVfYXBwX2RpcmVjdG9yeXFQVQxkaXJlY3RvcnlfaWRxUWgjdHFSaFCFKGhOVRNwb290bGVf
YXBwX2xhbmd1YWdlcVNVEnNvdXJjZV9sYW5ndWFnZV9pZHFUaCN0cVVoU4V1VRVyZWxhdGVkX3Nl
bGVjdF9maWVsZHNxVl1VDGV4dHJhX3RhYmxlc3FXKVUGc2VsZWN0cVhdcVlVC3F1b3RlX2NhY2hl
cVp9cVtVDHJldl9qb2luX21hcHFcfXFdKGhTaFVoTmhPaFBoUnVVDHVzZWRfYWxpYXNlc3FeY19f
YnVpbHRpbl9fCnNldApxX12FUnFgVQhvcmRlcl9ieXFhXXFiaCFhVQhkaXN0aW5jdHFjiVUOZHVw
ZV9hdm9pZGFuY2VxZH1xZVUQZGVmYXVsdF9vcmRlcmluZ3FmiFUIZ3JvdXBfYnlxZ05VEXNlbGVj
dF9mb3JfdXBkYXRlcWiJVQ5zZWxlY3RfcmVsYXRlZHFpiFUQZGVmZXJyZWRfbG9hZGluZ3FqaF9d
hVJxa4iGcWxVDXNlbGVjdF9maWVsZHNxbV1VCWFsaWFzX21hcHFufXFvKGhTKGhTaFNVCklOTkVS
IEpPSU5xcGhOaFRoI4l0aE4oaE5oTk5OTk6JdGhQKGhQaFBocGhOaFFoI4l0dVUJbWF4X2RlcHRo
cXFLAVURc3RhbmRhcmRfb3JkZXJpbmdxcohVDmV4dHJhX29yZGVyX2J5cXMpVQ9kaXN0aW5jdF9m
aWVsZHNxdF1xdVUGdGFibGVzcXZdcXcoaE5oU2hQZVUKYWdncmVnYXRlc3F4aEgpgXF5fXF6aEtd
c2JVEWV4dHJhX3NlbGVjdF9tYXNrcXtOVRhzZWxlY3RfZm9yX3VwZGF0ZV9ub3dhaXRxfIlVE19l
eHRyYV9zZWxlY3RfY2FjaGVxfU5VCGxvd19tYXJrcX5LAFUOYWxpYXNfcmVmY291bnRxf2hIKYFx
gChoTksCaFNLAWhQSwF1fXGBaEtdcYIoaE5oU2hQZXNiVRNyZWxhdGVkX3NlbGVjdF9jb2xzcYNd
VQxkZWZhdWx0X2NvbHNxhIhVEG9yZGVyaW5nX2FsaWFzZXNxhV1xhlUGaGF2aW5ncYdjZGphbmdv
LmRiLm1vZGVscy5zcWwud2hlcmUKV2hlcmVOb2RlCnGIKYFxiX1xiihVCWNvbm5lY3RvcnGLVQNB
TkRxjFUHbmVnYXRlZHGNiVUIY2hpbGRyZW5xjl1VD3N1YnRyZWVfcGFyZW50c3GPXXViVRlpbmNs
dWRlZF9pbmhlcml0ZWRfbW9kZWxzcZB9cZFOaE5zVQl0YWJsZV9tYXBxkn1xkyhoU11xlGhTYWhO
XXGVaE5haFBdcZZoUGF1VQt3aGVyZV9jbGFzc3GXaIhVBW1vZGVscZhoClUFd2hlcmVxmWiIKYFx
mn1xmyhoi2iMaI2JaI5daI9ddWJVCWhpZ2hfbWFya3GcTlUQZmlsdGVyX2lzX3N0aWNreXGdiXVi
aJhoClUZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc3GeXXGfdWIu','2014-06-12 14:47:16');
INSERT INTO "pootlecache" VALUES(':1:pootle-languages','gAJjZGphbmdvLmRiLm1vZGVscy5xdWVyeQpRdWVyeVNldApxASmBcQJ9cQMoVQVfaXRlcnEETlUO
X3N0aWNreV9maWx0ZXJxBYlVA19kYnEGTlUNX3Jlc3VsdF9jYWNoZXEHXXEIKGNkamFuZ28uZGIu
bW9kZWxzLmJhc2UKbW9kZWxfdW5waWNrbGUKcQljcG9vdGxlX2xhbmd1YWdlLm1vZGVscwpMYW5n
dWFnZQpxCl1jZGphbmdvLmRiLm1vZGVscy5iYXNlCnNpbXBsZV9jbGFzc19mYWN0b3J5CnELh1Jx
DH1xDShVDnBsdXJhbGVxdWF0aW9ucQ5YCAAAAChuICE9IDEpVQRjb2RlcQ9YAgAAAGFmVQtkZXNj
cmlwdGlvbnEQWAAAAABVBl9zdGF0ZXERY2RqYW5nby5kYi5tb2RlbHMuYmFzZQpNb2RlbFN0YXRl
CnESKYFxE31xFChVBmFkZGluZ3EViVUCZGJxFlUHZGVmYXVsdHEXdWJVDGRpcmVjdG9yeV9pZHEY
S29VCGZ1bGxuYW1lcRlYCQAAAEFmcmlrYWFuc1UMc3BlY2lhbGNoYXJzcRpYFgAAAMOrw6/DqsO0
w7vDocOpw63Ds8O6w71VAmlkcRtLQlUIbnBsdXJhbHNxHEsCdWJoCWgKXWgLh1JxHX1xHihoDlgF
AAAAbiA+IDFoD1gCAAAAYWtoEFgAAAAAaBFoEimBcR99cSAoaBWJaBZoF3ViaBhLdGgZWAQAAABB
a2FuaBpYCAAAAMmbyZTGkMaGaBtLRWgcSwJ1YmgJaApdaAuHUnEhfXEiKGgOWAUAAABuID4gMWgP
WAIAAABhbWgQWAAAAABoEWgSKYFxI31xJChoFYloFmgXdWJoGEt2aBlYBwAAAEFtaGFyaWNoGlgA
AAAAaBtLRmgcSwJ1YmgJaApdaAuHUnElfXEmKGgOWE4AAABuPT0wID8gMCA6IG49PTEgPyAxIDog
bj09MiA/IDIgOiBuJTEwMD49MyAmJiBuJTEwMDw9MTAgPyAzIDogbiUxMDA+PTExID8gNCA6IDVo
D1gCAAAAYXJoEFgAAAAAaBFoEimBcSd9cSgoaBWJaBZoF3ViaBhLfmgZWAYAAABBcmFiaWNoGlgA
AAAAaBtLSmgcSwZ1YmgJaApdaAuHUnEpfXEqKGgOWAgAAAAobiAhPSAxKWgPWAMAAABhc3RoEFgA
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
aWgcSwF1YmgJaApdaAuHUnHtfXHuKGgOWAcAAAAobiA+IDEpaA9YAgAAAHdhaBBYAAAAAGgRaBIp
gXHvfXHwKGgViWgWaBd1YmgYS7hoGVgHAAAAV2FsbG9vbmgaWAAAAABoG0tnaBxLAnViaAloCl1o
C4dScfF9cfIoaA5YAQAAADBoD1gFAAAAemhfQ05oEFgAAAAAaBFoEimBcfN9cfQoaBWJaBZoF3Vi
aBhLVmgZWA8AAABDaGluZXNlIChDaGluYSloGlgtAAAA4oaQ4oaS4oaUw5fDt8Kp4oCm4oCU4oCY
4oCZ4oCc4oCd44CQ44CR44CK44CLaBtLM2gcSwF1YmgJaApdaAuHUnH1fXH2KGgOWAEAAAAwaA9Y
BQAAAHpoX0hLaBBYAAAAAGgRaBIpgXH3fXH4KGgViWgWaBd1YmgYS15oGVgTAAAAQ2hpbmVzZSAo
SG9uZyBLb25nKWgaWDkAAADihpDihpLihpTDl8O3wqnigKbigJTigJjigJnigJzigJ3jgIzjgI3j
gI7jgI/jgJDjgJHjgIrjgItoG0s5aBxLAXViaAloCl1oC4dScfl9cfooaA5YAQAAADBoD1gFAAAA
emhfVFdoEFgAAAAAaBFoEimBcft9cfwoaBWJaBZoF3ViaBhLpWgZWBAAAABDaGluZXNlIChUYWl3
YW4paBpYOQAAAOKGkOKGkuKGlMOXw7fCqeKApuKAlOKAmOKAmeKAnOKAneOAjOOAjeOAjuOAj+OA
kOOAkeOAiuOAi2gbS19oHEsBdWJoCWgKXWgLh1Jx/X1x/ihoDlgIAAAAKG4gIT0gMSloD1gCAAAA
enVoEFgAAAAAaBFoEimBcf99cgABAAAoaBWJaBZoF3ViaBhLhWgZWAQAAABadWx1aBpYAAAAAGgb
S0xoHEsCdWJlVQ5fcHJlZmV0Y2hfZG9uZXIBAQAAiVUKX2Zvcl93cml0ZXICAQAAiVUFcXVlcnly
AwEAAGNkamFuZ28uZGIubW9kZWxzLnNxbC5xdWVyeQpRdWVyeQpyBAEAACmBcgUBAAB9cgYBAAAo
VRVhZ2dyZWdhdGVfc2VsZWN0X21hc2tyBwEAAE5VF19hZ2dyZWdhdGVfc2VsZWN0X2NhY2hlcggB
AABOVQVleHRyYXIJAQAAY2RqYW5nby51dGlscy5kYXRhc3RydWN0dXJlcwpTb3J0ZWREaWN0CnIK
AQAAKYFyCwEAAH1yDAEAAFUIa2V5T3JkZXJyDQEAAF1zYlUIam9pbl9tYXByDgEAAH1yDwEAACgo
VRNwb290bGVfYXBwX2xhbmd1YWdlchABAABVHXBvb3RsZV9hcHBfdHJhbnNsYXRpb25wcm9qZWN0
chEBAABoG1ULbGFuZ3VhZ2VfaWRyEgEAAHRyEwEAAGoRAQAAhShOahABAABOTnRyFAEAAGoQAQAA
hShqEAEAAFUScG9vdGxlX2FwcF9wcm9qZWN0chUBAABoG1USc291cmNlX2xhbmd1YWdlX2lkchYB
AAB0chcBAABqFQEAAIV1VRVyZWxhdGVkX3NlbGVjdF9maWVsZHNyGAEAAF1VDGV4dHJhX3RhYmxl
c3IZAQAAKVUGc2VsZWN0choBAABdchsBAABVC3F1b3RlX2NhY2hlchwBAAB9ch0BAABVDHJldl9q
b2luX21hcHIeAQAAfXIfAQAAKGoQAQAAahQBAABqFQEAAGoXAQAAahEBAABqEwEAAHVVDHVzZWRf
YWxpYXNlc3IgAQAAY19fYnVpbHRpbl9fCnNldApyIQEAAF2FUnIiAQAAVQhvcmRlcl9ieXIjAQAA
XXIkAQAAVQhkaXN0aW5jdHIlAQAAiFUOZHVwZV9hdm9pZGFuY2VyJgEAAH1yJwEAAFUQZGVmYXVs
dF9vcmRlcmluZ3IoAQAAiFUIZ3JvdXBfYnlyKQEAAE5VEXNlbGVjdF9mb3JfdXBkYXRlcioBAACJ
VQ5zZWxlY3RfcmVsYXRlZHIrAQAAiVUQZGVmZXJyZWRfbG9hZGluZ3IsAQAAaiEBAABdhVJyLQEA
AIiGci4BAABVDXNlbGVjdF9maWVsZHNyLwEAAF1VCWFsaWFzX21hcHIwAQAAfXIxAQAAKGoQAQAA
KGoQAQAAahABAABOTk5OiXRqFQEAAChqFQEAAGoVAQAAVQ9MRUZUIE9VVEVSIEpPSU5yMgEAAGoQ
AQAAaBtqFgEAAIh0ahEBAAAoahEBAABqEQEAAFUKSU5ORVIgSk9JTnIzAQAAahABAABoG2oSAQAA
iHR1VQltYXhfZGVwdGhyNAEAAEsFVRFzdGFuZGFyZF9vcmRlcmluZ3I1AQAAiFUOZXh0cmFfb3Jk
ZXJfYnlyNgEAAClVD2Rpc3RpbmN0X2ZpZWxkc3I3AQAAKVUGdGFibGVzcjgBAABdcjkBAAAoahAB
AABqFQEAAGoRAQAAZVUKYWdncmVnYXRlc3I6AQAAagoBAAApgXI7AQAAfXI8AQAAag0BAABdc2JV
EWV4dHJhX3NlbGVjdF9tYXNrcj0BAABOVRhzZWxlY3RfZm9yX3VwZGF0ZV9ub3dhaXRyPgEAAIlV
E19leHRyYV9zZWxlY3RfY2FjaGVyPwEAAE5VCGxvd19tYXJrckABAABLAFUOYWxpYXNfcmVmY291
bnRyQQEAAGoKAQAAKYFyQgEAAChqEAEAAEsDahUBAABLAWoRAQAASwF1fXJDAQAAag0BAABdckQB
AAAoahABAABqFQEAAGoRAQAAZXNiVRNyZWxhdGVkX3NlbGVjdF9jb2xzckUBAABdVQxkZWZhdWx0
X2NvbHNyRgEAAIhVEG9yZGVyaW5nX2FsaWFzZXNyRwEAAF1ySAEAAFUGaGF2aW5nckkBAABjZGph
bmdvLmRiLm1vZGVscy5zcWwud2hlcmUKV2hlcmVOb2RlCnJKAQAAKYFySwEAAH1yTAEAAChVCWNv
bm5lY3RvcnJNAQAAVQNBTkRyTgEAAFUHbmVnYXRlZHJPAQAAiVUIY2hpbGRyZW5yUAEAAF1VD3N1
YnRyZWVfcGFyZW50c3JRAQAAXXViVRlpbmNsdWRlZF9pbmhlcml0ZWRfbW9kZWxzclIBAAB9clMB
AABOahABAABzVQl0YWJsZV9tYXByVAEAAH1yVQEAAChqEAEAAF1yVgEAAGoQAQAAYWoVAQAAXXJX
AQAAahUBAABhahEBAABdclgBAABqEQEAAGF1VQt3aGVyZV9jbGFzc3JZAQAAakoBAABVBW1vZGVs
cloBAABoClUFd2hlcmVyWwEAAGpKAQAAKYFyXAEAAH1yXQEAAChqTQEAAGpOAQAAak8BAACJalAB
AABdcl4BAAAoakoBAAApgXJfAQAAfXJgAQAAKGpNAQAAak4BAABqTwEAAIlqUAEAAF1yYQEAAGpK
AQAAKYFyYgEAAH1yYwEAAChqTQEAAGpOAQAAak8BAACJalABAABdcmQBAABqSgEAACmBcmUBAAB9
cmYBAAAoak0BAABqTgEAAGpPAQAAiGpQAQAAXXJnAQAAakoBAAApgXJoAQAAfXJpAQAAKGpNAQAA
ak4BAABqTwEAAIlqUAEAAF1yagEAAChjZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmUKQ29uc3Ry
YWludApyawEAACmBcmwBAAB9cm0BAAAoVQVhbGlhc3JuAQAAahABAABqWgEAAGgKVQpmaWVsZF9u
YW1lcm8BAABoD1UDY29scnABAABoD3ViVQVleGFjdHJxAQAAiFUJdGVtcGxhdGVzcnIBAAB0cnMB
AABhalEBAABddWJhalEBAABddWJhalEBAABddWJhalEBAABddWJqSgEAACmBcnQBAAB9cnUBAAAo
ak0BAABqTgEAAGpPAQAAiWpQAQAAXXJ2AQAAKGprAQAAKYFydwEAAH1yeAEAAChqbgEAAGoVAQAA
aloBAABjcG9vdGxlX3Byb2plY3QubW9kZWxzClByb2plY3QKcnkBAABqbwEAAFUPc291cmNlX2xh
bmd1YWdlcnoBAABqcAEAAGgbdWJVBmlzbnVsbIhddHJ7AQAAYWpRAQAAXXViakoBAAApgXJ8AQAA
fXJ9AQAAKGpNAQAAak4BAABqTwEAAIlqUAEAAF1yfgEAAChqawEAACmBcn8BAAB9coABAAAoam4B
AABqEQEAAGpaAQAAY3Bvb3RsZV90cmFuc2xhdGlvbnByb2plY3QubW9kZWxzClRyYW5zbGF0aW9u
UHJvamVjdApygQEAAGpvAQAAVQhsYW5ndWFnZXKCAQAAanABAABoG3ViVQZpc251bGyJXXRygwEA
AGFqUQEAAF11YmVqUQEAAF11YlUJaGlnaF9tYXJrcoQBAABOVRBmaWx0ZXJfaXNfc3RpY2t5coUB
AACJdWJqWgEAAGgKVRlfcHJlZmV0Y2hfcmVsYXRlZF9sb29rdXBzcoYBAABdcocBAAB1Yi4=','2014-06-12 14:47:18');
INSERT INTO "pootlecache" VALUES(':1:example.com:siteconfig:None:last-updated','gAJjZGF0ZXRpbWUKZGF0ZXRpbWUKcQFVCgfeBgwOLxMBURaFUnECLg==','2014-06-12 14:48:19');
INSERT INTO "pootlecache" VALUES(':1:example.com:siteconfig:1:last-updated','gAJjZGF0ZXRpbWUKZGF0ZXRpbWUKcQFVCgfeBgwOLxMFQ4yFUnECLg==','2014-06-12 14:48:19');
CREATE INDEX "django_session_3da3d3d8" ON "django_session" ("expire_date");
CREATE INDEX "auth_permission_1bb8f392" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_425ae3c4" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_1e014c8f" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_user_user_permissions_403f60f" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_1e014c8f" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "auth_user_groups_403f60f" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_425ae3c4" ON "auth_user_groups" ("group_id");
CREATE INDEX "django_admin_log_403f60f" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_1bb8f392" ON "django_admin_log" ("content_type_id");
CREATE INDEX "siteconfig_siteconfiguration_6223029" ON "siteconfig_siteconfiguration" ("site_id");
CREATE INDEX "votes_403f60f" ON "votes" ("user_id");
CREATE INDEX "votes_1bb8f392" ON "votes" ("content_type_id");
CREATE UNIQUE INDEX "pootle_app_permissionset_profile_id__directory_id" ON "pootle_app_permissionset"("profile_id", "directory_id");
CREATE UNIQUE INDEX "pootle_app_permissionset_positive_permissions_permissionset_id__permission_id" ON "pootle_app_permissionset_positive_permissions"("permissionset_id", "permission_id");
CREATE UNIQUE INDEX "pootle_app_permissionset_negative_permissions_permissionset_id__permission_id" ON "pootle_app_permissionset_negative_permissions"("permissionset_id", "permission_id");
CREATE INDEX "pootle_app_suggestion_43ab28ad" ON "pootle_app_suggestion" ("unit");
CREATE INDEX "pootle_app_suggestion_40cc5e04" ON "pootle_app_suggestion" ("translation_project_id");
CREATE INDEX "pootle_app_suggestion_355bfc27" ON "pootle_app_suggestion" ("state");
CREATE INDEX "pootle_app_suggestion_28614f72" ON "pootle_app_suggestion" ("suggester_id");
CREATE INDEX "pootle_app_suggestion_17299529" ON "pootle_app_suggestion" ("creation_time");
CREATE INDEX "pootle_app_suggestion_2f0e81d5" ON "pootle_app_suggestion" ("reviewer_id");
CREATE INDEX "pootle_app_suggestion_488aaffc" ON "pootle_app_suggestion" ("review_time");
CREATE INDEX "pootle_app_directory_63f17a16" ON "pootle_app_directory" ("parent_id");
CREATE INDEX "pootle_app_directory_7134e34b" ON "pootle_app_directory" ("pootle_path");
CREATE INDEX "pootle_app_permissionset_141c6eec" ON "pootle_app_permissionset" ("profile_id");
CREATE INDEX "pootle_app_permissionset_78100ca0" ON "pootle_app_permissionset" ("directory_id");
CREATE INDEX "pootle_app_permissionset_positive_permissions_6a6f7e9e" ON "pootle_app_permissionset_positive_permissions" ("permissionset_id");
CREATE INDEX "pootle_app_permissionset_positive_permissions_1e014c8f" ON "pootle_app_permissionset_positive_permissions" ("permission_id");
CREATE INDEX "pootle_app_permissionset_negative_permissions_6a6f7e9e" ON "pootle_app_permissionset_negative_permissions" ("permissionset_id");
CREATE INDEX "pootle_app_permissionset_negative_permissions_1e014c8f" ON "pootle_app_permissionset_negative_permissions" ("permission_id");
CREATE UNIQUE INDEX "pootle_store_suggestion_unit_id__target_hash" ON "pootle_store_suggestion"("unit_id", "target_hash");
CREATE UNIQUE INDEX "pootle_store_unit_store_id__unitid_hash" ON "pootle_store_unit"("store_id", "unitid_hash");
CREATE UNIQUE INDEX "pootle_store_store_parent_id__name" ON "pootle_store_store"("parent_id", "name");
CREATE INDEX "pootle_store_qualitycheck_52094d6e" ON "pootle_store_qualitycheck" ("name");
CREATE INDEX "pootle_store_qualitycheck_cac2c6" ON "pootle_store_qualitycheck" ("unit_id");
CREATE INDEX "pootle_store_qualitycheck_569aafc4" ON "pootle_store_qualitycheck" ("false_positive");
CREATE INDEX "pootle_store_suggestion_42838ece" ON "pootle_store_suggestion" ("target_hash");
CREATE INDEX "pootle_store_suggestion_cac2c6" ON "pootle_store_suggestion" ("unit_id");
CREATE INDEX "pootle_store_suggestion_403f60f" ON "pootle_store_suggestion" ("user_id");
CREATE INDEX "pootle_store_unit_47799232" ON "pootle_store_unit" ("store_id");
CREATE INDEX "pootle_store_unit_15416e3a" ON "pootle_store_unit" ("index");
CREATE INDEX "pootle_store_unit_4dd852a8" ON "pootle_store_unit" ("unitid_hash");
CREATE INDEX "pootle_store_unit_2fc828ea" ON "pootle_store_unit" ("source_hash");
CREATE INDEX "pootle_store_unit_5b05ab54" ON "pootle_store_unit" ("source_length");
CREATE INDEX "pootle_store_unit_34afe610" ON "pootle_store_unit" ("target_length");
CREATE INDEX "pootle_store_unit_355bfc27" ON "pootle_store_unit" ("state");
CREATE INDEX "pootle_store_unit_13d4b78" ON "pootle_store_unit" ("mtime");
CREATE INDEX "pootle_store_unit_3c12418b" ON "pootle_store_unit" ("submitted_by_id");
CREATE INDEX "pootle_store_unit_3b6e628a" ON "pootle_store_unit" ("submitted_on");
CREATE INDEX "pootle_store_unit_12e5d260" ON "pootle_store_unit" ("commented_by_id");
CREATE INDEX "pootle_store_unit_3455a333" ON "pootle_store_unit" ("commented_on");
CREATE INDEX "pootle_store_store_6e62a245" ON "pootle_store_store" ("file");
CREATE INDEX "pootle_store_store_63f17a16" ON "pootle_store_store" ("parent_id");
CREATE INDEX "pootle_store_store_40cc5e04" ON "pootle_store_store" ("translation_project_id");
CREATE INDEX "pootle_store_store_355bfc27" ON "pootle_store_store" ("state");
CREATE UNIQUE INDEX "pootle_app_translationproject_language_id__project_id" ON "pootle_app_translationproject"("language_id", "project_id");
CREATE UNIQUE INDEX "pootle_app_pootleprofile_languages_pootleprofile_id__language_id" ON "pootle_app_pootleprofile_languages"("pootleprofile_id", "language_id");
CREATE UNIQUE INDEX "pootle_app_pootleprofile_projects_pootleprofile_id__project_id" ON "pootle_app_pootleprofile_projects"("pootleprofile_id", "project_id");
CREATE UNIQUE INDEX "pootle_app_pootleprofile_alt_src_langs_pootleprofile_id__language_id" ON "pootle_app_pootleprofile_alt_src_langs"("pootleprofile_id", "language_id");
CREATE INDEX "pootle_app_pootleprofile_languages_22a0979d" ON "pootle_app_pootleprofile_languages" ("pootleprofile_id");
CREATE INDEX "pootle_app_pootleprofile_languages_7ab48146" ON "pootle_app_pootleprofile_languages" ("language_id");
CREATE INDEX "pootle_app_pootleprofile_projects_22a0979d" ON "pootle_app_pootleprofile_projects" ("pootleprofile_id");
CREATE INDEX "pootle_app_pootleprofile_projects_499df97c" ON "pootle_app_pootleprofile_projects" ("project_id");
CREATE INDEX "pootle_app_pootleprofile_alt_src_langs_22a0979d" ON "pootle_app_pootleprofile_alt_src_langs" ("pootleprofile_id");
CREATE INDEX "pootle_app_pootleprofile_alt_src_langs_7ab48146" ON "pootle_app_pootleprofile_alt_src_langs" ("language_id");
CREATE INDEX "pootle_app_submission_17299529" ON "pootle_app_submission" ("creation_time");
CREATE INDEX "pootle_app_submission_40cc5e04" ON "pootle_app_submission" ("translation_project_id");
CREATE INDEX "pootle_app_submission_1a37f020" ON "pootle_app_submission" ("submitter_id");
CREATE INDEX "pootle_app_submission_cac2c6" ON "pootle_app_submission" ("unit_id");
CREATE INDEX "pootle_app_submission_66f1716a" ON "pootle_app_submission" ("field");
CREATE INDEX "pootle_app_submission_f429bc7" ON "pootle_app_submission" ("type");
CREATE INDEX "pootle_tagging_itemwithgoal_7d61c803" ON "pootle_tagging_itemwithgoal" ("object_id");
CREATE INDEX "pootle_tagging_itemwithgoal_1bb8f392" ON "pootle_tagging_itemwithgoal" ("content_type_id");
CREATE INDEX "pootle_tagging_itemwithgoal_3747b463" ON "pootle_tagging_itemwithgoal" ("tag_id");
CREATE INDEX "pootle_notifications_notice_78100ca0" ON "pootle_notifications_notice" ("directory_id");
CREATE INDEX "pootle_notifications_notice_5d61ed14" ON "pootle_notifications_notice" ("added");
CREATE UNIQUE INDEX "staticpages_agreement_user_id__document_id" ON "staticpages_agreement"("user_id", "document_id");
CREATE INDEX "staticpages_agreement_403f60f" ON "staticpages_agreement" ("user_id");
CREATE INDEX "staticpages_agreement_bdd92ed" ON "staticpages_agreement" ("document_id");
CREATE INDEX "taggit_taggeditem_3747b463" ON "taggit_taggeditem" ("tag_id");
CREATE INDEX "taggit_taggeditem_7d61c803" ON "taggit_taggeditem" ("object_id");
CREATE INDEX "taggit_taggeditem_1bb8f392" ON "taggit_taggeditem" ("content_type_id");
CREATE UNIQUE INDEX "taggit_tag_name" ON "taggit_tag"("name");
CREATE INDEX "pootlecache_expires" ON "pootlecache" ("expires");
COMMIT;
