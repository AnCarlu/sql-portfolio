/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Todas las facturas que se facturaron en las ciudades que empiezan por la letra P o la letra D
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	BillingCity LIKE 'P%' OR BillingCity LIKE 'D%' 
ORDER BY
	InvoiceDate