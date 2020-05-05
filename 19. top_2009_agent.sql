-- Which sales agent made the most in sales in 2009?

SELECT TOP 1 Employee.FirstName + ' ' + Employee.LastName AS 'Employee Name', SUM(Invoice.Total) AS 'Total Sales'
FROM Employee
	JOIN Customer
		ON Customer.SupportRepId = Employee.EmployeeId
	JOIN Invoice
		ON Invoice.CustomerId = Customer.CustomerId
WHERE YEAR(Invoice.InvoiceDate) = '2009'
GROUP BY Employee.LastName, Employee.FirstName
ORDER BY 'Total Sales' desc