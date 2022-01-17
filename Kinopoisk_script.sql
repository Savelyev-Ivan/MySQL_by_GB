DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;

USE kinopoisk;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `birthday_date` datetime NOT NULL , 
  `email` varchar(150) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL,
  `phone` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
);


DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `size` int DEFAULT NULL,
  `metadata` longtext,
  PRIMARY KEY (`id`),
  CONSTRAINT `photos_chk_1` CHECK (json_valid(`metadata`))
);


DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `photo_id` (`photo_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);


DROP TABLE IF EXISTS `persons_type`;
CREATE TABLE `persons_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `persons_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `subscription_type`;
CREATE TABLE `subscription_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subscription_type` varchar(255) NOT NULL,
  `price_subscription` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
  );

DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `subscription_type_id` bigint unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`subscription_type_id`) REFERENCES subscription_type(`id`)

  );

 
DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

 
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL,
  `description` text,
  `media_type_id` bigint unsigned NOT NULL,
  `rating` bigint unsigned DEFAULT NULL,
  `size` int DEFAULT NULL,
  `metadata` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `required_subscription_type` bigint unsigned DEFAULT NULL,
  `only_for_adults` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`)),
  CONSTRAINT `subscriptions_type_ibfk_2` FOREIGN KEY (`required_subscription_type`) REFERENCES subscription_type(`id`)
  
);


DROP TABLE IF EXISTS `actors_and_others_persons`;
CREATE TABLE `actors_and_others_persons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` bigint unsigned NOT NULL,
  `persons_name` varchar(255) NOT NULL,
  `persons_type_id` bigint unsigned NOT NULL,
  `persons_description` text,
  PRIMARY KEY (`id`),
  KEY `photo_id` (`photo_id`),
  KEY `persons_type_id` (`persons_type_id`),
  CONSTRAINT `actors_and_others_persons_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `actors_and_others_persons_ibfk_2` FOREIGN KEY (`persons_type_id`) REFERENCES `persons_type` (`id`)
);


DROP TABLE IF EXISTS `film_command`;
CREATE TABLE `film_command` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `actors_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `film_command_ibfk_1` FOREIGN KEY (`actors_id`) REFERENCES actors_and_others_persons(`id`),
  CONSTRAINT `media_id_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media`(`id`)
);





DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `media_id` bigint unsigned NOT NULL,
  `rate` enum('0','1','2','3','4','5') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
);













