-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Employee
	JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
	JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
	WHERE Employee.Title = 'Sales Support Agent'
