-- Person Information table
CREATE TABLE Person_Information (
    Name_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone_Number VARCHAR(20)
);

-- Address table
CREATE TABLE Address (
    Address_ID INT PRIMARY KEY,
    Street_Name VARCHAR(100),
    Street_Number VARCHAR(20),
    City VARCHAR(50),
    Province VARCHAR(50),
    Postal_Code VARCHAR(20)
);

-- Price table
CREATE TABLE Price (
    Price_ID INT PRIMARY KEY,
    Price_Amount DECIMAL(10, 2)
);

-- Tax table
CREATE TABLE Tax (
    Tax_ID INT PRIMARY KEY,
    Tax_Rate DECIMAL(5, 2)
);

-- Salary table
CREATE TABLE Salary (
    Salary_ID INT PRIMARY KEY,
    Salary_Amount DECIMAL(10, 2)
);

-- Membership table
CREATE TABLE Membership (
    Member_ID INT PRIMARY KEY,
    Name_ID INT,
    Address_ID INT,
    Price_ID INT,
    Membership_Type VARCHAR(50),
    Membership_Length INT,
    Date_Joined DATE,
    FOREIGN KEY (Name_ID) REFERENCES Person_Information(Name_ID),
    FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID),
    FOREIGN KEY (Price_ID) REFERENCES Price(Price_ID)
);

-- Equipment table
CREATE TABLE Equipment (
    Equipment_ID INT PRIMARY KEY,
    Equipment_Name VARCHAR(100),
    Purchase_Date DATE,
    Availability_Status VARCHAR(20)
);

-- Staff table
CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Name_ID INT,
    Address_ID INT,
    Salary_ID INT,
    FOREIGN KEY (Name_ID) REFERENCES Person_Information(Name_ID),
    FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID),
    FOREIGN KEY (Salary_ID) REFERENCES Salary(Salary_ID)
);

-- Gym Location table
CREATE TABLE Gym_Location (
    Gym_ID INT PRIMARY KEY,
    Address_ID INT,
    Staff_ID INT,
    FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID)
);

-- Receipt table
CREATE TABLE Receipt (
    Receipt_ID INT PRIMARY KEY,
    Member_ID INT,
    Payment_Method VARCHAR(50),
    Tax_ID INT,
    Subtotal DECIMAL(10, 2),
    Total_Amount DECIMAL(10, 2),
    FOREIGN KEY (Member_ID) REFERENCES Membership(Member_ID),
    FOREIGN KEY (Tax_ID) REFERENCES Tax(Tax_ID)
);

-- Fitness Class table
CREATE TABLE Fitness_Class (
    Class_ID INT PRIMARY KEY,
    Staff_ID INT,
    Member_ID INT,
    Price_ID INT,
    Maximum_Capacity INT,
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_ID),
    FOREIGN KEY (Member_ID) REFERENCES Membership(Member_ID),
    FOREIGN KEY (Price_ID) REFERENCES Price(Price_ID)
);

-- Supplements table
CREATE TABLE Supplements (
    Supplement_ID INT PRIMARY KEY,
    Price_ID INT,
    Supplement_Name VARCHAR(100),
    Stock_Amount INT,
    Reorder_Number INT,
    FOREIGN KEY (Price_ID) REFERENCES Price(Price_ID)
);

-- Receipt Item table
CREATE TABLE Receipt_Item (
    Receipt_Item_ID INT PRIMARY KEY,
    Receipt_ID INT,
    Supplement_ID INT,
    Quantity INT,
    Price_ID INT,
    FOREIGN KEY (Receipt_ID) REFERENCES Receipt(Receipt_ID),
    FOREIGN KEY (Supplement_ID) REFERENCES Supplements(Supplement_ID),
    FOREIGN KEY (Price_ID) REFERENCES Price(Price_ID)
);
