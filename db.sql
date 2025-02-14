CREATE TABLE users (
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
robux INT NOT NULL DEFAULT 0,
builders_club BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE user_settings (
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
setting_name VARCHAR(255) NOT NULL,
setting_value VARCHAR(255) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE user_items (
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
item_name VARCHAR(255) NOT NULL,
item_description VARCHAR(255) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE user_friends (
id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
friend_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (friend_id) REFERENCES users(id)
);
