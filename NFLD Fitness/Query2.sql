SELECT 
    p.First_Name,
    p.Last_Name,
    s.Salary_Amount
FROM 
    Staff st
JOIN 
    Salary s ON st.Salary_ID = s.Salary_ID
JOIN 
    Person_Information p ON st.Name_ID = p.Name_ID;
