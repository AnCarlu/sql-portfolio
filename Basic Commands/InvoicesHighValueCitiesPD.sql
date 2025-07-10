/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Todas las facturas que superen los 1.9 dolares se facturaron en las ciudades que empiezan por la letra P o la letra D
*/
/*
Reglas PEMDAS- Parentesis, Exponentes, Multiplicación/Division, suma/resta
*/
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM 
	Invoice
WHERE 
--Cuando hay varias consultas es necesario usar corchetes o parentesis, porque se sigue el orden de las operaciones matemáticas PEMDAS
	(BillingCity LIKE 'P%' OR BillingCity LIKE 'D%') AND total>1.98
ORDER BY
	InvoiceDate