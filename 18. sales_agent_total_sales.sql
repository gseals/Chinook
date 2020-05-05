-- Provide a query that shows total sales made by each sales agent.

SELECT Employee.FirstName + ' ' + Employee.LastName AS 'Employee Name', SUM(Invoice.Total) AS 'Total Sales'
FROM Employee
	JOIN Customer
		ON Customer.SupportRepId = Employee.EmployeeId
	JOIN Invoice
		ON Invoice.CustomerId = Customer.CustomerId
WHERE Employee.Title = 'Sales Support Agent'
GROUP BY Employee.LastName, Employee.FirstName