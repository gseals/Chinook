-- Provide a query that shows all Invoices but includes the # of invoice line items

SELECT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceId) AS 'Number of Invoice Line Items'
FROM Invoice
	JOIN InvoiceLine
		ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId