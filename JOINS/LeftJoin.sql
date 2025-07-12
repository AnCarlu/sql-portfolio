/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 11/06/2025
DESCRIPTION: LEFT OUTER JOIN

LEFT OUTER JOIN combina todos los registros de la tabla del from
coincidentes con los de la tabla del JOIN
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
LEFT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId