create database RMS;

use RMS;

CREATE TABLE Employees (
    EmpId INT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Age INT CHECK (Age > 15 AND Age < 40),
    Date_OF_JOIN DATE NOT NULL,
    PER_ORDER_RATE NUMERIC(10, 2) DEFAULT 100,
	Phone_Number VARCHAR(20),
    Address VARCHAR(255), 
    CONSTRAINT CHK_ORDER_RATE_POSITIVE CHECK (PER_ORDER_RATE >= 0),
    CONSTRAINT CHK_JOIN_DATE CHECK (Date_OF_JOIN <= GETDATE())
);



INSERT INTO Employees (EmpId, Name, Age, Date_OF_JOIN, PER_ORDER_RATE, Phone_Number, Address)
VALUES
    (1, 'John Doe', 28, '2015-01-15', 120.50, '555-1111', '123 Main Street, Cityville'),
    (2, 'Jane Smith', 35, '2018-08-20', 90.75, '555-2222', '456 Oak Avenue, Townburg'),
    (3, 'Bob Johnson', 25, '2017-03-10', 110.25, '555-3333', '789 Pine Lane, Villagetown'),
    (4, 'Alice Brown', 32, '2019-05-05', 80.00, '555-4444', '987 Elm Street, Hamletville'),
    (5, 'Charlie Davis', 28, '2020-09-01', 100.00, '555-5555', '654 Birch Road, Suburbia'),
    (6, 'Eva White', 29, '2020-11-12', 95.50, '555-6666', '321 Cedar Court, Countryside'),
    (7, 'David Lee', 38, '2016-07-03', 150.75, '555-7777', '876 Maple Avenue, Cityburg'),
    (8, 'Sophie Turner', 26, '2014-12-22', 130.25, '555-8888', '234 Pine Street, Townsville'),
    (9, 'Michael Adams', 31, '2020-02-28', 85.00, '555-9999', '567 Oak Lane, Villageville'),
    (10, 'Olivia Moore', 27, '2020-04-18', 115.50, '555-0000', '432 Birch Avenue, Suburbburg');

	CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Age INT,
    Address VARCHAR(255),
    Contact_No VARCHAR(15),
    CustomerType VARCHAR(50)
);


INSERT INTO Customer (CustomerID, Name, Age, Address, Contact_No, CustomerType)
VALUES
    (1, 'zain malik', 30, '789 Park Lane, Citytown', '555-1111', 'Regular Customer'),
    (2, 'Ali raza', 25, '456 Grove Street, Townsville', '555-2222', 'Non-Regular Customer'),
    (3, 'Ahmad Naemm', 35, '123 Maple Avenue, Suburbia', '555-3333', 'Regular Customer'),
    (4, 'Hanan mirza', 28, '987 Cedar Court, Villagetown', '555-4444', 'Non-Regular Customer'),
    (5, 'Shrjeel Ahmad', 32, '654 Birch Road, Countryside', '555-5555', 'Non-Regular Customer'),
    (6, 'Faish', 27, '234 Elm Street, Hamletville', '555-6666', 'Regular Customer'),
    (7, 'Arham Rauf', 40, '876 Pine Lane, Villageville', '555-7777', 'Non-Regular Customer'),
    (8, 'Ali Jutt', 22, '543 Oak Lane, Suburbburg', '555-8888', 'Non-Regular Customer'),
    (9, 'Muthair Hashmi', 33, '321 Cedar Court, Cityburg', '555-9999', 'Regular Customer'),
    (10, 'Fazal Khan', 29, '765 Oak Avenue, Countryside', '555-0000', 'Non-Regular Customer');
	
	CREATE TABLE Food_items (
    FoodID INT PRIMARY KEY,
    FoodName NVARCHAR(255) NOT NULL,
    Price NUMERIC(8, 2) NOT NULL,
    StockNumber INT DEFAULT 10 CHECK (StockNumber >= 0));
INSERT INTO Food_items (FoodID, FoodName, Price, StockNumber)
VALUES
    (1, 'Pizza', 12.99, 50),
    (2, 'Burger', 6.99, 30),
    (3, 'Salad', 8.49, 20),
    (4, 'Pasta', 10.99, 40),
    (5, 'Chicken Sandwich', 9.99, 25),
    (6, 'Ice Cream', 4.99, 60),
    (7, 'Sushi', 14.99, 15),
    (8, 'Steak', 18.99, 10),
    (9, 'Vegetarian Wrap', 7.99, 35),
    (10, 'Shrimp Scampi', 16.99, 18),
	(11, 'Vegetable Stir Fry', 9.49, 25),
    (12, 'Spaghetti Bolognese', 11.99, 30),
    (13, 'Grilled Salmon', 15.99, 20),
    (14, 'Caesar Salad', 7.99, 35),
    (15, 'Mushroom Risotto', 13.49, 22),
    (16, 'Chocolate Cake', 5.99, 40),
    (17, 'Chicken Alfredo', 12.99, 28),
    (18, 'Caprese Sandwich', 8.99, 15),
    (19, 'Fish Tacos', 10.49, 18),
    (20, 'Shrimp and Grits', 14.49, 12),
	(21, 'Biryani', 11.99, 25),
    (22, 'Chicken Karahi', 20.00, 10),
    (23, 'Palak Paneer', 9.99, 30),
    (24, 'Dal Makhani', 8.49, 35),
    (25, 'Dehi bhlly', 7.99, 25);


	
   
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    Date_Of_Order DATE,
    Time_Of_Order DATETIME
);


CREATE TABLE OrderDetails (
    id INT,
    Order_Id INT,
    Food_Id INT,
    Customer_Id INT,
    Food_Quantity INT,
    Employee_Id INT,
	Discount Numeric(5,2) Default 0,
    PRIMARY KEY (id, Order_Id),
    CONSTRAINT FK_ORDERDETAILS_OrderId FOREIGN KEY (Order_Id) REFERENCES Orders (OrderId),
    CONSTRAINT FK_ORDERDETAILS_CustomerId FOREIGN KEY (Customer_Id) REFERENCES Customer (CustomerID),
    CONSTRAINT FK_ORDERDETAILS_FoodId FOREIGN KEY (Food_Id) REFERENCES Food_items (FoodID),
    CONSTRAINT FK_ORDERDETAILS_EmpId FOREIGN KEY (Employee_Id) REFERENCES Employees (EmpId),
    CONSTRAINT CHK_ORDERDETAILS_FoodQuantity CHECK (Food_Quantity >= 0)
);


-- Inserting sample data from January 2023 to August 2023
DECLARE @Counter INT = 1;
DECLARE @OrderDetailId INT = 101; -- Starting value for OrderDetails.id

WHILE @Counter <= 100
BEGIN
    DECLARE @CustomerId INT = FLOOR(RAND() * 10) + 1; -- Random CustomerId
    DECLARE @FoodId INT = FLOOR(RAND() * 25) + 1; -- Random FoodId
    DECLARE @EmployeeId INT = FLOOR(RAND() * 10) + 1; -- Random EmployeeId
    DECLARE @FoodQuantity INT = FLOOR(RAND() * 5) + 1; -- Random Food Quantity
    DECLARE @Discount NUMERIC(5, 2) = 0;

    -- Apply discount for regular customers
    IF EXISTS (SELECT 1 FROM Customer WHERE CustomerID = @CustomerId AND CustomerType = 'Regular Customer')
    BEGIN
        SET @Discount = 5.00; -- $5.00 discount for regular customers
    END;

    DECLARE @Month INT = FLOOR(RAND() * 8) + 1; -- Random month from 1 to 8
    DECLARE @DaysInMonth INT = DAY(EOMONTH('2023-' + CAST(@Month AS NVARCHAR) + '-01')); -- Get the number of days in the selected month

    INSERT INTO Orders (OrderId, Date_Of_Order, Time_Of_Order)
    VALUES
        (@Counter, DATEADD(DAY, FLOOR(RAND() * @DaysInMonth) + 1, '2023-' + CAST(@Month AS NVARCHAR) + '-01'), DATEADD(MINUTE, FLOOR(RAND() * 1440), '00:00:00'));

    INSERT INTO OrderDetails (id, Order_Id, Food_Id, Customer_Id, Food_Quantity, Employee_Id, Discount)
    VALUES
        (@OrderDetailId, @Counter, @FoodId, @CustomerId, @FoodQuantity, @EmployeeId, @Discount);

    SET @Counter = @Counter + 1;
    SET @OrderDetailId = @OrderDetailId + 1;
END;






select * from orders;
select * from OrderDetails;

SELECT COUNT(*) AS RegularCustomerOrders
FROM OrderDetails od
JOIN Orders o ON od.Order_Id = o.OrderId
JOIN Customer c ON od.Customer_Id = c.CustomerID
WHERE c.CustomerType = 'Regular Customer'
  AND o.Date_Of_Order >= '2023-02-01'
  AND o.Date_Of_Order < '2023-03-01';

