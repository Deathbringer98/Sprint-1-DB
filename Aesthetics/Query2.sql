SELECT Clients.Client_ID, Clients.First_Name, Clients.Last_Name, Waivers_Signed.Service_Type, Waivers_Signed.Waiver_Details
FROM Clients
INNER JOIN Waivers_Signed ON Clients.Client_ID = Waivers_Signed.Client_ID;
