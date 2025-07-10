/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 08/06/2025
DESCRIPTION: Clientes que compraron canciones que costaron exactamente 1.98 o 3.96 dolares
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
	--total= 1.98 OR total = 3.96
	total IN (1.98,3.96)
ORDER BY
	InvoiceDate