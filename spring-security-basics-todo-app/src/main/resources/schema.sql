--DROP TABLE AUTHORITIES CASCADE CONSTRAINTS;
--DROP TABLE USERS CASCADE CONSTRAINTS;

CREATE TABLE USERS(
	USERNAME VARCHAR(50) NOT NULL,
	PASSWORD VARCHAR(60) NOT NULL,
	ENABLED SMALLINT NOT NULL,
	PRIMARY KEY(USERNAME)
);


CREATE TABLE AUTHORITIES(
	USERNAME VARCHAR(50) NOT NULL,
	AUTHORITY VARCHAR(50) NOT NULL,
	FOREIGN KEY(USERNAME) REFERENCES USERS
);

INSERT INTO USERS(USERNAME,PASSWORD, ENABLED) VALUES('user1', '$2a$10$dyxfIz3rBVnAImuexxFek.zBDeFsiUWywrspgH6ArASb95nX60uMS', 1);
INSERT INTO USERS(USERNAME,PASSWORD, ENABLED) VALUES('user2', '$2a$10$dyxfIz3rBVnAImuexxFek.zBDeFsiUWywrspgH6ArASb95nX60uMS', 0);
INSERT INTO USERS(USERNAME,PASSWORD, ENABLED) VALUES('user3', '$2a$10$dyxfIz3rBVnAImuexxFek.zBDeFsiUWywrspgH6ArASb95nX60uMS', 1);


INSERT INTO AUTHORITIES(USERNAME,AUTHORITY) VALUES('user1', 'ROLE_USER');
INSERT INTO AUTHORITIES(USERNAME,AUTHORITY) VALUES('user2', 'ROLE_USER');
INSERT INTO AUTHORITIES(USERNAME,AUTHORITY) VALUES('user3', 'ROLE_ADMIN');