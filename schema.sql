DROP DATABASE etsy;

CREATE DATABASE etsy;

USE etsy;

CREATE TABLE users (
	id int NOT NULL AUTO_INCREMENT,
	avatar varchar(150) NOT NULL,
	username varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE product_reviews (
	id int NOT NULL AUTO_INCREMENT,
  text varchar(150) NOT NULL,
	ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  dt DATETIME DEFAULT CURRENT_TIMESTAMP,
  star_rating tinyint,
	user_id int NOT NULL,
	product_id int NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE store (
	id int NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE store_reviews (
	id int NOT NULL AUTO_INCREMENT,
	text varchar(150) NOT NULL,
	star_rating tinyint,
	user_id int NOT NULL,
	store_id int NOT NULL,
	PRIMARY KEY (id)
);

/*users*/
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/0bd803/71694658/iusa_75x75.71694658_m3l5.jpg?version=0', 'PINKAMENA');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/8a9a6e/72950195/iusa_75x75.72950195_idg1.jpg?version=0', 'Amy Liberty');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/71930e/72616772/iusa_75x75.72616772_1lqh.jpg?version=0', 'Tony and Jordan Deanne');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/efaf7b/70601487/iusa_75x75.70601487_r8ai.jpg?version=0', 'Samantha');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'G Butler');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/a1648a/50772761/iusa_75x75.50772761_ooy0.jpg?version=0', 'Matthew Findlay');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/148451/26320893/iusa_75x75.26320893_kyr5.jpg?version=0', 'jhogge12');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/374e94/66318069/iusa_75x75.66318069_12oh.jpg?version=0', 'ViKi Li');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/bc5e82/31655558/iusa_75x75.31655558_k9l5.jpg?version=0', 'Andrew Gorgi');
INSERT into users (avatar, username) VALUES ('https://i.etsystatic.com/iusa/953a6a/41600510/iusa_75x75.41600510_gjo5.jpg?version=0', 'Kayla');

INSERT into product_reviews (text, star_rating, user_id, product_id) VALUES ('Artwork is beautiful and package arrived in great condition.', 5, 1, 549504785);
INSERT into product_reviews (text, star_rating, user_id, product_id) VALUES ('Very high quality poster. My boyfriend loved it.', 4, 2, 549504785);
INSERT into product_reviews (text, star_rating, user_id, product_id) VALUES ('Very high quality poster. My boyfriend loved it.', 5, 3, 549504785);