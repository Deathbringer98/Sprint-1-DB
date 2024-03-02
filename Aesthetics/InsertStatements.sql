-- Addresses
INSERT INTO Addresses (Address_ID, Street_Name, Street_Number, City, Province, Postal_Code)
VALUES
    (1, '123 Main St', 'Apt 101', 'Anytown', 'AnyProvince', 'A1B 2C3'),
    (2, '456 Elm St', 'Suite 202', 'Othertown', 'SomeProvince', 'X4Y 5Z6'),
    (3, '789 Oak St', 'Unit 303', 'Anothertown', 'AnotherProvince', 'P7Q 8R9');

-- Employees
INSERT INTO Employees (Employee_ID, Address_ID, First_Name, Last_Name, Specialty, Contact_Number, Email, SMS_Details)
VALUES
    (1, 1, 'John', 'Doe', 'Dentist', '555-1234', 'john.doe@example.com', 'SMS preferences for John Doe'),
    (2, 2, 'Jane', 'Smith', 'Orthodontist', '555-5678', 'jane.smith@example.com', 'SMS preferences for Jane Smith'),
    (3, 3, 'David', 'Brown', 'Pediatrician', '555-9876', 'david.brown@example.com', 'SMS preferences for David Brown');

-- Clients
INSERT INTO Clients (Client_ID, Address_ID, First_Name, Last_Name, Contact_Number, Email, SMS_Details, Total_Spending, Total_Rewards_Points)
VALUES
    (1, 1, 'Alice', 'Johnson', '555-1111', 'alice.johnson@example.com', 'SMS preferences for Alice Johnson', 1000.00, 500),
    (2, 2, 'Bob', 'Williams', '555-2222', 'bob.williams@example.com', 'SMS preferences for Bob Williams', 750.00, 250),
    (3, 3, 'Eve', 'Davis', '555-3333', 'eve.davis@example.com', 'SMS preferences for Eve Davis', 500.00, 100);

-- Gift Cards
INSERT INTO Gift_Cards (Card_ID, Purchaser_Client_ID, Recipient_Client_ID, Amount, Claim_Status)
VALUES
    (1, 1, 2, 50.00, 'Claimed'),
    (2, 3, 1, 100.00, 'Not Claimed'),
    (3, 2, 3, 25.00, 'Claimed');

-- Waivers Signed
INSERT INTO Waivers_Signed (Waiver_ID, Client_ID, Service_Type, Waiver_Details)
VALUES
    (1, 1, 'Dental', 'Waiver details for Alice Johnson'),
    (2, 2, 'Orthodontic', 'Waiver details for Bob Williams'),
    (3, 3, 'Pediatric', 'Waiver details for Eve Davis');

-- Inventory
INSERT INTO Inventory (Product_ID, Product_Name, Quantity, Price, Saved)
VALUES
    (1, 'Toothbrush', 100, 5.99, true),
    (2, 'Floss', 200, 3.99, true),
    (3, 'Toothpaste', 150, 4.99, true);

-- Medical History
INSERT INTO Medical_History (Medical_ID, Client_ID, Medical_Information)
VALUES
    (1, 1, 'Medical history for Alice Johnson'),
    (2, 2, 'Medical history for Bob Williams'),
    (3, 3, 'Medical history for Eve Davis');

-- Sales History
INSERT INTO Sales_History (Sale_ID, Product_ID, Employee_ID, Client_ID, Sale_Date, Gross_Amount, Net_Amount, Tip_Amount)
VALUES
    (1, 1, 1, 1, '2024-02-01', 10.99, 9.99, 1.00),
    (2, 2, 2, 2, '2024-02-05', 7.99, 6.99, 1.00),
    (3, 3, 3, 3, '2024-02-10', 6.99, 5.99, 1.00);

-- Rewards
INSERT INTO Rewards (Reward_ID, Reward_Name, Point_Cost)
VALUES
    (1, 'Discount Voucher', 100),
    (2, 'Free Consultation', 250),
    (3, 'Complimentary Service', 500);

-- Promotions
INSERT INTO Promotions (Promotion_ID, Promotion_Details, Platform, Winner_Client_ID, Claim_Status)
VALUES
    (1, 'Special discount for loyal customers', 'Online', 1, 'Claimed'),
    (2, 'Refer a friend promotion', 'In-store', 2, 'Not Claimed'),
    (3, 'Holiday giveaway', 'Social Media', 3, 'Claimed');

-- Scheduling
INSERT INTO Scheduling (Appointment_ID, Client_ID, Employee_ID, Service_Type, Appointment_Date, Appointment_Time)
VALUES
    (1, 1, 1, 'Dental Cleaning', '2024-02-15', '09:00:00'),
    (2, 2, 2, 'Orthodontic Consultation', '2024-02-20', '10:00:00'),
    (3, 3, 3, 'Pediatric Checkup', '2024-02-25', '11:00:00');

-- Services
INSERT INTO Services (Service_ID, Service_Name, Duration, Employee_ID, Share)
VALUES
    (1, 'Dental Cleaning', 60, 1, 0.70),
    (2, 'Orthodontic Consultation', 30, 2, 0.60),
    (3, 'Pediatric Checkup', 45, 3, 0.80);
