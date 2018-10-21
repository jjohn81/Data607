create schema job_skills;

use  job_skills;


create USER 'data607p3'@'localhost' IDENTIFIED WITH mysql_native_password BY 'data607p3'; 
GRANT ALL ON job_skills.* TO 'data607p3'@'localhost';

CREATE TABLE `Jobs` (
	`job_id` bigint NOT NULL AUTO_INCREMENT,
	`job_name` varchar(500) NOT NULL ,
	PRIMARY KEY (`job_id`)
);

CREATE TABLE `Job_Skills` (
	`job_id` bigint NOT NULL,
	`skill_id` bigint NOT NULL
);

CREATE TABLE `Skills` (
	`skill_id` bigint NOT NULL AUTO_INCREMENT,
	`skill_name` varchar(250) NOT NULL,
	PRIMARY KEY (`skill_id`)
);

ALTER TABLE `job_skills` ADD CONSTRAINT `Job_Skills_fk0` FOREIGN KEY (`job_id`) REFERENCES `Jobs`(`job_id`);

ALTER TABLE `job_skills` ADD CONSTRAINT `Job_Skills_fk1` FOREIGN KEY (`skill_id`) REFERENCES `Skills`(`skill_Id`);
