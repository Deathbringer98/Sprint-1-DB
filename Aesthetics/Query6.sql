SELECT Services.Service_ID, Services.Service_Name, Services.Duration, Employees.First_Name AS Employee_FirstName, Employees.Last_Name AS Employee_LastName
FROM Services
INNER JOIN Employees ON Services.Employee_ID = Employees.Employee_ID;
