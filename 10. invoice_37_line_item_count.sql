-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(*) AS 'Total Line Items for InvoiceId 37'
FROM InvoiceLine
WHERE InvoiceId = '37'