-- Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceLine.InvoiceId, Track.TrackId, Track.Name
FROM Track
	JOIN InvoiceLine
		ON InvoiceLine.TrackId = Track.TrackId 
			ORDER BY InvoiceLine.InvoiceId