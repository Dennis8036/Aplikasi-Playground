/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : playground

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 15/01/2025 19:53:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity`;
CREATE TABLE `tb_activity`  (
  `id_activity` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NULL DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `timestamp` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_activity`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18421 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_activity
-- ----------------------------
INSERT INTO `tb_activity` VALUES (17875, 1, 'User melakukan Penghapusan seluruh data activity', '2025-01-14 21:27:54');
INSERT INTO `tb_activity` VALUES (17876, 1, 'User membuka Log Activity', '2025-01-14 21:27:54');
INSERT INTO `tb_activity` VALUES (17877, 1, 'Mengubah Password', '2025-01-14 21:27:57');
INSERT INTO `tb_activity` VALUES (17878, 1, 'User membuka Dashboard', '2025-01-14 21:28:11');
INSERT INTO `tb_activity` VALUES (17879, 1, 'User membuka Log Activity', '2025-01-14 21:28:12');
INSERT INTO `tb_activity` VALUES (17880, 1, 'User melakukan logout', '2025-01-14 21:28:17');
INSERT INTO `tb_activity` VALUES (17881, 3, 'User membuka Dashboard', '2025-01-14 21:28:25');
INSERT INTO `tb_activity` VALUES (17882, 3, 'Mengubah Password', '2025-01-14 21:28:27');
INSERT INTO `tb_activity` VALUES (17883, 3, 'User membuka Dashboard', '2025-01-14 21:28:38');
INSERT INTO `tb_activity` VALUES (17884, 3, 'Mengubah Password', '2025-01-14 21:28:40');
INSERT INTO `tb_activity` VALUES (17885, 1, 'User membuka Dashboard', '2025-01-14 21:29:00');
INSERT INTO `tb_activity` VALUES (17886, 1, 'User membuka Log Activity', '2025-01-14 21:29:01');
INSERT INTO `tb_activity` VALUES (17887, 1, 'Mengubah Password', '2025-01-14 21:29:09');
INSERT INTO `tb_activity` VALUES (17888, 1, 'User membuka Dashboard', '2025-01-14 21:29:21');
INSERT INTO `tb_activity` VALUES (17889, 1, 'User membuka Log Activity', '2025-01-14 21:29:22');
INSERT INTO `tb_activity` VALUES (17890, 1, 'User membuka halaman Setting', '2025-01-14 21:29:23');
INSERT INTO `tb_activity` VALUES (17891, 1, 'User membuka view User', '2025-01-14 21:29:24');
INSERT INTO `tb_activity` VALUES (17892, 1, 'User membuka view laporan', '2025-01-14 21:29:25');
INSERT INTO `tb_activity` VALUES (17893, 1, 'User membuka view laporan', '2025-01-14 21:29:55');
INSERT INTO `tb_activity` VALUES (17894, 1, 'User membuka view laporan', '2025-01-14 21:30:06');
INSERT INTO `tb_activity` VALUES (17895, 1, 'User membuka view history', '2025-01-14 21:30:13');
INSERT INTO `tb_activity` VALUES (17896, 1, 'User membuka view wahana', '2025-01-14 21:30:17');
INSERT INTO `tb_activity` VALUES (17897, 1, 'User membuka view User', '2025-01-14 21:30:32');
INSERT INTO `tb_activity` VALUES (17898, 1, 'User membuka view history', '2025-01-14 21:30:42');
INSERT INTO `tb_activity` VALUES (17899, 1, 'User membuka Dashboard', '2025-01-14 21:30:44');
INSERT INTO `tb_activity` VALUES (17900, 1, 'User membuka view wahana', '2025-01-14 21:30:50');
INSERT INTO `tb_activity` VALUES (17901, 1, 'User membuka view history', '2025-01-14 21:30:53');
INSERT INTO `tb_activity` VALUES (17902, 1, 'User membuka Dashboard', '2025-01-14 21:30:55');
INSERT INTO `tb_activity` VALUES (17903, 1, 'User membuka view history', '2025-01-14 21:30:56');
INSERT INTO `tb_activity` VALUES (17904, 1, 'User membuka view laporan', '2025-01-14 21:30:57');
INSERT INTO `tb_activity` VALUES (17905, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:30:59');
INSERT INTO `tb_activity` VALUES (17906, 1, 'User membuka view wahana', '2025-01-14 21:31:00');
INSERT INTO `tb_activity` VALUES (17907, 1, 'User membuka view User', '2025-01-14 21:31:02');
INSERT INTO `tb_activity` VALUES (17908, 1, 'User membuka Log Activity', '2025-01-14 21:31:03');
INSERT INTO `tb_activity` VALUES (17909, 1, 'User membuka halaman Setting', '2025-01-14 21:31:04');
INSERT INTO `tb_activity` VALUES (17910, 1, 'User membuka view history', '2025-01-14 21:31:05');
INSERT INTO `tb_activity` VALUES (17911, 1, 'User membuka Dashboard', '2025-01-14 21:31:10');
INSERT INTO `tb_activity` VALUES (17912, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:31:20');
INSERT INTO `tb_activity` VALUES (17913, 1, 'User membuka view wahana', '2025-01-14 21:31:22');
INSERT INTO `tb_activity` VALUES (17914, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:31:25');
INSERT INTO `tb_activity` VALUES (17915, 1, 'User membuka view wahana', '2025-01-14 21:31:26');
INSERT INTO `tb_activity` VALUES (17916, 1, 'User membuka Dashboard', '2025-01-14 21:31:28');
INSERT INTO `tb_activity` VALUES (17917, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:31:30');
INSERT INTO `tb_activity` VALUES (17918, 1, 'User membuka Dashboard', '2025-01-14 21:31:32');
INSERT INTO `tb_activity` VALUES (17919, 1, 'User membuka Dashboard', '2025-01-14 21:35:45');
INSERT INTO `tb_activity` VALUES (17920, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:35:51');
INSERT INTO `tb_activity` VALUES (17921, 1, 'User membuka form pendaftaran Wahana', '2025-01-14 21:35:52');
INSERT INTO `tb_activity` VALUES (17922, 1, 'User melakukan Pendaftaran Wahana', '2025-01-14 21:35:56');
INSERT INTO `tb_activity` VALUES (17923, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:35:57');
INSERT INTO `tb_activity` VALUES (17924, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-14 21:36:01');
INSERT INTO `tb_activity` VALUES (17925, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:36:01');
INSERT INTO `tb_activity` VALUES (17926, 1, 'User membuka Dashboard', '2025-01-14 21:36:03');
INSERT INTO `tb_activity` VALUES (17927, 1, 'User membuka Dashboard', '2025-01-14 21:36:05');
INSERT INTO `tb_activity` VALUES (17928, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:36:20');
INSERT INTO `tb_activity` VALUES (17929, 1, 'User membuka Dashboard', '2025-01-14 21:36:22');
INSERT INTO `tb_activity` VALUES (17930, 1, 'User membuka Dashboard', '2025-01-14 21:39:29');
INSERT INTO `tb_activity` VALUES (17931, 1, 'User membuka Dashboard', '2025-01-14 21:40:47');
INSERT INTO `tb_activity` VALUES (17932, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:40:49');
INSERT INTO `tb_activity` VALUES (17933, 1, 'User membuka view wahana', '2025-01-14 21:40:50');
INSERT INTO `tb_activity` VALUES (17934, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:40:52');
INSERT INTO `tb_activity` VALUES (17935, 1, 'User membuka form pendaftaran Wahana', '2025-01-14 21:40:53');
INSERT INTO `tb_activity` VALUES (17936, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:40:54');
INSERT INTO `tb_activity` VALUES (17937, 1, 'User membuka view history', '2025-01-14 21:40:55');
INSERT INTO `tb_activity` VALUES (17938, 1, 'User membuka view laporan', '2025-01-14 21:40:56');
INSERT INTO `tb_activity` VALUES (17939, 1, 'User membuka view User', '2025-01-14 21:40:57');
INSERT INTO `tb_activity` VALUES (17940, 1, 'User membuka Log Activity', '2025-01-14 21:40:58');
INSERT INTO `tb_activity` VALUES (17941, 1, 'User membuka Dashboard', '2025-01-14 21:41:00');
INSERT INTO `tb_activity` VALUES (17942, 1, 'User membuka Dashboard', '2025-01-14 21:42:33');
INSERT INTO `tb_activity` VALUES (17943, 1, 'User membuka Dashboard', '2025-01-14 21:42:45');
INSERT INTO `tb_activity` VALUES (17944, 1, 'User membuka Dashboard', '2025-01-14 21:43:29');
INSERT INTO `tb_activity` VALUES (17945, 1, 'User membuka Dashboard', '2025-01-14 21:43:40');
INSERT INTO `tb_activity` VALUES (17946, 1, 'User membuka Dashboard', '2025-01-14 21:44:08');
INSERT INTO `tb_activity` VALUES (17947, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:44:09');
INSERT INTO `tb_activity` VALUES (17948, 1, 'User membuka view wahana', '2025-01-14 21:44:10');
INSERT INTO `tb_activity` VALUES (17949, 1, 'User membuka view history', '2025-01-14 21:44:11');
INSERT INTO `tb_activity` VALUES (17950, 1, 'User membuka view laporan', '2025-01-14 21:44:13');
INSERT INTO `tb_activity` VALUES (17951, 1, 'User membuka view history', '2025-01-14 21:44:14');
INSERT INTO `tb_activity` VALUES (17952, 1, 'User membuka view laporan', '2025-01-14 21:44:16');
INSERT INTO `tb_activity` VALUES (17953, 1, 'User membuka view User', '2025-01-14 21:44:17');
INSERT INTO `tb_activity` VALUES (17954, 1, 'User membuka Log Activity', '2025-01-14 21:44:18');
INSERT INTO `tb_activity` VALUES (17955, 1, 'User membuka Log Activity', '2025-01-14 21:44:19');
INSERT INTO `tb_activity` VALUES (17956, 1, 'User membuka halaman Setting', '2025-01-14 21:44:20');
INSERT INTO `tb_activity` VALUES (17957, 1, 'User membuka Dashboard', '2025-01-14 21:44:22');
INSERT INTO `tb_activity` VALUES (17958, 1, 'User membuka view history', '2025-01-14 21:44:34');
INSERT INTO `tb_activity` VALUES (17959, 1, 'User membuka Dashboard', '2025-01-14 21:44:39');
INSERT INTO `tb_activity` VALUES (17960, 1, 'User membuka view history', '2025-01-14 21:44:42');
INSERT INTO `tb_activity` VALUES (17961, 1, 'User membuka Dashboard', '2025-01-14 21:44:52');
INSERT INTO `tb_activity` VALUES (17962, 1, 'User membuka Dashboard', '2025-01-14 21:45:30');
INSERT INTO `tb_activity` VALUES (17963, 1, 'User membuka Dashboard', '2025-01-14 21:45:39');
INSERT INTO `tb_activity` VALUES (17964, 1, 'User membuka Dashboard', '2025-01-14 21:45:50');
INSERT INTO `tb_activity` VALUES (17965, 1, 'User membuka view history', '2025-01-14 21:45:55');
INSERT INTO `tb_activity` VALUES (17966, 1, 'User membuka view wahana', '2025-01-14 21:46:00');
INSERT INTO `tb_activity` VALUES (17967, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:46:00');
INSERT INTO `tb_activity` VALUES (17968, 1, 'User membuka Dashboard', '2025-01-14 21:46:01');
INSERT INTO `tb_activity` VALUES (17969, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:46:02');
INSERT INTO `tb_activity` VALUES (17970, 1, 'User membuka form pendaftaran Wahana', '2025-01-14 21:46:04');
INSERT INTO `tb_activity` VALUES (17971, 1, 'User membuka view Pendaftaran Wahana', '2025-01-14 21:46:10');
INSERT INTO `tb_activity` VALUES (17972, 1, 'User membuka Dashboard', '2025-01-14 21:46:11');
INSERT INTO `tb_activity` VALUES (17973, 1, 'User membuka view wahana', '2025-01-14 21:46:18');
INSERT INTO `tb_activity` VALUES (17974, 1, 'User membuka view history', '2025-01-14 21:46:19');
INSERT INTO `tb_activity` VALUES (17975, 1, 'User membuka view laporan', '2025-01-14 21:46:20');
INSERT INTO `tb_activity` VALUES (17976, 1, 'User membuka view history', '2025-01-14 21:46:21');
INSERT INTO `tb_activity` VALUES (17977, 1, 'User membuka view User', '2025-01-14 21:46:23');
INSERT INTO `tb_activity` VALUES (17978, 1, 'User membuka view history', '2025-01-14 21:46:24');
INSERT INTO `tb_activity` VALUES (17979, 1, 'User membuka view laporan', '2025-01-14 21:46:28');
INSERT INTO `tb_activity` VALUES (17980, 1, 'User membuka view User', '2025-01-14 21:46:36');
INSERT INTO `tb_activity` VALUES (17981, 1, 'User membuka Log Activity', '2025-01-14 21:46:37');
INSERT INTO `tb_activity` VALUES (17982, 1, 'User membuka halaman Setting', '2025-01-14 21:46:38');
INSERT INTO `tb_activity` VALUES (17983, 1, 'User membuka Dashboard', '2025-01-14 21:46:41');
INSERT INTO `tb_activity` VALUES (17984, 1, 'User membuka Dashboard', '2025-01-15 07:09:49');
INSERT INTO `tb_activity` VALUES (17985, 1, 'User membuka Dashboard', '2025-01-15 07:09:56');
INSERT INTO `tb_activity` VALUES (17986, 1, 'User membuka view history', '2025-01-15 07:09:59');
INSERT INTO `tb_activity` VALUES (17987, 1, 'User membuka view User', '2025-01-15 07:10:12');
INSERT INTO `tb_activity` VALUES (17988, 1, 'User membuka Log Activity', '2025-01-15 07:10:13');
INSERT INTO `tb_activity` VALUES (17989, 1, 'User membuka Log Activity', '2025-01-15 07:10:15');
INSERT INTO `tb_activity` VALUES (17990, 1, 'User membuka view laporan', '2025-01-15 07:10:16');
INSERT INTO `tb_activity` VALUES (17991, 1, 'User membuka view history', '2025-01-15 07:10:31');
INSERT INTO `tb_activity` VALUES (17992, 1, 'User membuka view laporan', '2025-01-15 07:10:35');
INSERT INTO `tb_activity` VALUES (17993, 1, 'User membuka view history', '2025-01-15 07:10:54');
INSERT INTO `tb_activity` VALUES (17994, 1, 'User membuka view wahana', '2025-01-15 07:10:55');
INSERT INTO `tb_activity` VALUES (17995, 1, 'User membuka view history', '2025-01-15 07:10:56');
INSERT INTO `tb_activity` VALUES (17996, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:11:02');
INSERT INTO `tb_activity` VALUES (17997, 1, 'User membuka view wahana', '2025-01-15 07:11:05');
INSERT INTO `tb_activity` VALUES (17998, 1, 'User membuka Dashboard', '2025-01-15 07:11:06');
INSERT INTO `tb_activity` VALUES (17999, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:11:10');
INSERT INTO `tb_activity` VALUES (18000, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 07:11:12');
INSERT INTO `tb_activity` VALUES (18001, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 07:11:16');
INSERT INTO `tb_activity` VALUES (18002, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:11:17');
INSERT INTO `tb_activity` VALUES (18003, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 07:11:23');
INSERT INTO `tb_activity` VALUES (18004, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:11:24');
INSERT INTO `tb_activity` VALUES (18005, 1, 'User membuka Dashboard', '2025-01-15 07:11:26');
INSERT INTO `tb_activity` VALUES (18006, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:18:28');
INSERT INTO `tb_activity` VALUES (18007, 1, 'User membuka Dashboard', '2025-01-15 07:18:43');
INSERT INTO `tb_activity` VALUES (18008, 1, 'User membuka view wahana', '2025-01-15 07:18:45');
INSERT INTO `tb_activity` VALUES (18009, 1, 'User membuka view history', '2025-01-15 07:18:46');
INSERT INTO `tb_activity` VALUES (18010, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:24:52');
INSERT INTO `tb_activity` VALUES (18011, 1, 'User membuka Dashboard', '2025-01-15 07:24:55');
INSERT INTO `tb_activity` VALUES (18012, 1, 'User membuka view wahana', '2025-01-15 07:24:56');
INSERT INTO `tb_activity` VALUES (18013, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:24:58');
INSERT INTO `tb_activity` VALUES (18014, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 07:24:59');
INSERT INTO `tb_activity` VALUES (18015, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:25:03');
INSERT INTO `tb_activity` VALUES (18016, 1, 'User membuka Dashboard', '2025-01-15 07:25:06');
INSERT INTO `tb_activity` VALUES (18017, 1, 'User membuka view history', '2025-01-15 07:25:09');
INSERT INTO `tb_activity` VALUES (18018, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 07:25:11');
INSERT INTO `tb_activity` VALUES (18019, 1, 'User membuka view wahana', '2025-01-15 07:25:12');
INSERT INTO `tb_activity` VALUES (18020, 1, 'User membuka view history', '2025-01-15 07:25:14');
INSERT INTO `tb_activity` VALUES (18021, 1, 'User membuka view laporan', '2025-01-15 07:25:15');
INSERT INTO `tb_activity` VALUES (18022, 1, 'User membuka view User', '2025-01-15 07:25:17');
INSERT INTO `tb_activity` VALUES (18023, 1, 'User membuka Log Activity', '2025-01-15 07:25:18');
INSERT INTO `tb_activity` VALUES (18024, 1, 'User membuka halaman Setting', '2025-01-15 07:25:18');
INSERT INTO `tb_activity` VALUES (18025, 1, 'User membuka view laporan', '2025-01-15 07:25:20');
INSERT INTO `tb_activity` VALUES (18026, 1, 'User membuka Dashboard', '2025-01-15 07:25:22');
INSERT INTO `tb_activity` VALUES (18027, 1, 'User membuka Dashboard', '2025-01-15 10:51:25');
INSERT INTO `tb_activity` VALUES (18028, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:51:32');
INSERT INTO `tb_activity` VALUES (18029, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 10:51:34');
INSERT INTO `tb_activity` VALUES (18030, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 10:51:37');
INSERT INTO `tb_activity` VALUES (18031, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:51:38');
INSERT INTO `tb_activity` VALUES (18032, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 10:51:41');
INSERT INTO `tb_activity` VALUES (18033, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:51:41');
INSERT INTO `tb_activity` VALUES (18034, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:51:43');
INSERT INTO `tb_activity` VALUES (18035, 1, 'User membuka Dashboard', '2025-01-15 10:51:44');
INSERT INTO `tb_activity` VALUES (18036, 1, 'User membuka view User', '2025-01-15 10:52:15');
INSERT INTO `tb_activity` VALUES (18037, 1, 'User membuka Log Activity', '2025-01-15 10:52:16');
INSERT INTO `tb_activity` VALUES (18038, 1, 'User membuka halaman Setting', '2025-01-15 10:52:16');
INSERT INTO `tb_activity` VALUES (18039, 1, 'User membuka view laporan', '2025-01-15 10:52:17');
INSERT INTO `tb_activity` VALUES (18040, 1, 'User membuka view history', '2025-01-15 10:52:19');
INSERT INTO `tb_activity` VALUES (18041, 1, 'User membuka view laporan', '2025-01-15 10:52:21');
INSERT INTO `tb_activity` VALUES (18042, 1, 'User membuka view history', '2025-01-15 10:52:32');
INSERT INTO `tb_activity` VALUES (18043, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:52:37');
INSERT INTO `tb_activity` VALUES (18044, 1, 'User membuka view wahana', '2025-01-15 10:52:38');
INSERT INTO `tb_activity` VALUES (18045, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:52:39');
INSERT INTO `tb_activity` VALUES (18046, 1, 'User membuka Dashboard', '2025-01-15 10:52:40');
INSERT INTO `tb_activity` VALUES (18047, 1, 'User membuka view User', '2025-01-15 10:58:18');
INSERT INTO `tb_activity` VALUES (18048, 1, 'User membuka Log Activity', '2025-01-15 10:58:19');
INSERT INTO `tb_activity` VALUES (18049, 1, 'User membuka view laporan', '2025-01-15 10:58:20');
INSERT INTO `tb_activity` VALUES (18050, 1, 'User membuka view history', '2025-01-15 10:58:21');
INSERT INTO `tb_activity` VALUES (18051, 1, 'User membuka view wahana', '2025-01-15 10:58:21');
INSERT INTO `tb_activity` VALUES (18052, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:58:23');
INSERT INTO `tb_activity` VALUES (18053, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 10:58:25');
INSERT INTO `tb_activity` VALUES (18054, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 10:58:29');
INSERT INTO `tb_activity` VALUES (18055, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:58:30');
INSERT INTO `tb_activity` VALUES (18056, 1, 'User membuka Dashboard', '2025-01-15 10:59:06');
INSERT INTO `tb_activity` VALUES (18057, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:59:10');
INSERT INTO `tb_activity` VALUES (18058, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 10:59:14');
INSERT INTO `tb_activity` VALUES (18059, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:59:14');
INSERT INTO `tb_activity` VALUES (18060, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:59:16');
INSERT INTO `tb_activity` VALUES (18061, 1, 'User membuka Dashboard', '2025-01-15 10:59:16');
INSERT INTO `tb_activity` VALUES (18062, 1, 'User membuka view history', '2025-01-15 10:59:17');
INSERT INTO `tb_activity` VALUES (18063, 1, 'User melakukan Penghapusan data history', '2025-01-15 10:59:21');
INSERT INTO `tb_activity` VALUES (18064, 1, 'User membuka view history', '2025-01-15 10:59:21');
INSERT INTO `tb_activity` VALUES (18065, 1, 'User melakukan Penghapusan data history', '2025-01-15 10:59:23');
INSERT INTO `tb_activity` VALUES (18066, 1, 'User membuka view history', '2025-01-15 10:59:23');
INSERT INTO `tb_activity` VALUES (18067, 1, 'User melakukan Penghapusan data history', '2025-01-15 10:59:25');
INSERT INTO `tb_activity` VALUES (18068, 1, 'User membuka view history', '2025-01-15 10:59:25');
INSERT INTO `tb_activity` VALUES (18069, 1, 'User melakukan Penghapusan data history', '2025-01-15 10:59:26');
INSERT INTO `tb_activity` VALUES (18070, 1, 'User membuka view history', '2025-01-15 10:59:26');
INSERT INTO `tb_activity` VALUES (18071, 1, 'User melakukan Penghapusan data history', '2025-01-15 10:59:27');
INSERT INTO `tb_activity` VALUES (18072, 1, 'User membuka view history', '2025-01-15 10:59:28');
INSERT INTO `tb_activity` VALUES (18073, 1, 'User membuka view laporan', '2025-01-15 10:59:31');
INSERT INTO `tb_activity` VALUES (18074, 1, 'User membuka view history', '2025-01-15 10:59:40');
INSERT INTO `tb_activity` VALUES (18075, 1, 'User membuka view wahana', '2025-01-15 10:59:41');
INSERT INTO `tb_activity` VALUES (18076, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 10:59:42');
INSERT INTO `tb_activity` VALUES (18077, 1, 'User membuka Dashboard', '2025-01-15 10:59:46');
INSERT INTO `tb_activity` VALUES (18078, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:02:10');
INSERT INTO `tb_activity` VALUES (18079, 1, 'User membuka view wahana', '2025-01-15 11:02:12');
INSERT INTO `tb_activity` VALUES (18080, 1, 'User membuka Dashboard', '2025-01-15 11:03:33');
INSERT INTO `tb_activity` VALUES (18081, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:03:42');
INSERT INTO `tb_activity` VALUES (18082, 1, 'User membuka Dashboard', '2025-01-15 11:03:57');
INSERT INTO `tb_activity` VALUES (18083, 1, 'User membuka view history', '2025-01-15 11:04:00');
INSERT INTO `tb_activity` VALUES (18084, 1, 'User membuka view laporan', '2025-01-15 11:04:01');
INSERT INTO `tb_activity` VALUES (18085, 1, 'User membuka view User', '2025-01-15 11:04:02');
INSERT INTO `tb_activity` VALUES (18086, 1, 'User membuka Log Activity', '2025-01-15 11:04:03');
INSERT INTO `tb_activity` VALUES (18087, 1, 'User membuka view wahana', '2025-01-15 11:04:06');
INSERT INTO `tb_activity` VALUES (18088, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:04:07');
INSERT INTO `tb_activity` VALUES (18089, 1, 'User membuka Dashboard', '2025-01-15 11:04:09');
INSERT INTO `tb_activity` VALUES (18090, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:05:14');
INSERT INTO `tb_activity` VALUES (18091, 1, 'User membuka view wahana', '2025-01-15 11:05:16');
INSERT INTO `tb_activity` VALUES (18092, 1, 'User membuka view history', '2025-01-15 11:05:17');
INSERT INTO `tb_activity` VALUES (18093, 1, 'User membuka view laporan', '2025-01-15 11:05:18');
INSERT INTO `tb_activity` VALUES (18094, 1, 'User membuka view User', '2025-01-15 11:05:18');
INSERT INTO `tb_activity` VALUES (18095, 1, 'User membuka Dashboard', '2025-01-15 11:05:41');
INSERT INTO `tb_activity` VALUES (18096, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:07:04');
INSERT INTO `tb_activity` VALUES (18097, 1, 'User membuka view wahana', '2025-01-15 11:07:07');
INSERT INTO `tb_activity` VALUES (18098, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:07:10');
INSERT INTO `tb_activity` VALUES (18099, 1, 'User membuka view wahana', '2025-01-15 11:07:14');
INSERT INTO `tb_activity` VALUES (18100, 1, 'User membuka Dashboard', '2025-01-15 11:08:05');
INSERT INTO `tb_activity` VALUES (18101, 1, 'User membuka Dashboard', '2025-01-15 11:08:07');
INSERT INTO `tb_activity` VALUES (18102, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:08:11');
INSERT INTO `tb_activity` VALUES (18103, 1, 'User membuka Dashboard', '2025-01-15 11:08:11');
INSERT INTO `tb_activity` VALUES (18104, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:09:22');
INSERT INTO `tb_activity` VALUES (18105, 1, 'User membuka Dashboard', '2025-01-15 11:09:23');
INSERT INTO `tb_activity` VALUES (18106, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:09:24');
INSERT INTO `tb_activity` VALUES (18107, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:09:26');
INSERT INTO `tb_activity` VALUES (18108, 1, 'User membuka view wahana', '2025-01-15 11:09:53');
INSERT INTO `tb_activity` VALUES (18109, 1, 'User membuka view history', '2025-01-15 11:12:11');
INSERT INTO `tb_activity` VALUES (18110, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:12:14');
INSERT INTO `tb_activity` VALUES (18111, 1, 'User membuka view wahana', '2025-01-15 11:12:19');
INSERT INTO `tb_activity` VALUES (18112, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:12:23');
INSERT INTO `tb_activity` VALUES (18113, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:12:38');
INSERT INTO `tb_activity` VALUES (18114, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 11:12:44');
INSERT INTO `tb_activity` VALUES (18115, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:12:44');
INSERT INTO `tb_activity` VALUES (18116, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 11:13:10');
INSERT INTO `tb_activity` VALUES (18117, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:13:11');
INSERT INTO `tb_activity` VALUES (18118, 1, 'User membuka Dashboard', '2025-01-15 11:13:13');
INSERT INTO `tb_activity` VALUES (18119, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:13:57');
INSERT INTO `tb_activity` VALUES (18120, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:13:59');
INSERT INTO `tb_activity` VALUES (18121, 1, 'User membuka view wahana', '2025-01-15 11:15:19');
INSERT INTO `tb_activity` VALUES (18122, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:15:20');
INSERT INTO `tb_activity` VALUES (18123, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:15:22');
INSERT INTO `tb_activity` VALUES (18124, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:16:21');
INSERT INTO `tb_activity` VALUES (18125, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:16:58');
INSERT INTO `tb_activity` VALUES (18126, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:17:01');
INSERT INTO `tb_activity` VALUES (18127, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 11:17:08');
INSERT INTO `tb_activity` VALUES (18128, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 11:17:17');
INSERT INTO `tb_activity` VALUES (18129, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:17:18');
INSERT INTO `tb_activity` VALUES (18130, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 11:17:37');
INSERT INTO `tb_activity` VALUES (18131, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:17:38');
INSERT INTO `tb_activity` VALUES (18132, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:17:40');
INSERT INTO `tb_activity` VALUES (18133, 1, 'User membuka Dashboard', '2025-01-15 11:17:41');
INSERT INTO `tb_activity` VALUES (18134, 1, 'User membuka view wahana', '2025-01-15 11:17:53');
INSERT INTO `tb_activity` VALUES (18135, 1, 'User membuka view history', '2025-01-15 11:17:55');
INSERT INTO `tb_activity` VALUES (18136, 1, 'User membuka view laporan', '2025-01-15 11:18:03');
INSERT INTO `tb_activity` VALUES (18137, 1, 'User membuka Dashboard', '2025-01-15 11:18:04');
INSERT INTO `tb_activity` VALUES (18138, 1, 'User membuka Dashboard', '2025-01-15 11:19:21');
INSERT INTO `tb_activity` VALUES (18139, 1, 'User melakukan logout', '2025-01-15 11:20:25');
INSERT INTO `tb_activity` VALUES (18140, 3, 'User membuka Dashboard', '2025-01-15 11:20:31');
INSERT INTO `tb_activity` VALUES (18141, 3, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:20:41');
INSERT INTO `tb_activity` VALUES (18142, 3, 'User membuka view wahana', '2025-01-15 11:20:42');
INSERT INTO `tb_activity` VALUES (18143, 3, 'User membuka view wahana', '2025-01-15 11:20:57');
INSERT INTO `tb_activity` VALUES (18144, 3, 'User membuka Dashboard', '2025-01-15 11:20:58');
INSERT INTO `tb_activity` VALUES (18145, 3, 'User membuka view wahana', '2025-01-15 11:23:13');
INSERT INTO `tb_activity` VALUES (18146, 3, 'User melakukan logout', '2025-01-15 11:23:17');
INSERT INTO `tb_activity` VALUES (18147, 2, 'User membuka Dashboard', '2025-01-15 11:23:26');
INSERT INTO `tb_activity` VALUES (18148, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:23:29');
INSERT INTO `tb_activity` VALUES (18149, 2, 'User membuka view wahana', '2025-01-15 11:23:30');
INSERT INTO `tb_activity` VALUES (18150, 2, 'User membuka view history', '2025-01-15 11:23:32');
INSERT INTO `tb_activity` VALUES (18151, 2, 'User membuka view laporan', '2025-01-15 11:23:33');
INSERT INTO `tb_activity` VALUES (18152, 2, 'User membuka view wahana', '2025-01-15 11:23:34');
INSERT INTO `tb_activity` VALUES (18153, 2, 'User membuka view laporan', '2025-01-15 11:23:36');
INSERT INTO `tb_activity` VALUES (18154, 2, 'User membuka view wahana', '2025-01-15 11:23:38');
INSERT INTO `tb_activity` VALUES (18155, 2, 'User membuka view history', '2025-01-15 11:23:52');
INSERT INTO `tb_activity` VALUES (18156, 2, 'User membuka view wahana', '2025-01-15 11:23:53');
INSERT INTO `tb_activity` VALUES (18157, 2, 'User membuka view history', '2025-01-15 11:24:13');
INSERT INTO `tb_activity` VALUES (18158, 2, 'User membuka view laporan', '2025-01-15 11:24:14');
INSERT INTO `tb_activity` VALUES (18159, 2, 'User membuka view history', '2025-01-15 11:24:15');
INSERT INTO `tb_activity` VALUES (18160, 2, 'User membuka view history', '2025-01-15 11:24:36');
INSERT INTO `tb_activity` VALUES (18161, 2, 'User membuka view history', '2025-01-15 11:24:46');
INSERT INTO `tb_activity` VALUES (18162, 2, 'User membuka view wahana', '2025-01-15 11:24:51');
INSERT INTO `tb_activity` VALUES (18163, 2, 'User membuka view history', '2025-01-15 11:25:24');
INSERT INTO `tb_activity` VALUES (18164, 2, 'User membuka view laporan', '2025-01-15 11:25:25');
INSERT INTO `tb_activity` VALUES (18165, 2, 'User membuka view history', '2025-01-15 11:25:30');
INSERT INTO `tb_activity` VALUES (18166, 2, 'User membuka view wahana', '2025-01-15 11:25:32');
INSERT INTO `tb_activity` VALUES (18167, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:25:33');
INSERT INTO `tb_activity` VALUES (18168, 2, 'User membuka Dashboard', '2025-01-15 11:25:34');
INSERT INTO `tb_activity` VALUES (18169, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 11:25:36');
INSERT INTO `tb_activity` VALUES (18170, 2, 'User membuka form pendaftaran Wahana', '2025-01-15 11:25:37');
INSERT INTO `tb_activity` VALUES (18171, 2, 'User melakukan logout', '2025-01-15 11:25:49');
INSERT INTO `tb_activity` VALUES (18172, 1, 'User membuka Dashboard', '2025-01-15 11:25:54');
INSERT INTO `tb_activity` VALUES (18173, 1, 'User membuka view wahana', '2025-01-15 11:29:39');
INSERT INTO `tb_activity` VALUES (18174, 1, 'User membuka view wahana', '2025-01-15 11:30:52');
INSERT INTO `tb_activity` VALUES (18175, 1, 'User membuka view wahana', '2025-01-15 12:02:31');
INSERT INTO `tb_activity` VALUES (18176, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:02:46');
INSERT INTO `tb_activity` VALUES (18177, 1, 'User membuka view wahana', '2025-01-15 12:03:04');
INSERT INTO `tb_activity` VALUES (18178, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:03:05');
INSERT INTO `tb_activity` VALUES (18179, 1, 'User membuka Dashboard', '2025-01-15 12:03:06');
INSERT INTO `tb_activity` VALUES (18180, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:03:12');
INSERT INTO `tb_activity` VALUES (18181, 1, 'User membuka view wahana', '2025-01-15 12:03:14');
INSERT INTO `tb_activity` VALUES (18182, 1, 'User membuka view history', '2025-01-15 12:03:15');
INSERT INTO `tb_activity` VALUES (18183, 1, 'User membuka view wahana', '2025-01-15 12:03:58');
INSERT INTO `tb_activity` VALUES (18184, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:04:00');
INSERT INTO `tb_activity` VALUES (18185, 1, 'User membuka Dashboard', '2025-01-15 12:04:01');
INSERT INTO `tb_activity` VALUES (18186, 1, 'User membuka view wahana', '2025-01-15 12:04:02');
INSERT INTO `tb_activity` VALUES (18187, 1, 'User membuka Dashboard', '2025-01-15 12:04:03');
INSERT INTO `tb_activity` VALUES (18188, 1, 'User membuka view history', '2025-01-15 12:04:04');
INSERT INTO `tb_activity` VALUES (18189, 1, 'User membuka view laporan', '2025-01-15 12:04:06');
INSERT INTO `tb_activity` VALUES (18190, 1, 'User membuka view history', '2025-01-15 12:04:07');
INSERT INTO `tb_activity` VALUES (18191, 1, 'User membuka Dashboard', '2025-01-15 12:04:09');
INSERT INTO `tb_activity` VALUES (18192, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:04:13');
INSERT INTO `tb_activity` VALUES (18193, 1, 'User membuka view wahana', '2025-01-15 12:04:14');
INSERT INTO `tb_activity` VALUES (18194, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:04:16');
INSERT INTO `tb_activity` VALUES (18195, 1, 'User membuka Dashboard', '2025-01-15 12:04:17');
INSERT INTO `tb_activity` VALUES (18196, 1, 'User membuka view wahana', '2025-01-15 12:04:18');
INSERT INTO `tb_activity` VALUES (18197, 1, 'User membuka view history', '2025-01-15 12:04:19');
INSERT INTO `tb_activity` VALUES (18198, 1, 'User membuka Dashboard', '2025-01-15 12:04:20');
INSERT INTO `tb_activity` VALUES (18199, 1, 'User membuka Dashboard', '2025-01-15 12:05:18');
INSERT INTO `tb_activity` VALUES (18200, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:05:19');
INSERT INTO `tb_activity` VALUES (18201, 1, 'User membuka view wahana', '2025-01-15 12:05:21');
INSERT INTO `tb_activity` VALUES (18202, 1, 'User membuka view history', '2025-01-15 12:05:24');
INSERT INTO `tb_activity` VALUES (18203, 1, 'User membuka view wahana', '2025-01-15 12:05:25');
INSERT INTO `tb_activity` VALUES (18204, 1, 'User membuka view laporan', '2025-01-15 12:05:26');
INSERT INTO `tb_activity` VALUES (18205, 1, 'User membuka view history', '2025-01-15 12:05:30');
INSERT INTO `tb_activity` VALUES (18206, 1, 'User membuka view wahana', '2025-01-15 12:05:31');
INSERT INTO `tb_activity` VALUES (18207, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:05:32');
INSERT INTO `tb_activity` VALUES (18208, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 12:05:33');
INSERT INTO `tb_activity` VALUES (18209, 1, 'User membuka Dashboard', '2025-01-15 12:05:37');
INSERT INTO `tb_activity` VALUES (18210, 1, 'User melakukan logout', '2025-01-15 12:05:40');
INSERT INTO `tb_activity` VALUES (18211, 2, 'User membuka Dashboard', '2025-01-15 12:05:47');
INSERT INTO `tb_activity` VALUES (18212, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 12:05:49');
INSERT INTO `tb_activity` VALUES (18213, 2, 'User membuka view wahana', '2025-01-15 12:05:50');
INSERT INTO `tb_activity` VALUES (18214, 2, 'User membuka view history', '2025-01-15 12:05:51');
INSERT INTO `tb_activity` VALUES (18215, 2, 'User membuka view laporan', '2025-01-15 12:05:52');
INSERT INTO `tb_activity` VALUES (18216, 2, 'User melakukan logout', '2025-01-15 12:05:54');
INSERT INTO `tb_activity` VALUES (18217, 1, 'User membuka Dashboard', '2025-01-15 18:44:45');
INSERT INTO `tb_activity` VALUES (18218, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 18:46:06');
INSERT INTO `tb_activity` VALUES (18219, 1, 'User membuka view wahana', '2025-01-15 18:46:09');
INSERT INTO `tb_activity` VALUES (18220, 1, 'User membuka view history', '2025-01-15 18:46:11');
INSERT INTO `tb_activity` VALUES (18221, 1, 'User membuka view laporan', '2025-01-15 18:46:15');
INSERT INTO `tb_activity` VALUES (18222, 1, 'User membuka view User', '2025-01-15 18:47:58');
INSERT INTO `tb_activity` VALUES (18223, 1, 'User membuka Dashboard', '2025-01-15 18:52:27');
INSERT INTO `tb_activity` VALUES (18224, 1, 'User membuka halaman Setting', '2025-01-15 18:53:16');
INSERT INTO `tb_activity` VALUES (18225, 1, 'User melakukan Setting', '2025-01-15 18:53:47');
INSERT INTO `tb_activity` VALUES (18226, 1, 'User membuka halaman Setting', '2025-01-15 18:53:47');
INSERT INTO `tb_activity` VALUES (18227, 1, 'User melakukan Setting', '2025-01-15 18:53:58');
INSERT INTO `tb_activity` VALUES (18228, 1, 'User membuka halaman Setting', '2025-01-15 18:53:58');
INSERT INTO `tb_activity` VALUES (18229, 1, 'User membuka halaman Setting', '2025-01-15 18:59:35');
INSERT INTO `tb_activity` VALUES (18230, 1, 'User membuka Log Activity', '2025-01-15 18:59:39');
INSERT INTO `tb_activity` VALUES (18231, 1, 'User membuka view User', '2025-01-15 18:59:42');
INSERT INTO `tb_activity` VALUES (18232, 1, 'User membuka view laporan', '2025-01-15 18:59:48');
INSERT INTO `tb_activity` VALUES (18233, 1, 'User membuka view history', '2025-01-15 18:59:49');
INSERT INTO `tb_activity` VALUES (18234, 1, 'User membuka view wahana', '2025-01-15 18:59:51');
INSERT INTO `tb_activity` VALUES (18235, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 18:59:52');
INSERT INTO `tb_activity` VALUES (18236, 1, 'User membuka Dashboard', '2025-01-15 18:59:54');
INSERT INTO `tb_activity` VALUES (18237, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 18:59:56');
INSERT INTO `tb_activity` VALUES (18238, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 18:59:57');
INSERT INTO `tb_activity` VALUES (18239, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:00:00');
INSERT INTO `tb_activity` VALUES (18240, 1, 'User membuka halaman Setting', '2025-01-15 19:11:04');
INSERT INTO `tb_activity` VALUES (18241, 1, 'User melakukan Setting', '2025-01-15 19:11:43');
INSERT INTO `tb_activity` VALUES (18242, 1, 'User membuka halaman Setting', '2025-01-15 19:11:43');
INSERT INTO `tb_activity` VALUES (18243, 1, 'User membuka halaman Setting', '2025-01-15 19:12:12');
INSERT INTO `tb_activity` VALUES (18244, 1, 'User membuka halaman Setting', '2025-01-15 19:12:16');
INSERT INTO `tb_activity` VALUES (18245, 1, 'User membuka halaman Setting', '2025-01-15 19:12:19');
INSERT INTO `tb_activity` VALUES (18246, 1, 'User membuka halaman Setting', '2025-01-15 19:12:25');
INSERT INTO `tb_activity` VALUES (18247, 1, 'User melakukan Setting', '2025-01-15 19:12:41');
INSERT INTO `tb_activity` VALUES (18248, 1, 'User membuka halaman Setting', '2025-01-15 19:12:42');
INSERT INTO `tb_activity` VALUES (18249, 1, 'User melakukan Setting', '2025-01-15 19:12:56');
INSERT INTO `tb_activity` VALUES (18250, 1, 'User membuka halaman Setting', '2025-01-15 19:12:56');
INSERT INTO `tb_activity` VALUES (18251, 1, 'Mengubah Password', '2025-01-15 19:12:59');
INSERT INTO `tb_activity` VALUES (18252, 1, 'User membuka Dashboard', '2025-01-15 19:13:06');
INSERT INTO `tb_activity` VALUES (18253, 1, 'User melakukan logout', '2025-01-15 19:13:09');
INSERT INTO `tb_activity` VALUES (18259, 1, 'User membuka Dashboard', '2025-01-15 19:22:41');
INSERT INTO `tb_activity` VALUES (18260, 1, 'User membuka Log Activity', '2025-01-15 19:22:43');
INSERT INTO `tb_activity` VALUES (18261, 1, 'User membuka view User', '2025-01-15 19:22:45');
INSERT INTO `tb_activity` VALUES (18262, 1, 'User melakukan Penghapusan Data User', '2025-01-15 19:22:46');
INSERT INTO `tb_activity` VALUES (18263, 1, 'User membuka view User', '2025-01-15 19:22:47');
INSERT INTO `tb_activity` VALUES (18264, 1, 'User masuk ke profile', '2025-01-15 19:22:49');
INSERT INTO `tb_activity` VALUES (18265, 1, 'User membuka view User', '2025-01-15 19:23:20');
INSERT INTO `tb_activity` VALUES (18266, 1, 'User melakukan Pengeditan Data User', '2025-01-15 19:23:48');
INSERT INTO `tb_activity` VALUES (18267, 1, 'User membuka view User', '2025-01-15 19:23:49');
INSERT INTO `tb_activity` VALUES (18268, 1, 'User melakukan Pengeditan Data User', '2025-01-15 19:23:56');
INSERT INTO `tb_activity` VALUES (18269, 1, 'User membuka view User', '2025-01-15 19:23:56');
INSERT INTO `tb_activity` VALUES (18270, 1, 'User membuka view User', '2025-01-15 19:24:17');
INSERT INTO `tb_activity` VALUES (18271, 1, 'User melakukan Pengeditan Data User', '2025-01-15 19:24:22');
INSERT INTO `tb_activity` VALUES (18272, 1, 'User membuka view User', '2025-01-15 19:24:22');
INSERT INTO `tb_activity` VALUES (18273, 1, 'User masuk ke profile', '2025-01-15 19:24:44');
INSERT INTO `tb_activity` VALUES (18274, 1, 'User membuka view User', '2025-01-15 19:24:46');
INSERT INTO `tb_activity` VALUES (18275, 1, 'User masuk ke profile', '2025-01-15 19:24:48');
INSERT INTO `tb_activity` VALUES (18276, 1, 'User masuk ke profile', '2025-01-15 19:25:00');
INSERT INTO `tb_activity` VALUES (18277, 1, 'Mengedit Profile', '2025-01-15 19:25:04');
INSERT INTO `tb_activity` VALUES (18278, 1, 'User masuk ke profile', '2025-01-15 19:25:04');
INSERT INTO `tb_activity` VALUES (18279, 1, 'Mengedit Profile', '2025-01-15 19:25:23');
INSERT INTO `tb_activity` VALUES (18280, 1, 'User masuk ke profile', '2025-01-15 19:25:24');
INSERT INTO `tb_activity` VALUES (18281, 1, 'Mengedit Profile', '2025-01-15 19:25:31');
INSERT INTO `tb_activity` VALUES (18282, 1, 'User masuk ke profile', '2025-01-15 19:25:32');
INSERT INTO `tb_activity` VALUES (18283, 1, 'User melakukan logout', '2025-01-15 19:25:43');
INSERT INTO `tb_activity` VALUES (18284, 1, 'User membuka Dashboard', '2025-01-15 19:26:01');
INSERT INTO `tb_activity` VALUES (18285, 1, 'User membuka view User', '2025-01-15 19:26:03');
INSERT INTO `tb_activity` VALUES (18286, 1, 'User melakukan Pengeditan Data User', '2025-01-15 19:26:09');
INSERT INTO `tb_activity` VALUES (18287, 1, 'User membuka view User', '2025-01-15 19:26:09');
INSERT INTO `tb_activity` VALUES (18288, 1, 'User melakukan logout', '2025-01-15 19:26:12');
INSERT INTO `tb_activity` VALUES (18289, 1, 'User membuka Dashboard', '2025-01-15 19:26:55');
INSERT INTO `tb_activity` VALUES (18290, 1, 'User membuka view wahana', '2025-01-15 19:27:21');
INSERT INTO `tb_activity` VALUES (18291, 1, 'User membuka form tambah wahana', '2025-01-15 19:27:26');
INSERT INTO `tb_activity` VALUES (18292, 1, 'User membuka view wahana', '2025-01-15 19:27:31');
INSERT INTO `tb_activity` VALUES (18293, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:27:48');
INSERT INTO `tb_activity` VALUES (18294, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 19:27:51');
INSERT INTO `tb_activity` VALUES (18295, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 19:28:15');
INSERT INTO `tb_activity` VALUES (18296, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:28:16');
INSERT INTO `tb_activity` VALUES (18297, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 19:28:46');
INSERT INTO `tb_activity` VALUES (18298, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:28:46');
INSERT INTO `tb_activity` VALUES (18299, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:28:48');
INSERT INTO `tb_activity` VALUES (18300, 1, 'User membuka Dashboard', '2025-01-15 19:28:50');
INSERT INTO `tb_activity` VALUES (18301, 1, 'User membuka Dashboard', '2025-01-15 19:29:34');
INSERT INTO `tb_activity` VALUES (18302, 1, 'User membuka Dashboard', '2025-01-15 19:29:45');
INSERT INTO `tb_activity` VALUES (18303, 1, 'User membuka Dashboard', '2025-01-15 19:29:55');
INSERT INTO `tb_activity` VALUES (18304, 1, 'User membuka Dashboard', '2025-01-15 19:30:21');
INSERT INTO `tb_activity` VALUES (18305, 1, 'User membuka Dashboard', '2025-01-15 19:30:52');
INSERT INTO `tb_activity` VALUES (18306, 1, 'User membuka Dashboard', '2025-01-15 19:30:55');
INSERT INTO `tb_activity` VALUES (18307, 1, 'User membuka view history', '2025-01-15 19:31:01');
INSERT INTO `tb_activity` VALUES (18308, 1, 'User membuka view laporan', '2025-01-15 19:31:15');
INSERT INTO `tb_activity` VALUES (18309, 1, 'User membuka view history', '2025-01-15 19:31:21');
INSERT INTO `tb_activity` VALUES (18310, 1, 'User membuka view laporan', '2025-01-15 19:31:22');
INSERT INTO `tb_activity` VALUES (18311, 1, 'User membuka view User', '2025-01-15 19:32:06');
INSERT INTO `tb_activity` VALUES (18312, 1, 'User membuka Form Penambahan Data User', '2025-01-15 19:32:14');
INSERT INTO `tb_activity` VALUES (18313, 1, 'User membuka view User', '2025-01-15 19:32:17');
INSERT INTO `tb_activity` VALUES (18314, 1, 'User membuka Log Activity', '2025-01-15 19:32:21');
INSERT INTO `tb_activity` VALUES (18315, 1, 'User masuk ke profile', '2025-01-15 19:32:41');
INSERT INTO `tb_activity` VALUES (18316, 1, 'Mengedit Foto', '2025-01-15 19:32:51');
INSERT INTO `tb_activity` VALUES (18317, 1, 'User masuk ke profile', '2025-01-15 19:32:52');
INSERT INTO `tb_activity` VALUES (18318, 1, 'Menghapus Foto Profil', '2025-01-15 19:32:58');
INSERT INTO `tb_activity` VALUES (18319, 1, 'User masuk ke profile', '2025-01-15 19:32:59');
INSERT INTO `tb_activity` VALUES (18320, 1, 'Mengubah Password', '2025-01-15 19:33:08');
INSERT INTO `tb_activity` VALUES (18321, 1, 'User masuk ke profile', '2025-01-15 19:33:09');
INSERT INTO `tb_activity` VALUES (18322, 1, 'User melakukan logout', '2025-01-15 19:33:12');
INSERT INTO `tb_activity` VALUES (18323, 2, 'User membuka Dashboard', '2025-01-15 19:33:24');
INSERT INTO `tb_activity` VALUES (18324, 2, 'User membuka view wahana', '2025-01-15 19:33:39');
INSERT INTO `tb_activity` VALUES (18325, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:33:46');
INSERT INTO `tb_activity` VALUES (18326, 2, 'User membuka form pendaftaran Wahana', '2025-01-15 19:33:47');
INSERT INTO `tb_activity` VALUES (18327, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:33:53');
INSERT INTO `tb_activity` VALUES (18328, 2, 'User membuka Dashboard', '2025-01-15 19:33:55');
INSERT INTO `tb_activity` VALUES (18329, 2, 'User membuka view history', '2025-01-15 19:33:57');
INSERT INTO `tb_activity` VALUES (18330, 2, 'User membuka view laporan', '2025-01-15 19:34:00');
INSERT INTO `tb_activity` VALUES (18331, 2, 'User melakukan logout', '2025-01-15 19:34:05');
INSERT INTO `tb_activity` VALUES (18332, 3, 'User membuka Dashboard', '2025-01-15 19:34:13');
INSERT INTO `tb_activity` VALUES (18333, 3, 'User membuka view wahana', '2025-01-15 19:34:15');
INSERT INTO `tb_activity` VALUES (18334, 3, 'User membuka Dashboard', '2025-01-15 19:34:29');
INSERT INTO `tb_activity` VALUES (18335, 3, 'User melakukan logout', '2025-01-15 19:35:15');
INSERT INTO `tb_activity` VALUES (18336, 1, 'User membuka Dashboard', '2025-01-15 19:35:20');
INSERT INTO `tb_activity` VALUES (18337, 1, 'User membuka view User', '2025-01-15 19:35:22');
INSERT INTO `tb_activity` VALUES (18338, 1, 'User membuka view laporan', '2025-01-15 19:35:23');
INSERT INTO `tb_activity` VALUES (18339, 1, 'User membuka view history', '2025-01-15 19:35:24');
INSERT INTO `tb_activity` VALUES (18340, 1, 'User membuka view wahana', '2025-01-15 19:35:27');
INSERT INTO `tb_activity` VALUES (18341, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:35:28');
INSERT INTO `tb_activity` VALUES (18342, 1, 'User membuka view history', '2025-01-15 19:35:29');
INSERT INTO `tb_activity` VALUES (18343, 1, 'User melakukan Penghapusan data history', '2025-01-15 19:35:31');
INSERT INTO `tb_activity` VALUES (18344, 1, 'User membuka view history', '2025-01-15 19:35:31');
INSERT INTO `tb_activity` VALUES (18345, 1, 'User membuka view wahana', '2025-01-15 19:35:34');
INSERT INTO `tb_activity` VALUES (18346, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:35:38');
INSERT INTO `tb_activity` VALUES (18347, 1, 'User membuka Dashboard', '2025-01-15 19:35:39');
INSERT INTO `tb_activity` VALUES (18348, 1, 'User masuk ke profile', '2025-01-15 19:35:56');
INSERT INTO `tb_activity` VALUES (18349, 1, 'Mengedit Foto', '2025-01-15 19:36:02');
INSERT INTO `tb_activity` VALUES (18350, 1, 'User masuk ke profile', '2025-01-15 19:36:03');
INSERT INTO `tb_activity` VALUES (18351, 1, 'User melakukan logout', '2025-01-15 19:36:06');
INSERT INTO `tb_activity` VALUES (18352, 1, 'User membuka Dashboard', '2025-01-15 19:38:35');
INSERT INTO `tb_activity` VALUES (18353, 1, 'User membuka view wahana', '2025-01-15 19:39:04');
INSERT INTO `tb_activity` VALUES (18354, 1, 'User membuka form tambah wahana', '2025-01-15 19:39:08');
INSERT INTO `tb_activity` VALUES (18355, 1, 'User membuka view wahana', '2025-01-15 19:39:16');
INSERT INTO `tb_activity` VALUES (18356, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:39:29');
INSERT INTO `tb_activity` VALUES (18357, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 19:39:32');
INSERT INTO `tb_activity` VALUES (18358, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 19:39:47');
INSERT INTO `tb_activity` VALUES (18359, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:39:47');
INSERT INTO `tb_activity` VALUES (18360, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 19:40:11');
INSERT INTO `tb_activity` VALUES (18361, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:40:12');
INSERT INTO `tb_activity` VALUES (18362, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:40:13');
INSERT INTO `tb_activity` VALUES (18363, 1, 'User membuka Dashboard', '2025-01-15 19:40:16');
INSERT INTO `tb_activity` VALUES (18364, 1, 'User membuka Dashboard', '2025-01-15 19:40:41');
INSERT INTO `tb_activity` VALUES (18365, 1, 'User membuka Dashboard', '2025-01-15 19:40:51');
INSERT INTO `tb_activity` VALUES (18366, 1, 'User membuka Dashboard', '2025-01-15 19:41:32');
INSERT INTO `tb_activity` VALUES (18367, 1, 'User membuka Dashboard', '2025-01-15 19:41:34');
INSERT INTO `tb_activity` VALUES (18368, 1, 'User membuka Dashboard', '2025-01-15 19:41:35');
INSERT INTO `tb_activity` VALUES (18369, 1, 'User membuka Dashboard', '2025-01-15 19:41:37');
INSERT INTO `tb_activity` VALUES (18370, 1, 'User membuka Dashboard', '2025-01-15 19:41:37');
INSERT INTO `tb_activity` VALUES (18371, 1, 'User membuka Dashboard', '2025-01-15 19:41:38');
INSERT INTO `tb_activity` VALUES (18372, 1, 'User membuka Dashboard', '2025-01-15 19:41:39');
INSERT INTO `tb_activity` VALUES (18373, 1, 'User membuka view wahana', '2025-01-15 19:41:50');
INSERT INTO `tb_activity` VALUES (18374, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:41:52');
INSERT INTO `tb_activity` VALUES (18375, 1, 'User membuka Dashboard', '2025-01-15 19:41:53');
INSERT INTO `tb_activity` VALUES (18376, 1, 'User melakukan logout', '2025-01-15 19:42:17');
INSERT INTO `tb_activity` VALUES (18377, 1, 'User membuka Dashboard', '2025-01-15 19:42:47');
INSERT INTO `tb_activity` VALUES (18378, 1, 'User membuka view wahana', '2025-01-15 19:42:50');
INSERT INTO `tb_activity` VALUES (18379, 1, 'User membuka form tambah wahana', '2025-01-15 19:42:55');
INSERT INTO `tb_activity` VALUES (18380, 1, 'User membuka view wahana', '2025-01-15 19:43:01');
INSERT INTO `tb_activity` VALUES (18381, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:43:09');
INSERT INTO `tb_activity` VALUES (18382, 1, 'User membuka form pendaftaran Wahana', '2025-01-15 19:43:11');
INSERT INTO `tb_activity` VALUES (18383, 1, 'User melakukan Pendaftaran Wahana', '2025-01-15 19:43:28');
INSERT INTO `tb_activity` VALUES (18384, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:43:29');
INSERT INTO `tb_activity` VALUES (18385, 1, 'User melakukan Pengeditan Data Pendaftaran', '2025-01-15 19:44:00');
INSERT INTO `tb_activity` VALUES (18386, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:44:00');
INSERT INTO `tb_activity` VALUES (18387, 1, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:44:02');
INSERT INTO `tb_activity` VALUES (18388, 1, 'User membuka Dashboard', '2025-01-15 19:44:04');
INSERT INTO `tb_activity` VALUES (18389, 1, 'User membuka Dashboard', '2025-01-15 19:44:37');
INSERT INTO `tb_activity` VALUES (18390, 1, 'User membuka Dashboard', '2025-01-15 19:44:49');
INSERT INTO `tb_activity` VALUES (18391, 1, 'User membuka Dashboard', '2025-01-15 19:45:02');
INSERT INTO `tb_activity` VALUES (18392, 1, 'User membuka Dashboard', '2025-01-15 19:45:13');
INSERT INTO `tb_activity` VALUES (18393, 1, 'User membuka Dashboard', '2025-01-15 19:45:49');
INSERT INTO `tb_activity` VALUES (18394, 1, 'User membuka Dashboard', '2025-01-15 19:45:51');
INSERT INTO `tb_activity` VALUES (18395, 1, 'User membuka view history', '2025-01-15 19:45:54');
INSERT INTO `tb_activity` VALUES (18396, 1, 'User membuka view laporan', '2025-01-15 19:45:59');
INSERT INTO `tb_activity` VALUES (18397, 1, 'User membuka view history', '2025-01-15 19:46:05');
INSERT INTO `tb_activity` VALUES (18398, 1, 'User membuka view laporan', '2025-01-15 19:46:06');
INSERT INTO `tb_activity` VALUES (18399, 1, 'User membuka view User', '2025-01-15 19:46:49');
INSERT INTO `tb_activity` VALUES (18400, 1, 'User membuka Form Penambahan Data User', '2025-01-15 19:46:53');
INSERT INTO `tb_activity` VALUES (18401, 1, 'User membuka view User', '2025-01-15 19:46:57');
INSERT INTO `tb_activity` VALUES (18402, 1, 'User membuka Log Activity', '2025-01-15 19:47:02');
INSERT INTO `tb_activity` VALUES (18403, 1, 'User membuka halaman Setting', '2025-01-15 19:47:21');
INSERT INTO `tb_activity` VALUES (18404, 1, 'User masuk ke profile', '2025-01-15 19:47:33');
INSERT INTO `tb_activity` VALUES (18405, 1, 'Mengedit Foto', '2025-01-15 19:47:42');
INSERT INTO `tb_activity` VALUES (18406, 1, 'User masuk ke profile', '2025-01-15 19:47:42');
INSERT INTO `tb_activity` VALUES (18407, 1, 'Menghapus Foto Profil', '2025-01-15 19:47:45');
INSERT INTO `tb_activity` VALUES (18408, 1, 'User masuk ke profile', '2025-01-15 19:47:46');
INSERT INTO `tb_activity` VALUES (18409, 1, 'User melakukan logout', '2025-01-15 19:47:58');
INSERT INTO `tb_activity` VALUES (18410, 2, 'User membuka Dashboard', '2025-01-15 19:48:05');
INSERT INTO `tb_activity` VALUES (18411, 2, 'User membuka view wahana', '2025-01-15 19:48:09');
INSERT INTO `tb_activity` VALUES (18412, 2, 'User membuka view Pendaftaran Wahana', '2025-01-15 19:48:20');
INSERT INTO `tb_activity` VALUES (18413, 2, 'User membuka form pendaftaran Wahana', '2025-01-15 19:48:21');
INSERT INTO `tb_activity` VALUES (18414, 2, 'User membuka Dashboard', '2025-01-15 19:48:26');
INSERT INTO `tb_activity` VALUES (18415, 2, 'User membuka view history', '2025-01-15 19:48:27');
INSERT INTO `tb_activity` VALUES (18416, 2, 'User membuka view laporan', '2025-01-15 19:48:30');
INSERT INTO `tb_activity` VALUES (18417, 2, 'User melakukan logout', '2025-01-15 19:48:32');
INSERT INTO `tb_activity` VALUES (18418, 3, 'User membuka Dashboard', '2025-01-15 19:48:41');
INSERT INTO `tb_activity` VALUES (18419, 3, 'User membuka view wahana', '2025-01-15 19:48:56');
INSERT INTO `tb_activity` VALUES (18420, 3, 'User melakukan logout', '2025-01-15 19:49:05');

-- ----------------------------
-- Table structure for tb_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `tb_dashboard`;
CREATE TABLE `tb_dashboard`  (
  `id_dashboard` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wahana` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_main` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_daftar` timestamp(0) NULL DEFAULT NULL,
  `waktu_expired` timestamp(0) NULL DEFAULT NULL,
  `harga_daftar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dashboard`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_dashboard
-- ----------------------------
INSERT INTO `tb_dashboard` VALUES (86, 'Andi', 'Roller Coaster', '15 Menit', '2025-01-14 19:39:47', '2025-01-15 19:40:47', '50000');

-- ----------------------------
-- Table structure for tb_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_history`;
CREATE TABLE `tb_history`  (
  `id_history` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wahana` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga_daftar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_main` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_daftar` timestamp(0) NULL DEFAULT NULL,
  `waktu_expired` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_history`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_history
-- ----------------------------
INSERT INTO `tb_history` VALUES (11, 'pelanggan', 'Roller Coaster', '50000', '15 Menit', '2025-01-14 21:20:00', '2025-01-14 21:35:00');
INSERT INTO `tb_history` VALUES (12, 'admin', 'Roller Coaster', '50000', '15 Menit', '2025-01-14 21:35:56', '2025-01-14 21:50:56');
INSERT INTO `tb_history` VALUES (14, 'Udin', 'Roller Coaster', '50000', '15 Menit', '2025-01-15 19:43:28', '2025-01-14 19:45:10');

-- ----------------------------
-- Table structure for tb_pendaftaran
-- ----------------------------
DROP TABLE IF EXISTS `tb_pendaftaran`;
CREATE TABLE `tb_pendaftaran`  (
  `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_wahana` int(11) NULL DEFAULT NULL,
  `harga_daftar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_main` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_daftar` timestamp(0) NULL DEFAULT NULL,
  `durasi` enum('15 Menit','30 Menit','1 Jam','1 Jam 30 Menit','2 Jam') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu_expired` timestamp(0) NULL DEFAULT NULL,
  `status` enum('Pending','Lunas') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pendaftaran`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_setting
-- ----------------------------
DROP TABLE IF EXISTS `tb_setting`;
CREATE TABLE `tb_setting`  (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nama_web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_dashboard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_tab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_setting
-- ----------------------------
INSERT INTO `tb_setting` VALUES (1, 'Play Ground', 'wahana_baru_1.webp', 'wahana_baru_2.webp', 'wahana_baru_3.webp');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_level` enum('1','2','3','4','5') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `foto_profile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_at` datetime(0) NULL DEFAULT NULL,
  `update_at` datetime(0) NULL DEFAULT NULL,
  `delete_at` datetime(0) NULL DEFAULT NULL,
  `create_by` datetime(0) NULL DEFAULT NULL,
  `update_by` datetime(0) NULL DEFAULT NULL,
  `delete_by` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin@gmail.com', '1', NULL, '2025-01-13 09:38:58', '2025-01-15 19:25:32', NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_user` VALUES (2, 'petugas', 'c81e728d9d4c2f636f067f89cc14862c', 'petugas@gmail.com', '2', '1727069096_2edc2e6a17ea73c3a9db.jpg', '2025-01-13 09:40:00', '2025-01-13 13:03:28', NULL, NULL, '0000-00-00 00:00:00', NULL);
INSERT INTO `tb_user` VALUES (3, 'pelanggan', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'pelanggan@gmail.com', '3', '1736821652_9693d1bc91890d80f682.jpg', '2025-01-13 09:46:00', '2025-01-15 19:26:09', NULL, NULL, '0000-00-00 00:00:00', NULL);

-- ----------------------------
-- Table structure for tb_wahana
-- ----------------------------
DROP TABLE IF EXISTS `tb_wahana`;
CREATE TABLE `tb_wahana`  (
  `id_wahana` int(11) NOT NULL AUTO_INCREMENT,
  `nama_wahana` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `harga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `waktu` enum('15 Menit','30 Menit','60 Menit','1 Jam 30 Menit','2 Jam') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_wahana`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_wahana
-- ----------------------------
INSERT INTO `tb_wahana` VALUES (3, 'Bumper Car', ' 30000', '60 Menit');
INSERT INTO `tb_wahana` VALUES (4, 'Roller Coaster', ' 50000', '15 Menit');
INSERT INTO `tb_wahana` VALUES (5, 'Trampoline Park', ' 35000', '30 Menit');

SET FOREIGN_KEY_CHECKS = 1;
