/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Cuantas facturas se facturaron en la ciudad que empiezan por B
*/

--El % es un caracter comodin, se utiliza con LIKE para buscar patrones flexibles
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM 
	Invoice
WHERE 
	BillingCity LIKE 'B%'
ORDER BY
	InvoiceDate