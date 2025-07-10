/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Todas las facturas que se facturaron despues de 2010-05-22 y tiene un total o menos de tres dolares
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	InvoiceDate > '2010-05-22 00:00:00' AND total < 3.00
ORDER BY
	InvoiceDate