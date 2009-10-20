CREATE TABLE Product (maker CHAR(1), model NUMBER(4), type CHAR(7), PRIMARY KEY(model) )
CREATE TABLE PC (model NUMBER(4), speed REAL, ram NUMBER(4), hd NUMBER(4), price NUMBER(4), PRIMARY KEY (model), FOREIGN KEY(model) REFERENCES Product);
CREATE TABLE Laptop (model NUMBER(4), speed REAL, ram NUMBER(4), hd NUMBER(4), screen REAL, price NUMBER(4), PRIMARY KEY (model), FOREIGN KEY(model) REFERENCES Product);
CREATE TABLE Printer (model NUMBER(4), color CHAR(1), type VARCHAR(7), price NUMBER(4), PRIMARY KEY (model), FOREIGN KEY(model) REFERENCES Product);


