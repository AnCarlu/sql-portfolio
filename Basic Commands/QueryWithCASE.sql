/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Utilización de la clausula CASE

Categorias de ventas:
 Gasto base: entre 0.99 y 1.99 dolares
 Gasto bajo: entre 2 y 6.99 dolares
 Gasto esperado: entre 7 y 15 $
 Gasto Top: mas de 15 $
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE 
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
	ELSE 'Top Performer'
	END AS PurchaseType
FROM 
	Invoice
WHERE