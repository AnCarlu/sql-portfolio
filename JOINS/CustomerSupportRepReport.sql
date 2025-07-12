/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 11/06/2025
DESCRIPTION: Generate a report that lists each customer along
with their assigned support representative
*/
SELECT 
    c.FirstName AS CustomerFirstName,
    c.LastName AS CustomerLastName,
    e.FirstName AS SupportRepFirstName,
    e.LastName AS SupportRepLastName
FROM 
    Customer AS c
INNER JOIN
    Employee AS e
ON 
    e.EmployeeId = c.SupportRepId
ORDER BY
    SupportRepLastName, CustomerLastName;