-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

select Employee.FirstName, Employee.LastName, Invoice.InvoiceId
from Employee
	join Customer on Customer.SupportRepId = Employee.EmployeeId
	join Invoice on Invoice.CustomerId = Customer.CustomerId
	where Employee.Title = 'Sales Support Agent'
