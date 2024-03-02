SELECT Promotions.Promotion_ID, Promotions.Promotion_Details, Clients.First_Name AS Winner_FirstName, Clients.Last_Name AS Winner_LastName, Promotions.Platform, Promotions.Claim_Status
FROM Promotions
INNER JOIN Clients ON Promotions.Winner_Client_ID = Clients.Client_ID;
