 -- Provide a query showing the Invoices of customers who are from Brazil.
 -- The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

 select Customer.FirstName, Customer.LastName, InvoiceId, InvoiceDate, Invoice.BillingCountry
	from Invoice
		join Customer
			on Invoice.CustomerId = Customer.CustomerId
				where Country = 'Brazil'