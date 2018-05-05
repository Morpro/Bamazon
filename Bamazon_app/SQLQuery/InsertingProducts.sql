
USE Products;

CREATE TABLE Products(
productN NAME  VARCHAR (30),
departmentName VARCHAR (30),
price INTEGER (100),
stockQuantity INTEGER(100)
	
);

\
INSERT INTO triangle (sidea, sideb) VALUES(1,1),(3,4),(6,8);

INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("ball", "Useless Things" , 15.00 , 125);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("boat", "Outdoors" , 100.00 , 30);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Sundress", "Clothing" , 25.00 , 150);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Shorts", "Clothing" , 25.00 , 200);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Googly Eyes", "Useless Things" , 1.00 , 500);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Playstation 4", "Gaming" , 350.00 , 250);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Xbox One", "Gaming" , 300.00 , 150);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Wii U", "Gaming" , 300.00 , 100);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("T-Shirt", "Clothing" , 20.00 , 225);
INSERT INTO Products (productName,departmentName,price,stockQuantity) VALUES ("Laptop", "Computers" , 800.00 , 650);

SELECT * FROM Products;