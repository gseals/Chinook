-- Provide a query that shows the top 5 most purchased songs.

SELECT TOP 5 t.TrackId, SUM(quantity) AS numberofpurchases
FROM Track t
	JOIN InvoiceLine il
		ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY 2 DESC
