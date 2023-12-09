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
    (10, 'Olivia Moore', 27, '2020-04-18', 115.50, '555-0000', '432 Birch Avenue, Suburbburg'),
    (11, 'Ahmed Khan', 33, '2016-05-15', 110.00, '555-1111', '789 Crescent Street, Cityville'),
    (12, 'Fatima Ali', 28, '2019-08-20', 95.25, '555-2222', '456 Moonlight Avenue, Townburg'),
    (13, 'Zainab Malik', 30, '2018-03-10', 120.75, '555-3333', '123 Star Lane, Villagetown'),
    (14, 'Ali Hasan', 29, '2020-06-05', 85.50, '555-4444', '987 Sky Street, Hamletville'),
    (15, 'Aisha Khan', 26, '2021-10-01', 100.00, '555-5555', '654 Horizon Road, Suburbia'),
    (16, 'Omar Farooq', 34, '2017-11-12', 130.75, '555-6666', '321 Sunrise Court, Countryside'),
    (17, 'Sana Ahmed', 31, '2015-04-03', 75.25, '555-7777', '876 Hill Avenue, Cityburg'),
    (18, 'Bilal Qureshi', 27, '2016-12-22', 110.50, '555-8888', '234 Meadow Street, Townsville'),
    (19, 'Naima Ali', 32, '2022-02-28', 88.00, '555-9999', '567 Sunset Lane, Villageville'),
    (20, 'Yusuf Khan', 25, '2018-04-18', 105.50, '555-0000', '432 Dawn Avenue, Suburbburg'),
    (21, 'Safia Akhtar', 29, '2017-06-15', 95.00, '555-1122', '345 Starlight Street, Citytown'),
    (22, 'Ismail Ahmed', 36, '2019-09-20', 115.75, '555-2233', '678 Twilight Avenue, Townsville'),
    (23, 'Ayesha Malik', 28, '2020-02-10', 90.25, '555-3344', '901 Galaxy Lane, Villagetown'),
    (24, 'Kamran Ali', 30, '2021-05-05', 105.00, '555-4455', '432 Comet Street, Hamletville'),
    (25, 'Hina Khan', 27, '2022-08-01', 85.50, '555-5566', '765 Nebula Road, Suburbia'),
    (26, 'Ibrahim Hasan', 35, '2016-11-12', 120.75, '555-6677', '234 Meteor Court, Countryside'),
    (27, 'Zara Ahmed', 29, '2017-07-03', 98.25, '555-7788', '876 Orbit Avenue, Cityburg'),
    (28, 'Tariq Qureshi', 38, '2018-12-22', 125.50, '555-8899', '321 Galaxy Street, Townsville'),
    (29, 'Nazia Ali', 31, '2023-02-28', 80.00, '555-9900', '567 Stardust Lane, Villageville'),
    (30, 'Rizwan Khan', 27, '2022-04-18', 110.50, '555-0011', '432 Infinity Avenue, Suburbburg');


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
    (10, 'Fazal Khan', 29, '765 Oak Avenue, Countryside', '555-0000', 'Non-Regular Customer'),
	(11, 'Sara Malik', 28, '789 Pine Lane, Citytown', '555-1111', 'Regular Customer'),
    (12, 'Imran Raza', 25, '456 Oak Street, Townsville', '555-2222', 'Non-Regular Customer'),
    (13, 'Ayesha Naemm', 35, '123 Maple Avenue, Suburbia', '555-3333', 'Regular Customer'),
    (14, 'Bilal Mirza', 28, '987 Cedar Court, Villagetown', '555-4444', 'Non-Regular Customer'),
    (15, 'Sadia Ahmad', 32, '654 Birch Road, Countryside', '555-5555', 'Non-Regular Customer'),
    (16, 'Kamran Faish', 27, '234 Elm Street, Hamletville', '555-6666', 'Regular Customer'),
    (17, 'Hira Rauf', 40, '876 Pine Lane, Villageville', '555-7777', 'Non-Regular Customer'),
    (18, 'Ahmed Jutt', 22, '543 Oak Lane, Suburbburg', '555-8888', 'Non-Regular Customer'),
    (19, 'Amna Hashmi', 33, '321 Cedar Court, Cityburg', '555-9999', 'Regular Customer'),
    (20, 'Saad Khan', 29, '765 Oak Avenue, Countryside', '555-0000', 'Non-Regular Customer'),
    (21, 'Fariha Zain', 31, '234 Maple Lane, Citytown', '555-1111', 'Regular Customer'),
    (22, 'Nadeem Ali', 26, '567 Grove Street, Townsville', '555-2222', 'Non-Regular Customer'),
    (23, 'Zahra Malik', 35, '890 Elm Avenue, Suburbia', '555-3333', 'Regular Customer'),
    (24, 'Aamir Mirza', 28, '123 Birch Court, Villagetown', '555-4444', 'Non-Regular Customer'),
    (25, 'Amina Ahmad', 32, '765 Cedar Road, Countryside', '555-5555', 'Non-Regular Customer'),
    (26, 'Farhan Faish', 27, '432 Pine Street, Hamletville', '555-6666', 'Regular Customer'),
    (27, 'Nida Rauf', 40, '654 Oak Lane, Villageville', '555-7777', 'Non-Regular Customer'),
    (28, 'Aliya Jutt', 22, '876 Cedar Avenue, Suburbburg', '555-8888', 'Non-Regular Customer'),
    (29, 'Rizwan Hashmi', 33, '321 Elm Lane, Cityburg', '555-9999', 'Regular Customer'),
    (30, 'Hina Khan', 29, '543 Birch Court, Suburbia', '555-0000', 'Non-Regular Customer'),
    (31, 'Sami Malik', 28, '890 Pine Lane, Citytown', '555-1111', 'Regular Customer'),
    (32, 'Aisha Raza', 25, '456 Grove Street, Townsville', '555-2222', 'Non-Regular Customer'),
    (33, 'Noman Naemm', 35, '123 Maple Avenue, Suburbia', '555-3333', 'Regular Customer'),
    (34, 'Nadia Mirza', 28, '987 Cedar Court, Villagetown', '555-4444', 'Non-Regular Customer'),
    (35, 'Bilal Ahmad', 32, '654 Birch Road, Countryside', '555-5555', 'Non-Regular Customer'),
    (36, 'Rukhsar Faish', 27, '234 Elm Street, Hamletville', '555-6666', 'Regular Customer'),
    (37, 'Saud Rauf', 40, '876 Pine Lane, Villageville', '555-7777', 'Non-Regular Customer'),
    (38, 'Nashit Jutt', 22, '543 Oak Lane, Suburbburg', '555-8888', 'Non-Regular Customer'),
    (39, 'Areeba Hashmi', 33, '321 Cedar Court, Cityburg', '555-9999', 'Regular Customer'),
    (40, 'Babar Khan', 29, '765 Oak Avenue, Countryside', '555-0000', 'Non-Regular Customer');
	
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
    (25, 'Dehi bhlly', 7.99, 25),
    (26, 'Tandoori Chicken', 14.49, 25),
    (27, 'Greek Salad', 9.99, 30),
    (28, 'Lobster Bisque', 16.99, 15),
    (29, 'Beef Tacos', 11.49, 20),
    (30, 'Tomato Basil Pasta', 12.99, 22),
    (31, 'Fried Rice', 8.99, 18),
    (32, 'Cheese Pizza', 10.99, 25),
    (33, 'Veggie Burger', 7.49, 28),
    (34, 'Clam Chowder', 13.99, 12),
    (35, 'Pho Noodle Soup', 9.99, 25),
    (36, 'Cobb Salad', 11.49, 30),
    (37, 'Hawaiian Pizza', 12.99, 20),
    (38, 'Shawarma Wrap', 8.49, 35),
    (39, 'Cherry Cheesecake', 6.99, 40),
    (40, 'Mango Lassi', 4.49, 50),
    (41, 'Chicken Tikka Masala', 15.99, 18),
    (42, 'Spinach and Artichoke Dip', 7.99, 22),
    (43, 'Pineapple Fried Rice', 10.49, 15),
    (44, 'Avocado Toast', 9.49, 28),
    (45, 'Mango Sorbet', 5.49, 35);

Drop table OrderDetails;
  Drop table OrdersPayment;
  Drop table Orders;
  Drop table Food_items;
  Drop table Employees;
  Drop table Customer;
  Drop table Reservations;

	
 
-- Create Orders table
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    Date_Of_Order DATE,
    Time_Of_Order TIME
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


CREATE TABLE OrdersPayment (
    id INT PRIMARY KEY,
    Order_Id INT,
    Status VARCHAR(50),
    PaymentMethod VARCHAR(50),
    -- Add more columns as needed
    CONSTRAINT FK_ORDERSPAYMENT_OrderDetailsId 
        FOREIGN KEY (id, Order_Id) 
        REFERENCES OrderDetails (id, Order_Id)
);

DECLARE @Counter INT = 1;
DECLARE @OrderDetailId INT = 101;

WHILE @Counter <= 4000
BEGIN
    DECLARE @CustomerId INT = FLOOR(RAND() * 40) + 1;
    DECLARE @FoodId INT = FLOOR(RAND() * 45) + 1;
    DECLARE @EmployeeId INT = FLOOR(RAND() * 30) + 1;
    DECLARE @FoodQuantity INT = FLOOR(RAND() * 5) + 1;
    DECLARE @Discount NUMERIC(5, 2) = 0;

    IF EXISTS (SELECT 1 FROM Customer WHERE CustomerID = @CustomerId AND CustomerType = 'Regular Customer')
    BEGIN
        SET @Discount = 5.00;
    END;

    DECLARE @Month INT = FLOOR(RAND() * 12) + 1;
    DECLARE @DaysInMonth INT = DAY(EOMONTH('2023-' + CAST(@Month AS NVARCHAR) + '-01'));
    DECLARE @RandomMinutes INT = FLOOR(RAND() * 1440);

    INSERT INTO Orders (OrderId, Date_Of_Order, Time_Of_Order)
    VALUES
        (@Counter, DATEADD(DAY, FLOOR(RAND() * @DaysInMonth) + 1, '2023-' + CAST(@Month AS NVARCHAR) + '-01'), 
        DATEADD(MINUTE, @RandomMinutes, '00:00:00'));

    INSERT INTO OrderDetails (id, Order_Id, Food_Id, Customer_Id, Food_Quantity, Employee_Id, Discount)
    VALUES
        (@OrderDetailId, @Counter, @FoodId, @CustomerId, @FoodQuantity, @EmployeeId, @Discount);

    -- Generate payment status and method randomly
    DECLARE @CancellationChance INT = FLOOR(RAND() * 10) + 1; -- 1 out of 10 chance for cancellation
    DECLARE @PaymentStatus VARCHAR(50) = CASE WHEN @CancellationChance = 1 THEN 'Cancelled' ELSE 'Fulfilled' END;
    DECLARE @PaymentMethod VARCHAR(50) = CASE WHEN @PaymentStatus = 'Fulfilled' THEN 
                                               CASE WHEN RAND() > 0.5 THEN 'Cash' ELSE 'Card' END 
                                             ELSE NULL END;

    INSERT INTO OrdersPayment (id, Order_Id, Status, PaymentMethod)
    VALUES
        (@OrderDetailId, @Counter, @PaymentStatus, @PaymentMethod);

    SET @Counter = @Counter + 1;
    SET @OrderDetailId = @OrderDetailId + 1;
END;

select * from Orders;
select * from OrderDetails;
select * from OrdersPayment;







-- Drop tables if they exist
-- Drop tables if they exist
DROP TABLE IF EXISTS Reservations_Payment;
DROP TABLE IF EXISTS Reservations;

-- Create Reservations table
CREATE TABLE Reservations (
    ReservationId INT PRIMARY KEY,
    Customer_Id INT,
    Reservation_Date DATE,
    Reservation_Time TIME,
    Table_Number INT,
    CONSTRAINT FK_RESERVATIONS_CustomerId FOREIGN KEY (Customer_Id) REFERENCES Customer (CustomerID)
);

-- Create Reservations_Payment table
CREATE TABLE Reservations_Payment (
    id INT PRIMARY KEY,
    Res_id INT,
    Status VARCHAR(255),
    Discount DECIMAL(10,2),
    CONSTRAINT FK_RESERVATIONSPAYMENT_ResId FOREIGN KEY (Res_id) REFERENCES Reservations (ReservationId)
);

-- Generate random data for Reservations and Reservations_Payment
DECLARE @Counter INT = 1;
DECLARE @ReservationId INT = 1;

WHILE @Counter <= 500 -- Generate 500 rows for Reservations
BEGIN
    DECLARE @CustomerId INT = FLOOR(RAND() * 40) + 1;
    DECLARE @TableNumber INT = FLOOR(RAND() * 15) + 1;
    DECLARE @Month INT = FLOOR(RAND() * 12) + 1;
    DECLARE @DaysInMonth INT = DAY(EOMONTH('2023-' + CAST(@Month AS NVARCHAR) + '-01'));
    DECLARE @RandomMinutes INT = FLOOR(RAND() * 1440);

    INSERT INTO Reservations (ReservationId, Customer_Id, Reservation_Date, Reservation_Time, Table_Number)
    VALUES
        (@ReservationId, @CustomerId, DATEADD(DAY, FLOOR(RAND() * @DaysInMonth) + 1, '2023-' + CAST(@Month AS NVARCHAR) + '-01'), 
        DATEADD(MINUTE, @RandomMinutes, '00:00:00'), @TableNumber);

    -- Get customer type and determine discount
    DECLARE @CustomerType VARCHAR(50) = (SELECT CustomerType FROM Customer WHERE CustomerID = @CustomerId);
    DECLARE @Discount DECIMAL(10, 2) = CASE WHEN @CustomerType = 'Regular Customer' AND RAND() > 0.9 THEN 10.00 ELSE 0.00 END;

    -- Generate random data for Reservations_Payment
    DECLARE @PaymentStatus VARCHAR(255) = CASE WHEN RAND() > 0.995 THEN 'Cancelled' ELSE 'Succeeded' END;

    INSERT INTO Reservations_Payment (id, Res_id, Status, Discount)
    VALUES
        (CAST(@Counter AS NVARCHAR), @ReservationId, @PaymentStatus, @Discount);

    SET @Counter = @Counter + 1;
    SET @ReservationId = @ReservationId + 1;
END;



select * from Reservations;
select * from Reservations_Payment;


