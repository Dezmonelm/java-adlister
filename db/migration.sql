CREATE DATABASE IF NOT EXISTS adlister_db;

USE adlister_db;

GRANT ALL ON *.* TO 'root'@'localhost';

CREATE TABLE users (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        username VARCHAR(50) NOT NULL,
                        email VARCHAR(100) NOT NULL,
                        password TEXT NOT NULL,
                        PRIMARY KEY (id)
);

CREATE TABLE ads (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       user_id int UNSIGNED NOT NULL,
                       title VARCHAR(100) NOT NULL,
                       description TEXT NOT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY(user_id) REFERENCES users(id)
);