use test_database;

DROP TABLE IF EXISTS Favorite;
DROP TABLE IF EXISTS Good;
DROP TABLE IF EXISTS Comment;
DROP TABLE IF EXISTS Chat;
DROP TABLE IF EXISTS User;

DROP TABLE IF EXISTS Thema_detail;
DROP TABLE IF EXISTS Thema;
DROP TABLE IF EXISTS Area;
DROP TABLE IF EXISTS City;
DROP TABLE IF EXISTS Prefecture;

CREATE TABLE Prefecture(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(4) NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id));

CREATE TABLE City(
    id INT NOT NULL AUTO_INCREMENT,
    prefecture_id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(prefecture_id) REFERENCES Prefecture(id));

CREATE TABLE Area(
    id INT NOT NULL AUTO_INCREMENT,
    city_id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(city_id) REFERENCES City(id));

CREATE TABLE Thema(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id));

CREATE TABLE Thema_detail(
    id INT NOT NULL AUTO_INCREMENT,
    thema_id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(thema_id) REFERENCES Thema(id));

CREATE TABLE User(
    id INT NOT NULL AUTO_INCREMENT,
    password VARCHAR(12) NOT NULL,
    name VARCHAR(20) NOT NULL,
    birth_year INT NOT NULL,
    birth_month INT NOT NULL,
    birth_day INT NOT NULL,
    sex BOOLEAN NOT NULL,
    prefecture_id INT NOT NULL,
    mail VARCHAR(30) NOT NULL,
    mail_notice BOOLEAN DEFAULT 0,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(prefecture_id) REFERENCES Prefecture(id));

CREATE TABLE Chat(
    id INT NOT NULL AUTO_INCREMENT,
    area_id INT NOT NULL,
    user_id INT NOT NULL,
    content VARCHAR(140) NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(area_id) REFERENCES Area(id),
    FOREIGN KEY(user_id) REFERENCES User(id));

CREATE TABLE Comment(
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    chat_id INT NOT NULL,
    thema_detail_id INT NOT NULL,
    content VARCHAR(140) NOT NULL,
    image_url VARCHAR(100),
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES User(id),
    FOREIGN KEY(chat_id) REFERENCES Chat(id),
    FOREIGN KEY(thema_detail_id) REFERENCES Thema_detail(id));

CREATE TABLE Good(
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    comment_id INT NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES User(id),
    FOREIGN KEY(comment_id) REFERENCES Comment(id),
    UNIQUE(user_id, comment_id));

CREATE TABLE Favorite(
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    comment_id INT NOT NULL,
    alive BOOLEAN DEFAULT 0,
    created TIMESTAMP DEFAULT current_timestamp(),
    updated TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES User(id),
    FOREIGN KEY(comment_id) REFERENCES Comment(id),
    UNIQUE(user_id, comment_id));
