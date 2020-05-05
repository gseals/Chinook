-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT Employee.FirstName + ' ' + Employee.LastName AS 'Employee Name', COUNT(*) AS 'Total Customers'
FROM Customer
	JOIN Employee
		ON Employee.EmployeeId = Customer.SupportRepId
WHERE Employee.Title = 'Sales Support Agent'
GROUP BY Employee.FirstName, Employee.LastName
ORDER BY Employee.LastName