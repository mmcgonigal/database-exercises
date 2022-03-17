USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'artist',
    name VARCHAR(50),
    release_date INT UNSIGNED,
    sales DECIMAL(7,0) ,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

--
-- USE codeup_test_db;
-- Database changed
-- mysql> DESCRIBE albums;
-- +--------------+--------------+------+-----+---------+----------------+
-- | Field        | Type         | Null | Key | Default | Extra          |
-- +--------------+--------------+------+-----+---------+----------------+
-- | id           | int unsigned | NO   | PRI | NULL    | auto_increment |
-- | artist       | varchar(50)  | YES  |     | artist  |                |
-- | name         | varchar(50)  | YES  |     | NULL    |                |
-- | release_date | int unsigned | YES  |     | NULL    |                |
-- | sales        | decimal(7,0) | YES  |     | NULL    |                |
-- | genre        | varchar(50)  | NO   |     | NULL    |                |
-- +--------------+--------------+------+-----+---------+----------------+
-- 6 rows in set (0.00 sec)
--
-- mysql> SHOW CREATE TABLE albums \G;
-- *************************** 1. row ***************************
--        Table: albums
-- Create Table: CREATE TABLE `albums` (
--                                         `id` int unsigned NOT NULL AUTO_INCREMENT,
--                                         `artist` varchar(50) DEFAULT 'artist',
--     `name` varchar(50) DEFAULT NULL,
--     `release_date` int unsigned DEFAULT NULL,
--     `sales` decimal(7,0) DEFAULT NULL,
--     `genre` varchar(50) NOT NULL,
--     PRIMARY KEY (`id`)
--     ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
--     1 row in set (0.01 sec)
