CREATE DATABASE COFFEE
USE COFFEE
-- Tao bang nhan vien
CREATE TABLE EMPLOYEE_ENTITY(
    id VARCHAR(10) NOT NULL PRIMARY KEY ,
    firstName VARCHAR(255),
    lastName varchar(255),
    address VARCHAR(255),
    phone VARCHAR(10),
    CCCD VARCHAR(255),
    account VARCHAR(255),
    password VARCHAR(255)
)
-- Tao bang order
CREATE TABLE ORDER_ENTITY(
    ID VARCHAR(36) NOT NULL PRIMARY KEY ,
    updateAT DATETIME,
    note  TEXT,
    tableCODE INT,
    importerID VARCHAR(10),
    FOREIGN KEY (importerID) REFERENCES EMPLOYEE_ENTITY(id)
)
-- Tao bang san pham
CREATE  TABLE PRODUCT_ENTITY(
    id VARCHAR(10) NOT NULL PRIMARY KEY ,
    name VARCHAR(255),
    price INT,
    description TEXT,
)
-- Tao bang giao dich
CREATE TABLE TRANSACTION_ENTITY(
    id VARCHAR(10) NOT NULL PRIMARY KEY,
    description TEXT,
    supplierName VARCHAR(255),
    time DATETIME,
    importerID VARCHAR(10),
    count INT,
    FOREIGN KEY (importerID) REFERENCES EMPLOYEE_ENTITY(ID)
)
-- Tao bang trung gian cua don hang va san pham
CREATE  TABLE ORDER_PRODUCT_ENTITY(
    count INT,
    orderID VARCHAR(36),
    productID VARCHAR(10),
    FOREIGN KEY (orderID) REFERENCES ORDER_ENTITY(ID),
    FOREIGN KEY (productID) REFERENCES PRODUCT_ENTITY(id),
    PRIMARY KEY (orderID, productID)
)

