CREATE TABLE location (
	location_id number(5) PRIMARY KEY,
	location_name varchar2(100) NOT NULL
);

CREATE TABLE category (
	category_id number(5) PRIMARY KEY,
	category_name varchar2(100) NOT NULL
);

CREATE TABLE information (
	information_id number(5) PRIMARY KEY,
	information_name varchar(100) NOT NULL,
	location_id number(5),
	category_id number(5),
	CONSTRAINTS fk_information_location_id FOREIGN KEY (location_id) REFERENCES location(location_id),
	CONSTRAINTS fk_information_category_id FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE user_info (
	user_index number(5) PRIMARY KEY,
	user_id varchar2(50) UNIQUE NOT NULL,
	user_pw	varchar2(50) NOT NULL,
	user_name varchar2(50) NOT NULL,
	user_brith DATE NOT NULL,
	user_tell varchar2(50) UNIQUE NOT NULL,
	user_email varchar2(50) UNIQUE NOT NULL
);

CREATE TABLE choice (
	choice_id number(5) PRIMARY KEY,
	user_index number(5),
	information_id number(5),
	CONSTRAINTS fk_choice_user_index FOREIGN KEY (user_index) REFERENCES user_info(user_index),
	CONSTRAINTS fk_choice_information_id FOREIGN KEY (information_id) REFERENCES information(information_id)
);

CREATE TABLE post (
	post_id number(5) PRIMARY KEY,
	post_title varchar2(100) NOT NULL,
	post_content varchar2(4000) NOT NULL,
	post_date DATE NOT NULL,
	user_index number(5),
	CONSTRAINTS fk_post_user_index FOREIGN KEY (user_index) REFERENCES user_info(user_index)
);