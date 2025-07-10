/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Cuantas facturas se facturaron en la ciudad de Bruselas
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM 
	Invoice
WHERE 
	BillingCity = 'Brussels'
ORDER BY
	InvoiceDate