CREATE TABLE sales_clean AS
SELECT
	TO_DATE(SaleDate,'MM,DD,YYYY') AS SalesDate,
	Branch,
	CustomerType,
	Gender,
	ProductLine,
	CAST(UnitPrice AS NUMERIC(10,2)) AS UnitPrice,
	CAST(Quantity AS INTEGER) AS Quantity,
	Payment,
	CAST(Rating AS NUMERIC(3,1)) AS Rating
FROM sales_raw;
	