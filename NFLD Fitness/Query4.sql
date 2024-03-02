-- Query to Get Fitness Class Information with Staff and Member Details:
SELECT 
    fc.Class_ID,
    s_first.First_Name AS Staff_First_Name,
    s_last.Last_Name AS Staff_Last_Name,
    m_first.First_Name AS Member_First_Name,
    m_last.Last_Name AS Member_Last_Name
FROM 
    Fitness_Class fc
JOIN 
    Staff s ON fc.Staff_ID = s.Staff_ID
JOIN 
    Person_Information s_first ON s.Name_ID = s_first.Name_ID
JOIN 
    Person_Information s_last ON s.Name_ID = s_last.Name_ID
JOIN 
    Membership m ON fc.Member_ID = m.Member_ID
JOIN 
    Person_Information m_first ON m.Name_ID = m_first.Name_ID
JOIN 
    Person_Information m_last ON m.Name_ID = m_last.Name_ID;

