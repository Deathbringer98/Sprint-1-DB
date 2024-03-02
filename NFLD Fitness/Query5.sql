SELECT 
    fc.Class_ID,
    fc.Maximum_Capacity,
    fc.Maximum_Capacity - COUNT(*) AS Remaining_Slots
FROM 
    Fitness_Class fc
JOIN 
    Membership m ON fc.Member_ID = m.Member_ID
GROUP BY 
    fc.Class_ID, fc.Maximum_Capacity;
