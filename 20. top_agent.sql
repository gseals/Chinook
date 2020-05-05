-- Which sales agent made the most in sales over all?

SELECT TOP 1 Employee.FirstName + ' ' + Employee.LastName AS 'Employee Name', SUM(Invoice.Total) AS 'Total Sales'
FROM Employee
	JOIN Customer
		ON Customer.SupportRepId = Employee.EmployeeId
	JOIN Invoice
		ON Invoice.CustomerId = Customer.CustomerId
WHERE Employee.Title = 'Sales Support Agent'
GROUP BY Employee.LastName, Employee.FirstName
ORDER BY 'Total Sales' desc
