SELECT 
    s.Staff_ID,
    pi.First_Name AS Staff_First_Name,
    pi.Last_Name AS Staff_Last_Name,
    a.Street_Name AS Gym_Street_Name,
    a.City AS Gym_City,
    a.Province AS Gym_Province
FROM 
    Staff s
JOIN 
    Person_Information pi ON s.Name_ID = pi.Name_ID
JOIN 
    Gym_Location gl ON s.Staff_ID = gl.Staff_ID
JOIN 
    Address a ON gl.Address_ID = a.Address_ID;
