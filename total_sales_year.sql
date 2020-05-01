-- What are the respective total sales for each of those years (2009, 2010, 2011)?

SELECT YEAR(Invoice.InvoiceDate) AS 'Invoice Year', SUM(Invoice.Total) AS 'Invoice Total for Selected Year'
FROM Invoice
WHERE YEAR(Invoice.InvoiceDate) IN (
2009, 2010, 2011)
GROUP BY YEAR(InvoiceDate)