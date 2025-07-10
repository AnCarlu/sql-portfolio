/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Cuantas facturas se facturaron en la ciudad que tenga la letra b
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM 
	Invoice
WHERE 
	BillingCity LIKE '%B%'
ORDER BY
	InvoiceDate