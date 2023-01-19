-- CONSTRAINTS

-- 				--------NOT NULL--------
USE sql_datafullstack;

CREATE TABLE persons (
			ID INT NOT NULL,
            First_name VARCHAR(15) NOT NULL,
            Last_name VARCHAR(8) NULL,
            Age INT NULL
            )

SELECT *
FROM persons;

-- 				--------UNIQUE CONSTRAINTS--------

DROP TABLE persons;

CREATE TABLE persons(
			ID INT NOT NULL,
            First_name VARCHAR(19),
            Last_name VARCHAR(20),
            Age INT NOT NULL,
            UNIQUE(ID)
            );

INSERT INTO persons (First_name, Last_name, Age)
VALUES ('Aryana', 'Grande', 20); 

SELECT *
FROM persons;

-- 				-------- DEFAULT CONSTRAINTS --------


DROP TABLE persons;

CREATE TABLE persons(
			ID INT NOT NULL DEFAULT 100,
            First_name VARCHAR(19),
            Last_name VARCHAR(20),
            Age INT NOT NULL,
            UNIQUE(ID)
            );

INSERT INTO persons (First_name, Last_name, Age)
VALUES ('John', 'Mason', 28);

-- 				-------- PRIMARY KEY --------

CREATE TABLE Customers
(
Name VARCHAR(7),
Product VARCHAR(13),
Product_ID INT PRIMARY KEY
);

-- 				-------- ALTERING EXISTING TABLE(Adding a constraint) --------

ALTER TABLE persons
ADD PRIMARY KEY(ID);

-- Alter table persons Age --> become not null
ALTER TABLE persons
MODIFY COLUMN Age INT NOT NULL;

-- 				-------- ALTERING EXISTING TABLE(Dropping a constraint) --------
DROP TABLE passengers;
CREATE TABLE passengers
(
first_name VARCHAR(10),
last_name VARCHAR(10),
mobile INT,
ticket_number VARCHAR(5)
)

SELECT *
FROM passengers;

ALTER TABLE passengers
ADD CONSTRAINT UC_passengers UNIQUE (mobile, ticket_number);

ALTER TABLE passengers
DROP INDEX UC_passengers;


-- 				-------- FOREIGN KEY --------

CREATE TABLE customers
(
Customer_ID INT NOT NULL,
First_name VARCHAR(20),
Last_name VARCHAR(20),
Age INT,
PRIMARY KEY(Customer_ID)
);

CREATE TABLE orders
(
order_ID INT NOT NULL,
order_Number INT NOT NULL,
Customer_ID INT,
PRIMARY KEY(order_ID),
FOREIGN KEY(Customer_ID) REFERENCES customers(Customer_ID)
);

