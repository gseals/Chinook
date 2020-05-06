-- Provide a query that shows the most purchased Media Type.

SELECT TOP 1 MediaType.Name AS 'Media Type', COUNT(*) AS 'Number purchased'
FROM Track
	JOIN MediaType
		ON Track.MediaTypeId = MediaType.MediaTypeId
	JOIN InvoiceLine
		ON InvoiceLine.TrackId = Track.TrackId
GROUP BY MediaType.Name
ORDER BY 'Number Purchased' DESC
