ALTER TABLE DimCustomer
DROP COLUMN LastName;

EXEC sp_rename 'DimCustomer.FirstName', 'CustomerName', 'COLUMN';
