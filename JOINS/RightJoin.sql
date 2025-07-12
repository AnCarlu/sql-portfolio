/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 11/06/2025
DESCRIPTION: RIGHT OUTER JOIN

RIGHT OUTER JOIN devuelve toda la tabla del JOIN con la información
coincidente de la tabla de FROM
Funciona de manera similar al LEFT, aunque en SQLite no funciona
*/

SELECT 
	i.InvoiceId,
	c.CustomerId,
	c.FirstName,
	i.InvoiceDate,
	i.BillingAddress,
	i.total
FROM	
	Invoice AS i 
RIGHT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId