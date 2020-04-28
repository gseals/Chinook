-- Provide a query only showing the Customers from Brazil.

-- see all customers listed alphabetically by country
SELECT * FROM Customer
ORDER BY Country

-- see all customers from Brazil listed alphabetically by last name
SELECT *
FROM Customer
WHERE Country = 'Brazil'
ORDER BY LastName