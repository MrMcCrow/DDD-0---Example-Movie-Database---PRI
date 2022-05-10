--
-- Table structure for table `actor`
--

CREATE TABLE actor (
  actor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `address`
--

CREATE TABLE address (
  address_id INTEGER PRIMARY KEY AUTOINCREMENT,
  address VARCHAR(50) NOT NULL,
  address2 VARCHAR(50) DEFAULT NULL,
  district VARCHAR(20) NOT NULL,
  city_id INTEGER NOT NULL,
  postal_code VARCHAR(10) DEFAULT NULL,
  phone VARCHAR(20) NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `category`
--

CREATE TABLE category (
  category_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25) NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `city`
--

CREATE TABLE city (
  city_id INTEGER PRIMARY KEY AUTOINCREMENT,
  city VARCHAR(50) NOT NULL,
  country_id INTEGER NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `country`
--

CREATE TABLE country (
  country_id INTEGER PRIMARY KEY AUTOINCREMENT,
  country VARCHAR(50) NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `customer`
--

CREATE TABLE customer (
  customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
  store_id INTEGER NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address_id INTEGER,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  create_date DATETIME NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `film`
--

CREATE TABLE film (
  film_id INTEGER PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT DEFAULT NULL,
  release_year YEAR DEFAULT NULL,
  language_id INTEGER NOT NULL,
  original_language_id INTEGER DEFAULT NULL,
  rental_duration TINYINT UNSIGNED NOT NULL DEFAULT 3,
  rental_rate DECIMAL(4,2) NOT NULL DEFAULT 4.99,
  length SMALLINT DEFAULT NULL,
  replacement_cost DECIMAL(5,2) NOT NULL DEFAULT 19.99,
  rating varchar(10),
  special_features varchar(20) DEFAULT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `film_actor`
--

CREATE TABLE film_actor (
  --film_actor_id INTEGER PRIMARY KEY AUTOINCREMENT
  actor_id INTEGER NOT NULL,
  film_id INTEGER NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `film_category`
--

CREATE TABLE film_category (
  film_id INTEGER NOT NULL,
  category_id INTEGER NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `film_text`
-- 
-- InnoDB added FULLTEXT support in 5.6.10. If you use an
-- earlier version, then consider upgrading (recommended) or 
-- changing InnoDB to MyISAM as the film_text engine
--

CREATE TABLE film_text (
  film_id INTEGER NOT NULL, --PRIMARY KEY AUTOINCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  last_update TIMESTAMP
);


--
-- Table structure for table `inventory`
--

CREATE TABLE inventory (
  inventory_id INTEGER PRIMARY KEY AUTOINCREMENT,
  film_id INTEGER NOT NULL,
  store_id INTEGER NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `language`
--

CREATE TABLE language (
  language_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name CHAR(20) NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `payment`
--

CREATE TABLE payment (
  payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INTEGER NOT NULL,
  staff_id INTEGER NOT NULL,
  rental_id INTEGER DEFAULT NULL,
  amount DECIMAL(5,2) NOT NULL,
  payment_date DATETIME NOT NULL,
  last_update TIMESTAMP
);


--
-- Table structure for table `rental`
--

CREATE TABLE rental (
  rental_id INTEGER PRIMARY KEY AUTOINCREMENT,
  rental_date DATETIME NOT NULL,
  inventory_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  return_date DATETIME DEFAULT NULL,
  staff_id INTEGER NOT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `staff`
--

CREATE TABLE staff (
  staff_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  address_id INTEGER,
  picture BLOB DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  store_id INTEGER NOT NULL,
  active BOOLEAN NOT NULL DEFAULT TRUE,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(40) DEFAULT NULL,
  last_update TIMESTAMP
);

--
-- Table structure for table `store`
--

CREATE TABLE store (
  store_id INTEGER PRIMARY KEY AUTOINCREMENT,
  manager_staff_id INTEGER NOT NULL,
  address_id INTEGER NOT NULL,
  last_update TIMESTAMP
);