-- Addresses
CREATE TABLE Addresses (
    Address_ID INT PRIMARY KEY,
    Street_Name VARCHAR(100),
    Street_Number VARCHAR(20),
    City VARCHAR(100),
    Province VARCHAR(100),
    Postal_Code VARCHAR(20)
);

-- Employees
CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Address_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Specialty VARCHAR(100),
    Contact_Number VARCHAR(20),
    Email VARCHAR(100),
    SMS_Details VARCHAR(255),
    FOREIGN KEY (Address_ID) REFERENCES Addresses(Address_ID)
);

-- Clients
CREATE TABLE Clients (
    Client_ID INT PRIMARY KEY,
    Address_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Contact_Number VARCHAR(20),
    Email VARCHAR(100),
    SMS_Details VARCHAR(255),
    Total_Spending DECIMAL(10,2),
    Total_Rewards_Points INT,
    FOREIGN KEY (Address_ID) REFERENCES Addresses(Address_ID)
);

-- Gift Cards
CREATE TABLE Gift_Cards (
    Card_ID INT PRIMARY KEY,
    Purchaser_Client_ID INT,
    Recipient_Client_ID INT,
    Amount DECIMAL(10,2),
    Claim_Status VARCHAR(50),
    FOREIGN KEY (Purchaser_Client_ID) REFERENCES Clients(Client_ID),
    FOREIGN KEY (Recipient_Client_ID) REFERENCES Clients(Client_ID)
);

-- Waivers Signed
CREATE TABLE Waivers_Signed (
    Waiver_ID INT PRIMARY KEY,
    Client_ID INT,
    Service_Type VARCHAR(100),
    Waiver_Details TEXT,
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID)
);

-- Inventory
CREATE TABLE Inventory (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),
    Saved BOOLEAN
);

-- Medical History
CREATE TABLE Medical_History (
    Medical_ID INT PRIMARY KEY,
    Client_ID INT,
    Medical_Information TEXT,
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID)
);

-- Sales History
CREATE TABLE Sales_History (
    Sale_ID INT PRIMARY KEY,
    Product_ID INT,
    Employee_ID INT,
    Client_ID INT,
    Sale_Date DATE,
    Gross_Amount DECIMAL(10,2),
    Net_Amount DECIMAL(10,2),
    Tip_Amount DECIMAL(10,2),
    FOREIGN KEY (Product_ID) REFERENCES Inventory(Product_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID),
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID)
);

-- Rewards
CREATE TABLE Rewards (
    Reward_ID INT PRIMARY KEY,
    Reward_Name VARCHAR(100),
    Point_Cost INT
);

-- Promotions
CREATE TABLE Promotions (
    Promotion_ID INT PRIMARY KEY,
    Promotion_Details TEXT,
    Platform VARCHAR(50),
    Winner_Client_ID INT,
    Claim_Status VARCHAR(50),
    FOREIGN KEY (Winner_Client_ID) REFERENCES Clients(Client_ID)
);

-- Scheduling
CREATE TABLE Scheduling (
    Appointment_ID INT PRIMARY KEY,
    Client_ID INT,
    Employee_ID INT,
    Service_Type VARCHAR(100),
    Appointment_Date DATE,
    Appointment_Time TIME,
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);

-- Services
CREATE TABLE Services (
    Service_ID INT PRIMARY KEY,
    Service_Name VARCHAR(100),
    Duration INT,
    Employee_ID INT,
    Share DECIMAL(5,2),
    FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
);
