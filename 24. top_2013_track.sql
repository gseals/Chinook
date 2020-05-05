-- Provide a query that shows the most purchased track of 2013.

SELECT TOP 1 Track.Name, COUNT(InvoiceLine.Quantity) AS Total
FROM Track
	JOIN InvoiceLine
		ON Track.TrackId = InvoiceLine.TrackId
	JOIN Invoice
		ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE YEAR(Invoice.InvoiceDate) = '2013'
GROUP BY Track.Name, Invoice.InvoiceDate
ORDER BY 'Total' DESC
