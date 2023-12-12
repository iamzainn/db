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
	
	CREATE TABLE Food_item (
    FoodID INT PRIMARY KEY,
    FoodName NVARCHAR(255) NOT NULL
);
CREATE TABLE FoodItemsDetails (
    FoodDetailsID varchar(10) PRIMARY KEY,
    Food_ID INT FOREIGN KEY REFERENCES Food_item(FoodID),
    StockNumber INT DEFAULT 10 CHECK (StockNumber >= 0),
    CostPrice NUMERIC(8, 2) NOT NULL,
    SellPrice NUMERIC(8, 2) NOT NULL CHECK (SellPrice >= 0),
    CONSTRAINT CHK_COST_LESS_THAN_SELL CHECK (CostPrice <= SellPrice)
);

INSERT INTO Food_item (FoodID, FoodName)
VALUES
    (1, 'Pizza'),
    (2, 'Burger'),
    (3, 'Salad'),
    (4, 'Pasta'),
    (5, 'Chicken Sandwich'),
    (6, 'Ice Cream'),
    (7, 'Sushi'),
    (8, 'Steak'),
    (9, 'Vegetarian Wrap'),
    (10, 'Shrimp Scampi'),
    (11, 'Vegetable Stir Fry'),
    (12, 'Spaghetti Bolognese'),
    (13, 'Grilled Salmon'),
    (14, 'Caesar Salad'),
    (15, 'Mushroom Risotto'),
    (16, 'Chocolate Cake'),
    (17, 'Chicken Alfredo'),
    (18, 'Caprese Sandwich'),
    (19, 'Fish Tacos'),
    (20, 'Shrimp and Grits'),
    (21, 'Biryani'),
    (22, 'Chicken Karahi'),
    (23, 'Palak Paneer'),
    (24, 'Dal Makhani'),
    (25, 'Dehi bhlly'),
    (26, 'Tandoori Chicken'),
    (27, 'Greek Salad'),
    (28, 'Lobster Bisque'),
    (29, 'Beef Tacos'),
    (30, 'Tomato Basil Pasta'),
    (31, 'Fried Rice'),
    (32, 'Cheese Pizza'),
    (33, 'Veggie Burger'),
    (34, 'Clam Chowder'),
    (35, 'Pho Noodle Soup'),
    (36, 'Cobb Salad'),
    (37, 'Hawaiian Pizza'),
    (38, 'Shawarma Wrap'),
    (39, 'Cherry Cheesecake'),
    (40, 'Mango Lassi'),
    (41, 'Chicken Tikka Masala'),
    (42, 'Spinach and Artichoke Dip'),
    (43, 'Pineapple Fried Rice'),
    (44, 'Avocado Toast'),
    (45, 'Mango Sorbet');

	INSERT INTO FoodItemsDetails (FoodDetailsID, Food_ID, StockNumber, CostPrice, SellPrice)
VALUES
    ('F1', 1, 50, 12.99, 15.04),   -- Pizza
    ('F2', 2, 30, 6.99, 8.04),     -- Burger
    ('F3', 3, 20, 8.49, 9.76),     -- Salad
    ('F4', 4, 40, 10.99, 12.64),   -- Pasta
    ('F5', 5, 25, 9.99, 11.49),    -- Chicken Sandwich
    ('F6', 6, 60, 4.99, 5.74),     -- Ice Cream
    ('F7', 7, 15, 14.99, 17.24),   -- Sushi
    ('F8', 8, 10, 18.99, 21.84),   -- Steak
    ('F9', 9, 35, 7.99, 9.19),     -- Vegetarian Wrap
    ('F10', 10, 18, 16.99, 19.54), -- Shrimp Scampi
    ('F11', 11, 25, 9.49, 10.91),  -- Vegetable Stir Fry
    ('F12', 12, 30, 11.99, 13.79), -- Spaghetti Bolognese
    ('F13', 13, 20, 15.99, 18.39), -- Grilled Salmon
    ('F14', 14, 35, 7.99, 9.19),   -- Caesar Salad
    ('F15', 15, 22, 13.49, 15.51), -- Mushroom Risotto
    ('F16', 16, 40, 5.99, 6.89),   -- Chocolate Cake
    ('F17', 17, 28, 12.99, 14.94), -- Chicken Alfredo
    ('F18', 18, 15, 8.99, 10.34),  -- Caprese Sandwich
    ('F19', 19, 18, 10.49, 12.11), -- Fish Tacos
    ('F20', 20, 12, 14.49, 16.71), -- Shrimp and Grits
    ('F21', 21, 25, 11.99, 13.79), -- Biryani
    ('F22', 22, 10, 20.00, 23.00), -- Chicken Karahi
    ('F23', 23, 30, 9.99, 11.49),  -- Palak Paneer
    ('F24', 24, 35, 8.49, 9.77),   -- Dal Makhani
    ('F25', 25, 25, 7.99, 9.19),   -- Dehi bhlly
    ('F26', 26, 25, 14.49, 16.71), -- Tandoori Chicken
    ('F27', 27, 30, 9.99, 11.49),  -- Greek Salad
    ('F28', 28, 15, 16.99, 19.54), -- Lobster Bisque
    ('F29', 29, 20, 11.49, 13.24), -- Beef Tacos
    ('F30', 30, 22, 12.99, 14.94), -- Tomato Basil Pasta
    ('F31', 31, 18, 8.99, 10.34),  -- Fried Rice
    ('F32', 32, 25, 10.99, 12.64), -- Cheese Pizza
    ('F33', 33, 28, 7.49, 8.61),   -- Veggie Burger
    ('F34', 34, 12, 13.99, 16.09), -- Clam Chowder
    ('F35', 35, 25, 9.99, 11.49),  -- Pho Noodle Soup
    ('F36', 36, 30, 11.49, 13.24), -- Cobb Salad
    ('F37', 37, 20, 12.99, 14.94), -- Hawaiian Pizza
    ('F38', 38, 35, 8.49, 9.77),   -- Shawarma Wrap
    ('F39', 39, 40, 6.99, 8.04),   -- Cherry Cheesecake
    ('F40', 40, 50, 4.49, 5.16),   -- Mango Lassi
    ('F41', 41, 18, 15.99, 18.39), -- Chicken Tikka Masala
    ('F42', 42, 22, 7.99, 9.19),   -- Spinach and Artichoke Dip
    ('F43', 43, 15, 10.49, 12.11), -- Pineapple Fried Rice
    ('F44', 44, 28, 9.49, 10.91),  -- Avocado Toast
    ('F45', 45, 35, 5.49, 6.31);   -- Mango Sorbet

	

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    Date_Of_Order DATE,
    Time_Of_Order TIME
);


CREATE TABLE OrderDetails (
    id INT,
    Order_Id INT,
    Served_Food_Id INT,
    Customer_Id INT,
    Food_Quantity INT,
    OrderHandleBy_Employee_Id INT,
	Discount Numeric(5,2) Default 0,
    PRIMARY KEY (id, Order_Id),
    CONSTRAINT FK_ORDERDETAILS_OrderId FOREIGN KEY (Order_Id) REFERENCES Orders (OrderId),
    CONSTRAINT FK_ORDERDETAILS_CustomerId FOREIGN KEY (Customer_Id) REFERENCES Customer (CustomerID),
    CONSTRAINT FK_ORDERDETAILS_FoodId FOREIGN KEY (Served_Food_Id) REFERENCES Food_item (FoodID),
    CONSTRAINT FK_ORDERDETAILS_EmpId FOREIGN KEY (OrderHandleBy_Employee_Id) REFERENCES Employees (EmpId),
    CONSTRAINT CHK_ORDERDETAILS_FoodQuantity CHECK (Food_Quantity >= 0)
);


CREATE TABLE OrdersPayment (
    id INT PRIMARY KEY,
    Order_Id INT,
    Status VARCHAR(50),
    PaymentMethod VARCHAR(50),
   
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

    INSERT INTO OrderDetails (id, Order_Id, Served_Food_Id, Customer_Id, Food_Quantity, OrderHandleBy_Employee_Id, Discount)
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


CREATE TABLE Reservations (
    ReservationId INT PRIMARY KEY,
    Customer_Id INT,
    Reservation_Date DATE,
	Payment_On_ReservationTime varchar(10),
	Discount_On_Reservation Decimal (10,2),
    Reservation_Time TIME,
    Table_Number INT,
    CONSTRAINT FK_RESERVATIONS_CustomerId FOREIGN KEY (Customer_Id) REFERENCES Customer (CustomerID)
);




DECLARE @Counter INT = 1;

WHILE @Counter <= 500 -- You can adjust the number of rows as needed
BEGIN
    DECLARE @CustomerId INT = FLOOR(RAND() * 40) + 1; -- Random CustomerId
    DECLARE @IsRegularCustomer BIT = CASE WHEN EXISTS (SELECT 1 FROM Customer WHERE CustomerID = @CustomerId AND CustomerType = 'Regular Customer') THEN 1 ELSE 0 END;
    DECLARE @Discount DECIMAL(10,2) = CASE WHEN @IsRegularCustomer = 1 THEN 10.00 ELSE 0.00 END;
    DECLARE @PaymentOnReservationTime VARCHAR(10) = CASE WHEN RAND() > 0.5 THEN 'yes' ELSE 'no' END;

    INSERT INTO Reservations (ReservationId, Customer_Id, Reservation_Date, Payment_On_ReservationTime, Discount_On_Reservation, Reservation_Time, Table_Number)
    VALUES
        (@Counter, @CustomerId, DATEADD(DAY, FLOOR(RAND() * 365), '2023-01-01'), @PaymentOnReservationTime, @Discount, DATEADD(MINUTE, FLOOR(RAND() * 1440), '00:00:00'), FLOOR(RAND() * 10) + 1);

    SET @Counter = @Counter + 1;
END;

select * from Reservations;


--reports

--1 PROCEDURE MostPopularItemsMonthly

CREATE PROCEDURE MostPopularItemsMonthly
AS
BEGIN
    SET NOCOUNT ON;

    IF OBJECT_ID('tempdb..#TempResults') IS NOT NULL
        DROP TABLE #TempResults;

    CREATE TABLE #TempResults (
        OrderMonth INT,
        PopularItem NVARCHAR(255),
        OrderCount INT
    );

    INSERT INTO #TempResults (OrderMonth, PopularItem, OrderCount)
    SELECT
        MONTH(o.Date_Of_Order) AS OrderMonth,
        fi.FoodName AS PopularItem,
        COUNT(od.Served_Food_ID) AS OrderCount
    FROM
        Orders o
    JOIN
        OrderDetails od ON o.OrderId = od.Order_Id
    JOIN
        Food_item fi ON od.Served_Food_ID = fi.FoodID
    GROUP BY
        MONTH(o.Date_Of_Order), fi.FoodName;

    SELECT * FROM #TempResults;

    DROP TABLE #TempResults;
END;

EXEC MostPopularItemsMonthly;

--2 

CREATE PROCEDURE GenerateMonthlyRevenue
AS
BEGIN
    WITH RankedRevenue AS (
        SELECT
            MONTH(o.Date_Of_Order) AS OrderMonth,
            CASE 
                WHEN op.Status = 'Fulfilled' THEN 'Success'
                ELSE 'Failure'
            END AS OrderStatus,
            SUM(od.Food_Quantity * fid.SellPrice) AS Revenue,
            ROW_NUMBER() OVER (PARTITION BY MONTH(o.Date_Of_Order) ORDER BY SUM(od.Food_Quantity * fid.SellPrice) DESC) AS RN
        FROM
            Orders o
        JOIN
            OrderDetails od ON o.OrderId = od.Order_Id
        JOIN
            Food_item fi ON od.Served_Food_Id = fi.FoodID
        JOIN
            FoodItemsDetails fid ON fi.FoodID = fid.Food_ID
        JOIN
            OrdersPayment op ON o.OrderId = op.Order_Id
        GROUP BY
            MONTH(o.Date_Of_Order), 
            CASE 
                WHEN op.Status = 'Fulfilled' THEN 'Success'
                ELSE 'Failure'
            END
    )
    SELECT
        OrderMonth,
        OrderStatus,
        Revenue
    INTO
        MonthlyRevenue
    FROM
        RankedRevenue
    WHERE
        RN = 1;
END;

EXEC GenerateMonthlyRevenue;
SELECT * FROM MonthlyRevenue;

	--3 Monthly salary per employee.
	CREATE PROCEDURE GenerateEmployeePerformanceReport
AS
BEGIN
    SELECT
        e.EmpId,
        e.Name AS EmployeeName,
        MONTH(o.Date_Of_Order) AS OrderMonth,
        COUNT(od.Served_Food_Id) AS OrdersServed,
        COUNT(od.Served_Food_Id) * MAX(e.PER_ORDER_RATE) AS MonthlySalary
    INTO
        EmployeePerformanceReport
    FROM
        Employees e
    JOIN
        OrderDetails od ON e.EmpId = od.OrderHandleBy_Employee_Id
    JOIN
        Orders o ON od.Order_Id = o.OrderId
    GROUP BY
        e.EmpId, e.Name, MONTH(o.Date_Of_Order)
    ORDER BY
        OrderMonth, EmployeeName;
END;

EXEC GenerateEmployeePerformanceReport;

-- View the result
SELECT * FROM EmployeePerformanceReport;



	--4 Successfull reservation count Monthly


 CREATE TABLE MonthlySuccessfulReservationsReport (
    ReservationMonth INT,
    MostSuccessfulTable INT,
    ReservationCount INT
);
Drop table MonthlySuccessfulReservationsReport;


IF OBJECT_ID('MonthlySuccessfulReservationsReport', 'V') IS NOT NULL
    DROP VIEW MonthlySuccessfulReservationsReport;


CREATE OR ALTER PROCEDURE GenerateMonthlySuccessfulReservationsReport
AS
BEGIN
    WITH MonthlyReservations AS (
        SELECT
            r.Table_Number,
            MONTH(r.Reservation_Date) AS ReservationMonth,
            COUNT(r.ReservationId) AS ReservationCount
        FROM
            Reservations r
        WHERE
            r.Payment_On_ReservationTime = 'yes'
        GROUP BY
            r.Table_Number, MONTH(r.Reservation_Date)
    )

    SELECT
        MR.ReservationMonth,
        MR.Table_Number AS MostSuccessfulTable,
        MR.ReservationCount AS ReservationCount
    INTO
        MonthlySuccessfulReservationsReport
    FROM
        MonthlyReservations MR
    JOIN (
        SELECT
            ReservationMonth,
            MAX(ReservationCount) AS MaxReservationCount
        FROM
            MonthlyReservations
        GROUP BY
            ReservationMonth
    ) MaxReservations ON MR.ReservationMonth = MaxReservations.ReservationMonth
       AND MR.ReservationCount = MaxReservations.MaxReservationCount
    ORDER BY
        MR.ReservationMonth;
END;

 



 EXEC GenerateMonthlySuccessfulReservationsReport;

-- View the result
SELECT * FROM MonthlySuccessfulReservationsReport;



--5 
IF OBJECT_ID('GeneratePeakReservationHoursReport', 'P') IS NOT NULL
    DROP PROCEDURE GeneratePeakReservationHoursReport;

-- Drop the table if it already exists
IF OBJECT_ID('PeakReservationHoursReport', 'U') IS NOT NULL
    DROP TABLE PeakReservationHoursReport;

-- Create the table
CREATE TABLE PeakReservationHoursReport (
    ReservationHour INT,
    ReservationCount INT
);




-- Create the stored procedure
CREATE or ALTER PROCEDURE GeneratePeakReservationHoursReport
AS
BEGIN
    WITH PeakHours AS (
        SELECT
            DATEPART(HOUR, r.Reservation_Time) AS ReservationHour,
            COUNT(r.ReservationId) AS ReservationCount
        FROM
            Reservations r
        WHERE
            r.Payment_On_ReservationTime = 'yes'
        GROUP BY
            DATEPART(HOUR, r.Reservation_Time)
    )

    SELECT
        PH.ReservationHour,
        PH.ReservationCount
    INTO
        PeakReservationHoursReport
    FROM
        PeakHours PH
    JOIN (
        SELECT
            ReservationHour,
            MAX(ReservationCount) AS MaxReservationCount
        FROM
            PeakHours
        GROUP BY
            ReservationHour
    ) MaxReservations ON PH.ReservationHour = MaxReservations.ReservationHour
       AND PH.ReservationCount = MaxReservations.MaxReservationCount
    ORDER BY
        PH.ReservationHour;
END;


EXEC GeneratePeakReservationHoursReport;

-- View the result

Select * from PeakReservationHoursReport;;

