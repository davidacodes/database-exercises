USE codeup_test_db;

DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS pizza_order;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50),
  name VARCHAR(50),
  release_date INT,
  sales DECIMAL(6, 2),
  genre VARCHAR(50),
  PRIMARY KEY (id)
);

CREATE TABLE contacts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  number VARCHAR(15),
  email VARCHAR(50),
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
);

CREATE TABLE pizza_order (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  phone_number VARCHAR(15),
  email VARCHAR(50),
  address VARCHAR(50),
  pizza_size VARCHAR(10),
  total_cost DECIMAL(6,2),
  description VARCHAR(50),
  isDelivered TINYINT,
  created_at DATETIME,
  updated_at DATETIME,
  PRIMARY KEY (id)
)
