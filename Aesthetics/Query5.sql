SELECT Scheduling.Appointment_ID, Employees.First_Name AS Employee_FirstName, Employees.Last_Name AS Employee_LastName, Clients.First_Name AS Client_FirstName, Clients.Last_Name AS Client_LastName, Scheduling.Service_Type, Scheduling.Appointment_Date, Scheduling.Appointment_Time
FROM Scheduling
INNER JOIN Employees ON Scheduling.Employee_ID = Employees.Employee_ID
INNER JOIN Clients ON Scheduling.Client_ID = Clients.Client_ID;
