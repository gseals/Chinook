-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(Invoice.InvoiceDate) AS 'Total Invoices 2009 - 2011'
FROM Invoice
WHERE Invoice.InvoiceDate LIKE '%2009%' OR  Invoice.InvoiceDate LIKE '%2010%' OR Invoice.InvoiceDate LIKE '%2011%'