CREATE PROCEDURE summary_order_status
(@StatusID int) AS
BEGIN
	SELECT
		OrderID,
		CustomerName,
		ProductName,
		Quantity,
		StatusOrder
	FROM FactSalesOrder s
	LEFT JOIN DimCustomer c on s.CustomerID = c.CustomerID
	LEFT JOIN DimProduct p on s.ProductID = p.ProductID
	LEFT JOIN DimStatusOrder o on s.StatusID = o.StatusID
	WHERE o.StatusID = @StatusID
END

EXEC summary_order_status @StatusID = 4  

