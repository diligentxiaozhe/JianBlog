/*
 Navicat Premium Dump SQL

 Source Server         : myxiaozhe
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : zhiliaoblog

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 11/03/2025 22:34:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add captcha', 7, 'add_captcha');
INSERT INTO `auth_permission` VALUES (26, 'Can change captcha', 7, 'change_captcha');
INSERT INTO `auth_permission` VALUES (27, 'Can delete captcha', 7, 'delete_captcha');
INSERT INTO `auth_permission` VALUES (28, 'Can view captcha', 7, 'view_captcha');
INSERT INTO `auth_permission` VALUES (29, 'Can add blog', 8, 'add_blog');
INSERT INTO `auth_permission` VALUES (30, 'Can change blog', 8, 'change_blog');
INSERT INTO `auth_permission` VALUES (31, 'Can delete blog', 8, 'delete_blog');
INSERT INTO `auth_permission` VALUES (32, 'Can view blog', 8, 'view_blog');
INSERT INTO `auth_permission` VALUES (33, 'Can add blog comment', 9, 'add_blogcomment');
INSERT INTO `auth_permission` VALUES (34, 'Can change blog comment', 9, 'change_blogcomment');
INSERT INTO `auth_permission` VALUES (35, 'Can delete blog comment', 9, 'delete_blogcomment');
INSERT INTO `auth_permission` VALUES (36, 'Can view blog comment', 9, 'view_blogcomment');
INSERT INTO `auth_permission` VALUES (37, 'Can add blog category', 10, 'add_blogcategory');
INSERT INTO `auth_permission` VALUES (38, 'Can change blog category', 10, 'change_blogcategory');
INSERT INTO `auth_permission` VALUES (39, 'Can delete blog category', 10, 'delete_blogcategory');
INSERT INTO `auth_permission` VALUES (40, 'Can view blog category', 10, 'view_blogcategory');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$870000$NIBXn46mY1cpwmZnd9JCHr$SxK51+5eaUSz9LGQAkaAQ/xtTXw2VWb08YFCM16UV9E=', '2025-03-11 13:49:18.957011', 1, '奥特曼', '', '', '3168894598@qq.com', 1, 1, '2025-03-10 09:22:06.915187');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_blog
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `Category_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blog_author_id_8791af69_fk_auth_user_id`(`author_id` ASC) USING BTREE,
  INDEX `blog_blog_Category_id_44141dfa_fk_blog_blogcategory_id`(`Category_id` ASC) USING BTREE,
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blog_Category_id_44141dfa_fk_blog_blogcategory_id` FOREIGN KEY (`Category_id`) REFERENCES `blog_blogcategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES (1, '6655412', '<h2><strong>lbgkcfdkmfgnjh</strong></h2>', '2025-03-10 22:29:03.426410', 1, 1);
INSERT INTO `blog_blog` VALUES (2, 'Django发布博客前端功能完成', '<h1>用Ajax发送请求<strong>博客</strong>!</h1>', '2025-03-10 22:40:06.115394', 1, 2);
INSERT INTO `blog_blog` VALUES (3, 'Django发布博客前端功能完成', '<h1><strong>mkhbinrtj</strong></h1>', '2025-03-11 13:51:29.874918', 1, 1);
INSERT INTO `blog_blog` VALUES (4, '1235489', '<p><strong>1563456185</strong></p>', '2025-03-11 13:54:39.930234', 1, 2);
INSERT INTO `blog_blog` VALUES (5, '求助，这段代码什么意思?', '<p><br></p><pre><code class=\"language-python\">def blog_detail(request, blog_id):    try:        blog = Blog.objects.get(pk=blog_id)    except Exception as e:        blog = None    return render(request, \"blog_detail.html\", context={\'blog\': blog})</code></pre><p><br></p>', '2025-03-11 15:04:03.545816', 1, 1);
INSERT INTO `blog_blog` VALUES (6, '求助，这段代码什么意思?', '<p><br></p><pre><code class=\"language-python\">def blog_detail(request, blog_id):    try:        blog = Blog.objects.get(pk=blog_id)    except Exception as e:        blog = None    return render(request, \"blog_detail.html\", context={\'blog\': blog})</code></pre><p><br></p>', '2025-03-11 15:06:32.244353', 1, 1);

-- ----------------------------
-- Table structure for blog_blogcategory
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcategory`;
CREATE TABLE `blog_blogcategory`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogcategory
-- ----------------------------
INSERT INTO `blog_blogcategory` VALUES (1, 'python');
INSERT INTO `blog_blogcategory` VALUES (2, '前端');
INSERT INTO `blog_blogcategory` VALUES (3, '大数据');
INSERT INTO `blog_blogcategory` VALUES (4, '人工智能');

-- ----------------------------
-- Table structure for blog_blogcomment
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogcomment`;
CREATE TABLE `blog_blogcomment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `blog_blogcomment_author_id_ce11ddad_fk_auth_user_id`(`author_id` ASC) USING BTREE,
  INDEX `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id`(`blog_id` ASC) USING BTREE,
  CONSTRAINT `blog_blogcomment_author_id_ce11ddad_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `blog_blogcomment_blog_id_d3b167d7_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog_blogcomment
-- ----------------------------
INSERT INTO `blog_blogcomment` VALUES (1, '123456', '2025-03-11 14:43:10.153413', 1, 4);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2025-03-10 21:47:35.027208', '1', 'python', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (2, '2025-03-10 21:47:55.034328', '2', '前端', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (3, '2025-03-10 21:47:59.443427', '3', '大数据', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (4, '2025-03-10 21:48:14.458252', '4', '人工智能', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (5, '2025-03-10 21:48:16.309422', '4', '人工智能', 2, '[]', 10, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'blog');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'blogcategory');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'blogcomment');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'zlauth', 'captcha');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-03-09 14:06:02.196564');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2025-03-09 14:06:02.754769');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2025-03-09 14:06:02.909814');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-03-09 14:06:02.918805');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-09 14:06:02.927364');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-03-09 14:06:03.148936');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-03-09 14:06:03.213806');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-03-09 14:06:03.236407');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-03-09 14:06:03.244499');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-03-09 14:06:03.299137');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-03-09 14:06:03.302130');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-09 14:06:03.312226');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-03-09 14:06:03.395096');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-09 14:06:03.466673');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-03-09 14:06:03.495258');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-03-09 14:06:03.504142');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-09 14:06:03.561463');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2025-03-09 14:06:03.604063');
INSERT INTO `django_migrations` VALUES (19, 'zlauth', '0001_initial', '2025-03-09 14:06:03.626140');
INSERT INTO `django_migrations` VALUES (20, 'zlauth', '0002_alter_captcha_email', '2025-03-09 14:30:22.321922');
INSERT INTO `django_migrations` VALUES (21, 'blog', '0001_initial', '2025-03-10 12:00:57.180116');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2nn0jlalltqygfthzw89f6g0m1drns0p', '.eJxVjEEOwiAQRe_C2hBaOoBduvcMZGCmFjXQlDbRGO-uTbrQ7X_vv5fwuC6jXyvPPpHoRSMOv1vAeOO8AbpivhQZS17mFOSmyJ1WeS7E99Pu_gVGrOP33eowKHAdDUhWdwyk3NE4IAMNo0ILbadbZbR2EQy5AQNaQ8aijtBE3qKVa00le35MaX6KXr0_dhs-4A:1trsUQ:zJPwq-hBO_UOHWSMgm3YvTXWjTrfcmAkei4UqCMldvo', '2025-03-25 13:49:18.962570');
INSERT INTO `django_session` VALUES ('62cut7ebcatd7gg7iivgvbmnomz0tfe2', '.eJxVjMsOwiAQRf-FtSG8BtCl-34DGRiQqoGktCvjv2uTLnR7zzn3xQJuaw3byEuYiV2YZKffLWJ65LYDumO7dZ56W5c58l3hBx186pSf18P9O6g46rdWOhYB3lBBctpkIOHP1gNZkBkFOlBGK2G19gks-YIRnSXrUCeQKbP3B9MJN6M:1trZew:b0OrrVVX7l2PWiMo9msugAJAI6rxoSEcyNviymtz2zo', '2025-03-24 09:42:54.457946');
INSERT INTO `django_session` VALUES ('grg47x90dghv2i5z7xlrc2wv95gbfwm6', '.eJxVjEEOwiAQRe_C2hBaOoBduvcMZGCmFjXQlDbRGO-uTbrQ7X_vv5fwuC6jXyvPPpHoRSMOv1vAeOO8AbpivhQZS17mFOSmyJ1WeS7E99Pu_gVGrOP33eowKHAdDUhWdwyk3NE4IAMNo0ILbadbZbR2EQy5AQNaQ8aijtBE3qKVa00le35MaX6KXr0_dhs-4A:1trZci:UtuDGyRspm5Yp9F_fhAnmR9TrCJ_mlSVboFfI3iT0pQ', '2025-03-24 09:40:36.374029');
INSERT INTO `django_session` VALUES ('u1oypi2ud92200wtui6oh3nase7r5qlz', '.eJxVjEEOwiAQRe_C2hBaOoBduvcMZGCmFjXQlDbRGO-uTbrQ7X_vv5fwuC6jXyvPPpHoRSMOv1vAeOO8AbpivhQZS17mFOSmyJ1WeS7E99Pu_gVGrOP33eowKHAdDUhWdwyk3NE4IAMNo0ILbadbZbR2EQy5AQNaQ8aijtBE3qKVa00le35MaX6KXr0_dhs-4A:1trbaF:4ygLFxHlMpJCIycW1KPoxd9a4oNTbRO7_rzGsK1_GMk', '2025-03-24 11:46:11.351085');

-- ----------------------------
-- Table structure for zlauth_captcha
-- ----------------------------
DROP TABLE IF EXISTS `zlauth_captcha`;
CREATE TABLE `zlauth_captcha`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `captcha` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zlauth_captcha_email_2abe592a_uniq`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zlauth_captcha
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
