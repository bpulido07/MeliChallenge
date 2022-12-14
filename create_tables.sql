CREATE SCHEMA PRUEBASBRANDON ;

CREATE TABLE PRUEBASBRANDON.CUSTOMERS (
ID_CUSTOMERS INT NOT NULL AUTO_INCREMENT,
EMAIL VARCHAR(50) NOT NULL,
FIRST_NAME VARCHAR(50) NOT NULL,
LAST_NAME VARCHAR(50) NOT NULL,
SEX ENUM("M", "F", "O") NOT NULL,
ADDRESS VARCHAR(100) NULL,
DATE_OF_BIRTH DATE NULL,
MOB_PHONE VARCHAR(14) NULL,
PRIMARY KEY (ID_CUSTOMERS)
);

CREATE TABLE PRUEBASBRANDON.ITEMS (
ID_ITEMS INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(100) NOT NULL,
STATUS VARCHAR (10) DEFAULT 'AVAILABLE' NOT NULL,
PRICE_IN_CENTS INTEGER NOT NULL,
MEASURE INTEGER NOT NULL,
STOCK INTEGER NOT NULL,
SELLER_ID INTEGER NOT NULL UNIQUE,
CREATED_AT TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID_ITEMS),
 FOREIGN KEY (SELLER_ID) REFERENCES CUSTOMERS (ID_CUSTOMERS)
);

CREATE TABLE PRUEBASBRANDON.CATEGORIES (
ID_CATEGORIA INT NOT NULL AUTO_INCREMENT,
NAME VARCHAR(50) NOT NULL,
PRIMARY KEY (ID_CATEGORIA)
);
 
 CREATE TABLE PRUEBASBRANDON.ITEMS_CATEGORIES (
 ID_TIEMS_CATE INT NOT NULL AUTO_INCREMENT,
 ITEM_ID INTEGER NOT NULL UNIQUE,
 CATEGORIA_ID INTEGER NOT NULL UNIQUE,
PRIMARY KEY (ID_TIEMS_CATE),
 FOREIGN KEY (ITEM_ID) REFERENCES ITEMS (ID_ITEMS),
 FOREIGN KEY (CUSTOMER_ID) REFERENCES CATEGORIES (ID_CATEGORIA))
;