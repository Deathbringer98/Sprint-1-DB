SELECT 
    g.Gym_ID,
    a.Street_Name,
    a.City,
    a.Province,
    p.First_Name,
    p.Last_Name
FROM 
    Gym_Location g
JOIN 
    Address a ON g.Address_ID = a.Address_ID
JOIN 
    Staff s ON g.Staff_ID = s.Staff_ID
JOIN 
    Person_Information p ON s.Name_ID = p.Name_ID;
