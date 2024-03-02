SELECT Employees.Employee_ID, Employees.First_Name, Employees.Last_Name, Employees.Specialty, Addresses.Street_Name, Addresses.Street_Number, Addresses.City, Addresses.Province, Addresses.Postal_Code
FROM Employees
INNER JOIN Addresses ON Employees.Address_ID = Addresses.Address_ID;
