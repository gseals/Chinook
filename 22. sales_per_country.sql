-- Provide a query that shows the total sales per country.

SELECT Invoice.BillingCountry AS 'Country', SUM(Invoice.Total) AS 'Total Sales'
FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY 'Total Sales'
