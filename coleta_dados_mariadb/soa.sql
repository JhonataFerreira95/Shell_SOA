
CREATE DATABASE IF NOT EXISTS mysql_db;

USE mysql_db;

CREATE TABLE IF NOT EXISTS userdata (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30),
    timestamp DATETIME
);

INSERT INTO userdata (username, timestamp) VALUES
('bass', '2024-12-16 17:10:00'),
('yomi_oliveira', '2024-12-16 17:13:00'),
('hisstrahr', '2024-12-16 17:16:00'),
('jhonata_ferreira', '2024-12-16 17:19:00');
