SELECT 
    Sales_History.Sale_ID, 
    Inventory.Product_Name, 
    Employees.First_Name AS Employee_FirstName, 
    Employees.Last_Name AS Employee_LastName, 
    Clients.First_Name AS Client_FirstName, 
    Clients.Last_Name AS Client_LastName, 
    Sales_History.Sale_Date, 
    Sales_History.Gross_Amount, 
    Sales_History.Net_Amount, 
    Sales_History.Tip_Amount 
FROM 
    Sales_History 
INNER JOIN 
    Inventory ON Sales_History.Product_ID = Inventory.Product_ID 
INNER JOIN 
    Employees ON Sales_History.Employee_ID = Employees.Employee_ID 
INNER JOIN 
    Clients ON Sales_History.Client_ID = Clients.Client_ID;
