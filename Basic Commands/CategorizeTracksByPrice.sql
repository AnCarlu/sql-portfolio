/*
CREATED BY: ADRIAN CARRERO
CREATED DATE: 09/06/2025
DESCRIPTION: Categorizar las pistas por precio

Categorias de pistas:
Budget: menos de 0.99 
Regular: entre 0.99 y 1.49 dolares
Premium: entre 1.5 y 1.99 $
Exclusive: mas de 1.99 $
*/

SELECT 
    t.Name AS "Track Name",
    t.Composer, 
    t.UnitPrice AS Price,
    CASE
    WHEN UnitPrice <= 0.99 THEN 'Budget'
    WHEN UnitPrice BETWEEN 1 AND UnitPrice <=1.49 THEN  'Regular'
    WHEN UnitPrice BETWEEN 1.50 AND UnitPrice <=1.99 THEN 'Premium'
    ELSE 'Exclusive'
    END AS PriceCategory
FROM 
	Track AS t
ORDER BY 
	t.UnitPrice ;