select FirstName, LastName, CustomerId, Country
from Customer
where Country != 'USA'
order by Customer.Country
