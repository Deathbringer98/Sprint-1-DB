-- Populate Person_Information table
INSERT INTO Person_Information (Name_ID, First_Name, Last_Name, Email, Phone_Number)
VALUES 
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-123-4567');

-- Populate Address table
INSERT INTO Address (Address_ID, Street_Name, Street_Number, City, Province, Postal_Code)
VALUES 
    (1, '123 Main St', 'Apt 101', 'Anytown', 'Anystate', '12345'),
    (2, '456 Elm St', 'Unit 202', 'Othertown', 'Otherstate', '67890'),
    (3, '789 Oak St', 'Suite 303', 'Newtown', 'Newstate', '54321');

-- Populate Price table
INSERT INTO Price (Price_ID, Price_Amount)
VALUES 
    (1, 10.99),
    (2, 20.49),
    (3, 15.75);

-- Populate Tax table
INSERT INTO Tax (Tax_ID, Tax_Rate)
VALUES 
    (1, 0.08),
    (2, 0.10),
    (3, 0.05);

-- Populate Salary table
INSERT INTO Salary (Salary_ID, Salary_Amount)
VALUES 
    (1, 50000),
    (2, 60000),
    (3, 75000);

-- Populate Equipment table
INSERT INTO Equipment (Equipment_ID, Equipment_Name, Purchase_Date, Availability_Status)
VALUES 
    (1, 'Treadmill', '2023-01-15', 'Available'),
    (2, 'Stationary Bike', '2022-11-20', 'Unavailable'),
    (3, 'Dumbbells', '2023-02-05', 'Available');

-- Populate Membership table
INSERT INTO Membership (Member_ID, Name_ID, Address_ID, Price_ID, Membership_Type, Membership_Length, Date_Joined)
VALUES 
    (1, 1, 1, 1, 'Basic', 12, '2023-03-10'),
    (2, 2, 2, 2, 'Premium', 6, '2023-02-20'),
    (3, 3, 3, 3, 'Gold', 24, '2023-01-05');

-- Populate Staff table
INSERT INTO Staff (Staff_ID, Name_ID, Address_ID, Salary_ID)
VALUES 
    (1, 1, 1, 1),
    (2, 2, 2, 2),
    (3, 3, 3, 3);

-- Populate Gym_Location table
INSERT INTO Gym_Location (Gym_ID, Address_ID, Staff_ID)
VALUES 
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3);

-- Populate Receipt table
INSERT INTO Receipt (Receipt_ID, Member_ID, Payment_Method, Tax_ID, Subtotal, Total_Amount)
VALUES 
    (1, 1, 'Credit Card', 1, 50.00, 54.00),
    (2, 2, 'Cash', 2, 75.00, 82.50),
    (3, 3, 'Debit Card', 3, 100.00, 105.00);

-- Populate Fitness_Class table
INSERT INTO Fitness_Class (Class_ID, Staff_ID, Member_ID, Price_ID, Maximum_Capacity)
VALUES 
    (1, 1, 1, 1, 20),
    (2, 2, 2, 2, 15),
    (3, 3, 3, 3, 25);

-- Populate Receipt_Item table
INSERT INTO Receipt_Item (Receipt_Item_ID, Receipt_ID, Supplement_ID, Quantity, Price_ID)
VALUES 
    (1, 1, NULL, 1, 1),
    (2, 2, NULL, 2, 2),
    (3, 3, NULL, 3, 3);

-- Populate Supplements table
INSERT INTO Supplements (Supplement_ID, Price_ID, Supplement_Name, Stock_Amount, Reorder_Number)
VALUES 
    (1, 1, 'Protein Powder', 100, 50),
    (2, 2, 'Multivitamin', 200, 75),
    (3, 3, 'Creatine', 150, 60);
