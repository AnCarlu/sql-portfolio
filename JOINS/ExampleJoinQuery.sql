/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 11/06/2025
DESCRIPTION: INNER JOIN
*/

SELECT 
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM	
	Invoice AS i 
/*
INNER JOIN se utiliza para reunirc ombinaciónes internas
de los datos correspondientes de  diferentes tablas de un las bases de datos relacionales
*/
INNER JOIN	
	Customer AS c
--Se usa el ON para el vincular las tablas con los datos que las unen
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId