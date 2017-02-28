-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `bio_options`;
CREATE TABLE `bio_options` (
  `option_name` varchar(255) NOT NULL,
  `option_type` varchar(255) DEFAULT NULL,
  `option_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `bio_sequences`;
CREATE TABLE `bio_sequences` (
  `name` varchar(255) NOT NULL,
  `next_hi_value` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `bio_subjects`;
CREATE TABLE `bio_subjects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SubjectId` varchar(512) DEFAULT NULL,
  `Template` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7qkg2t2rjsehvcig231pm5xx9` (`SubjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `bio_workstation`;
CREATE TABLE `bio_workstation` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hardware_id` varchar(255) DEFAULT NULL,
  `hardware_id_hash` varchar(300) DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `logged_user` varchar(255) DEFAULT NULL,
  `serial_number` varchar(40) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `hibernate_sequences`;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `sys_attrib_mapping`;
CREATE TABLE `sys_attrib_mapping` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` bigint(20) unsigned NOT NULL,
  `destination_id` bigint(20) unsigned NOT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `tbl_ak24_print`;
CREATE TABLE `tbl_ak24_print` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `SubjectId` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_local` bigint(20) DEFAULT NULL,
  `workstation_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_baxlgee0t0fntjv2lj7yqemmd` (`workstation_id`),
  CONSTRAINT `FK_baxlgee0t0fntjv2lj7yqemmd` FOREIGN KEY (`workstation_id`) REFERENCES `bio_workstation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_body`;
CREATE TABLE `tbl_body` (
  `body_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`body_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_body` (`body_id`, `label`) VALUES
(1,	'Kurus'),
(2,	'Sedang'),
(3,	'Kekar'),
(4,	'Gemuk');

DROP TABLE IF EXISTS `tbl_chin`;
CREATE TABLE `tbl_chin` (
  `chin_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`chin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_chin` (`chin_id`, `label`) VALUES
(1,	'Tajam'),
(2,	'Berat'),
(3,	'Menonjol'),
(4,	'Miring Ke Dalam');

DROP TABLE IF EXISTS `tbl_demographics`;
CREATE TABLE `tbl_demographics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `birth_date` timestamp NULL DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `body` int(11) DEFAULT '0',
  `childs` varchar(255) DEFAULT NULL,
  `chin` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date` timestamp NULL DEFAULT NULL,
  `ear` int(11) DEFAULT '0',
  `education` int(11) DEFAULT '0',
  `eye_color` int(11) DEFAULT '0',
  `eye_irregularity` int(11) DEFAULT '0',
  `face` int(11) DEFAULT '0',
  `father_address` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `fingers` text,
  `forehead` int(11) DEFAULT '0',
  `formula` varchar(255) DEFAULT NULL,
  `formula_view` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `hair` int(11) DEFAULT '0',
  `hair_color` int(11) DEFAULT '0',
  `head` int(11) DEFAULT '0',
  `height` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `last_address` text,
  `lip` int(11) DEFAULT '0',
  `location` varchar(255) DEFAULT NULL,
  `mother_address` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `nose` int(11) DEFAULT '0',
  `note` longtext,
  `operator` varchar(200) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `provision_code` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `scars_and_handicap` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `skin` int(11) DEFAULT '0',
  `status` bigint(20) DEFAULT '0',
  `SubjectId` varchar(255) DEFAULT NULL,
  `sync_status` enum('NEW','UPDATED','DELETED','PUSHED','SYNCED') NOT NULL DEFAULT 'NEW',
  `taken_by` varchar(255) DEFAULT NULL,
  `tattoo` varchar(255) DEFAULT NULL,
  `tooth` int(11) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `view_by` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `wife_husband_address` varchar(255) DEFAULT NULL,
  `wife_husband_name` varchar(255) DEFAULT NULL,  
  `finger_image_data` text,  
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_69434jymir0tc5cg8hl2btpqc` (`SubjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `tbl_ear`;
CREATE TABLE `tbl_ear` (
  `ear_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`ear_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_ear` (`ear_id`, `label`) VALUES
(1,	'Bulat'),
(2,	'Segi Tiga'),
(3,	'Segi Empat'),
(4,	'Anting Nempel');

DROP TABLE IF EXISTS `tbl_education`;
CREATE TABLE `tbl_education` (
  `education_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_education` (`education_id`, `label`) VALUES
(1,	'SD'),
(2,	'SMP'),
(3,	'SMA'),
(4,	'D1'),
(5,	'D3'),
(6,	'S1'),
(7,	'S2'),
(8,	'S3'),
(9,	'LAIN-LAIN');

DROP TABLE IF EXISTS `tbl_eye_color`;
CREATE TABLE `tbl_eye_color` (
  `eye_color_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`eye_color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_eye_color` (`eye_color_id`, `label`) VALUES
(1,	'Hitam'),
(2,	'Coklat'),
(3,	'Biru'),
(4,	'Abu-abu'),
(5,	'Hijau');

DROP TABLE IF EXISTS `tbl_eye_irregularity`;
CREATE TABLE `tbl_eye_irregularity` (
  `eye_irregularity_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`eye_irregularity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_eye_irregularity` (`eye_irregularity_id`, `label`) VALUES
(1,	'Juling Kanan'),
(2,	'Juling Kiri'),
(3,	'Berkaca Mata'),
(4,	'Mata Kanan Rusak'),
(5,	'Mata Kiri Rusak'),
(6,	'Kedua Mata Rusak'),
(7,	'Juling'),
(8,	'Melihat Dekat');

DROP TABLE IF EXISTS `tbl_face`;
CREATE TABLE `tbl_face` (
  `face_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`face_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_face` (`face_id`, `label`) VALUES
(1,	'Lonjong'),
(2,	'Bulat'),
(3,	'Segi Tiga'),
(4,	'Segi Empat');

DROP TABLE IF EXISTS `tbl_forehead`;
CREATE TABLE `tbl_forehead` (
  `forehead_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`forehead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_forehead` (`forehead_id`, `label`) VALUES
(1,	'Lengkung'),
(2,	'Lurus'),
(3,	'Menonjol'),
(4,	'Miring Ke Dalam'),
(5,	'Melereng Keluar');

DROP TABLE IF EXISTS `tbl_hair`;
CREATE TABLE `tbl_hair` (
  `hair_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`hair_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_hair` (`hair_id`, `label`) VALUES
(1,	'Lurus'),
(2,	'Berombak'),
(3,	'Keriting'),
(4,	'Botak Depan'),
(5,	'Botak Seluruhnya'),
(6,	'Botak Tengah'),
(7,	'Gondrong'),
(8,	'Rapih');

DROP TABLE IF EXISTS `tbl_hair_color`;
CREATE TABLE `tbl_hair_color` (
  `hair_color_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`hair_color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_hair_color` (`hair_color_id`, `label`) VALUES
(1,	'Hitam'),
(2,	'Coklat'),
(3,	'Merah'),
(4,	'Putih'),
(5,	'Pirang');

DROP TABLE IF EXISTS `tbl_head`;
CREATE TABLE `tbl_head` (
  `head_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`head_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_head` (`head_id`, `label`) VALUES
(1,	'Datar Atas'),
(2,	'Lurus Belakang'),
(3,	'Nonjol Atas'),
(4,	'Nonjol Belakang');

DROP TABLE IF EXISTS `tbl_lip`;
CREATE TABLE `tbl_lip` (
  `lip_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`lip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_lip` (`lip_id`, `label`) VALUES
(1,	'Sedang/Biasa'),
(2,	'Tipis'),
(3,	'Tebal'),
(4,	'Menonjol'),
(5,	'Menonjol Ke Atas'),
(6,	'Menonjol Ke Bawah'),
(7,	'Sumbing');

DROP TABLE IF EXISTS `tbl_nose`;
CREATE TABLE `tbl_nose` (
  `nose_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`nose_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_nose` (`nose_id`, `label`) VALUES
(1,	'Lengkung'),
(2,	'Lurus'),
(3,	'Bergelombang'),
(4,	'Berkait'),
(5,	'Bulat Kecil'),
(6,	'Bulat Besar');

DROP TABLE IF EXISTS `tbl_religion`;
CREATE TABLE `tbl_religion` (
  `religion_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`religion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_religion` (`religion_id`, `label`) VALUES
(1,	'Islam'),
(2,	'Protestan'),
(3,	'Hindu'),
(4,	'Budha'),
(5,	'Katolik'),
(6,	'Khonghucu');

DROP TABLE IF EXISTS `tbl_skin`;
CREATE TABLE `tbl_skin` (
  `skin_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`skin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_skin` (`skin_id`, `label`) VALUES
(1,	'Hitam'),
(2,	'Sawo Matang'),
(3,	'Kuning'),
(4,	'Putih'),
(5,	'Albino');

DROP TABLE IF EXISTS `tbl_status`;
CREATE TABLE `tbl_status` (
  `status_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `tbl_status` (`status_id`, `label`) VALUES
(1,	'Tersangka'),
(2,	'Pegawai'),
(3,	'Buruh'),
(4,	'TKI'),
(5,	'SIM'),
(6,	'SKCK'),
(7,	'SKLD'),
(8,	'Penduduk'),
(9,	'TNI/POLRI'),
(10,	'Lain-lain');

DROP TABLE IF EXISTS `tbl_temp_report`;
CREATE TABLE `tbl_temp_report` (
  `t_request_id` bigint(20) unsigned NOT NULL,
  `t_location` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `t_year` smallint(5) unsigned NOT NULL,
  `t_month` smallint(5) unsigned NOT NULL,
  `t_week_range` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `t_date` date NOT NULL,
  `t_total` int(10) unsigned DEFAULT NULL,
  `t_total_criminal` int(10) unsigned DEFAULT NULL,
  `t_total_non_criminal` int(10) unsigned DEFAULT NULL,
  `t_total_ak24` int(10) unsigned DEFAULT NULL,
  KEY `temp_report_t_year_index` (`t_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `tbl_tooth`;
CREATE TABLE `tbl_tooth` (
  `tooth_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`tooth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbl_tooth` (`tooth_id`, `label`) VALUES
(1,	'Teratur'),
(2,	'Tidak Teratur'),
(3,	'Atas Nonjol'),
(4,	'Bawah Nonjol'),
(5,	'Rusak'),
(6,	'Palsu'),
(7,	'Ompong'),
(8,	'Bergigi Emas'),
(9,	'Kotor'),
(10,	'Putih/Rata');

-- 2017-02-20 03:34:04
