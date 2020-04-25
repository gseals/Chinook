-- Provide a query only showing the Customers from Brazil.

-- see all customers listed alphabetically by country
select * from Customer
order by Country

-- see all customers from Brazil listed alphabetically by last name
select *
from Customer
where Country = 'Brazil'
order by LastName