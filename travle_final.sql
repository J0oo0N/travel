-- ***************************CREATE***************************

CREATE TABLE location (
	locationId number(5) PRIMARY KEY,
	locationName varchar2(100) NOT NULL
);

CREATE TABLE category (
	categoryId number(5) PRIMARY KEY,
	categoryName varchar2(100) NOT NULL
);

CREATE TABLE information (
	informationId number(5) PRIMARY KEY,
	informationName varchar(100) NOT NULL,
	locationId number(5),
	categoryId number(5),
	CONSTRAINTS fk_information_location_id FOREIGN KEY (locationId) REFERENCES location(locationId),
	CONSTRAINTS fk_information_category_id FOREIGN KEY (categoryId) REFERENCES category(categoryId)
);

CREATE TABLE user_info (
	user_index number(5) PRIMARY KEY,
	user_id varchar2(300) UNIQUE NOT NULL,
	user_pw	varchar2(300) NOT NULL,
	user_name varchar2(300) NOT NULL,
	userb_birth varchar2(300)  NOT NULL,
	user_tell varchar2(300) UNIQUE NOT NULL,
	user_email varchar2(300) UNIQUE NOT NULL,
	user_activate char(1) NOT NULL
);

CREATE TABLE choice (
	choiceId number(5) PRIMARY KEY,
	userIndex number(5),
	informationId number(5),
	CONSTRAINTS fk_choice_userIndex FOREIGN KEY (userIndex) REFERENCES "USER"(userIndex),
	CONSTRAINTS fk_choice_informationId FOREIGN KEY (informationId) REFERENCES information(informationId)
);

CREATE TABLE post (
	postId number(5) PRIMARY KEY,
	postTitle varchar2(100) NOT NULL,
	postContent varchar2(4000) NOT NULL,
	postDate DATE NOT NULL,
	postAvaillble number(5) NOT NULL,
	userIndex number(5),
	CONSTRAINTS fk_post_userIndex FOREIGN KEY (userIndex) REFERENCES user_info(user_index)	
);

CREATE SEQUENCE seq_post_postId INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE user_index_seq INCREMENT BY 1 START WITH 1;

-- ***************************CREATE***************************

-- ****************************DROP****************************

-- key 제거
ALTER TABLE CHOICE DROP CONSTRAINTS fk_choice_user_index;
ALTER TABLE CHOICE DROP CONSTRAINTS fk_choice_information_id;
ALTER TABLE INFORMATION DROP CONSTRAINTS fk_information_category_id;
ALTER TABLE INFORMATION DROP CONSTRAINTS fk_information_location_id;
ALTER TABLE POST DROP CONSTRAINTS fk_post_userIndex;

-- table 삭제
DROP TABLE CATEGORY;
DROP TABLE CHOICE;
DROP TABLE INFORMATION;
DROP TABLE LOCATION;
DROP TABLE POST;
DROP TABLE USER_INFO ;

-- ****************************DROP****************************

-- ***************************SELECT***************************

SELECT b.*, u.USER_NAME FROM (SELECT * FROM (SELECT rownum r, p.* FROM (SELECT * FROM POST WHERE POSTAVAILLBLE = 0 ORDER BY POSTID DESC) p) n WHERE n.r BETWEEN 11 AND 20) b INNER JOIN USER_INFO u ON b.userIndex = u.USER_INDEX  ;
SELECT  * from POST where POSTID  = 11;
SELECT COUNT(*) FROM POST p WHERE POSTAVAILLBLE = 0;

-- ***************************SELECT***************************

-- ***************************INSERT***************************

INSERT INTO POST VALUES (seq_post_postId.nextval, 'test', 'test', sysdate, 0, 1) -- 로그인 정보 받아서 POSIINDEX 받아서 사용

-- ***************************INSERT***************************

-- ***************************UPDATE***************************

UPDATE POST SET POSTAVAILLBLE = 1 WHERE POSTID = 1 -- 글 삭제

-- ***************************UPDATE***************************




-- *************************DUMMY DATA*************************

INSERT INTO USER_INFO 
VALUES (user_index_seq.nextval , 'id_abc', 'pw_abc', 'name_abc', '2021-01-01', '010-1234-1234', 'abc@abc.abc', 1);
INSERT INTO USER_INFO 
VALUES (user_index_seq.nextval, 'id_def', 'pw_def', 'name_def', '2021-02-01', '010-3456-3456', 'def@def.def', 1);
INSERT INTO USER_INFO 
VALUES (user_index_seq.nextval, 'id_ghi', 'pw_ghi', 'name_ghi', '2021-03-01', '010-5678-5678', 'ghi@ghi.ghi', 1);
INSERT INTO USER_INFO 
VALUES (user_index_seq.nextval, 'id_jjh', 'pw_jjh', '정진형', '2021-01-06', '010-3372-3893', 'jjh@koreait.com', 1);
SELECT * FROM USER_INFO u ;

INSERT INTO POST VALUES (seq_post_postId.nextval, '테스트', '테스트', sysdate, 0, 1);
INSERT INTO POST VALUES (seq_post_postId.nextval, '테스트', '테스트', sysdate, 0, 2);
SELECT * FROM POST p ;

-- *************************DUMMY DATA*************************

