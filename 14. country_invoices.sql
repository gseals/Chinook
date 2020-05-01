-- Provide a query that shows the # of invoices per country.

SELECT Invoice.BillingCountry, COUNT(Invoice.BillingCountry) AS 'Number of Invoices'
FROM Invoice
GROUP BY Invoice.BillingCountry