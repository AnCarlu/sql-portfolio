CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Cuantas facturas se facturaron el 22 de mayo 2010
*/

--El % es un caracter comodin, se utiliza con LIKE para buscar patrones flexibles
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM 
	Invoice
WHERE 
	--InvoiceDate = '2010-05-22 00:00:00'
	DATE(InvoiceDate)= '2010-05-22'
ORDER BY
	InvoiceDate