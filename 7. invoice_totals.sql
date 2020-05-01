-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT Invoice.Total, Customer.FirstName + ' ' + Customer.LastName AS Customer, Customer.Country, Employee.FirstName + ' ' + Employee.LastName AS SalesAgent
FROM Employee
	JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
	JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
	ORDER BY Customer.LastName
