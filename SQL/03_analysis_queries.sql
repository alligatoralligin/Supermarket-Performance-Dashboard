	--Total Revenue
SELECT
	
	SUM(unitprice*quantity) AS Total_Revenue
FROM sales_clean;

	--Total Units Sold
SELECT	
	SUM(Quantity) AS Total_Units_Sold
FROM sales_clean;

	--Total Transactions
SELECT
	
	COUNT(*) AS Total_Transactions
FROM sales_clean;

	--Average Transaction Value
SELECT
	Round(SUM(unitprice*quantity)/COUNT(*),2) AS Average_Transaction_Value
FROM sales_clean;

	--Revenue Per Branch
SELECT
	Branch,
	SUM(UnitPrice*Quantity) AS Revenue
FROM sales_clean
GROUP BY Branch;

	--Revenue By Product Line
SELECT
	Productline,
	SUM(UnitPrice*Quantity) AS Revenue
FROM sales_clean
GROUP BY Productline
ORDER BY Revenue DESC

	--Quantity Per ProductLine
SELECT 
	ProductLine,
	SUM(Quantity) AS Quantity_Total
FROM sales_clean
GROUP BY Productline
ORDER BY Quantity_Total DESC

	--Revenue by Customer Type
SELECT 
	CustomerType,
	SUM(unitprice*quantity) AS Revenue
FROM sales_clean
GROUP BY CustomerType

	--Quantity Per Customer Type
SELECT
	CustomerType,
	SUM(Quantity) AS Quantity
FROM sales_clean
GROUP BY CustomerType

	--Transactions by Customer Type
SELECT 
	CustomerType,
	COUNT(*) AS Transactions
FROM sales_clean
GROUP BY CustomerType

	--Revenue by Gender
SELECT
	Gender,
	SUM(Unitprice*Quantity) AS Revenue
FROM sales_clean
GROUP BY Gender

	--Quantity by Gender
SELECT
	Gender,
	SUM(Quantity) AS Quantity
FROM sales_clean
GROUP BY Gender

	--Revenue By Month
SELECT 
	TO_CHAR(salesdate,'Month') AS SalesMonth,
	SUM(Unitprice*Quantity) AS TotalRevenue
FROM sales_clean
GROUP BY EXTRACT(MONTH FROM salesdate), TO_CHAR(salesdate,'Month')
ORDER BY EXTRACT(MONTH FROM salesdate)

	--Revenue By Day 
SELECT
	TO_CHAR(salesdate,'Day') AS SalesDay,
	SUM(Unitprice*Quantity) AS TotalRevenue
FROM sales_clean
GROUP BY EXTRACT(DOW FROM salesdate), TO_CHAR(salesdate, 'Day')
ORDER BY EXTRACT(DOW FROM salesdate)

	--Transaction Over Time
SELECT
	TO_CHAR(salesdate,'Month') AS SalesMonth,
	COUNT(*) AS Total_Transaction
FROM sales_clean
GROUP BY EXTRACT(MONTH FROM salesdate), TO_CHAR(salesdate,'Month')
ORDER BY EXTRACT(MONTH FROM salesdate)

	--Quantity Sold Over Time
SELECT
	TO_CHAR(salesdate,'Month') AS SalesMonth,
	COUNT(quantity) AS Quantity
FROM sales_clean
GROUP BY EXTRACT(MONTH FROM salesdate), TO_CHAR(salesdate,'Month')
ORDER BY EXTRACT(MONTH FROM salesdate)

	--Revenue By Payment Method
SELECT
	payment AS Payment_Method,
	SUM(UnitPrice*Quantity) AS TotalRevenue
FROM sales_clean
GROUP BY Payment_Method
ORDER BY Payment_Method

	--Transaction By Payment Method
SELECT 
	payment AS Payment_Method,
	COUNT(*) AS Transaction_Type
	
FROM sales_clean
GROUP BY Payment_Method
ORDER BY Payment_Method

	--Quantity By Payment Method
SELECT 
	payment AS Payment_Method,
	SUM(Quantity) AS Quantity
	
FROM sales_clean
GROUP BY Payment_Method
ORDER BY Payment_Method

	--Overall Average Rating
SELECT
	ROUND(AVG(rating),2) AS Average_Rating
FROM sales_clean

	--Rating by Branch
SELECT
	branch,
	ROUND(AVG(rating),2) as Average_Rating

FROM sales_clean
GROUP BY branch
	--Average Rating By ProductLine
SELECT
	productline,
	ROUND(AVG(rating),2) as Average_Rating
FROM sales_clean
GROUP BY productline

	--Average Rating by Customer Type
SELECT
	customertype,
	ROUND(AVG(rating),2) as Average_Rating
FROM sales_clean
GROUP BY customertype

	--Average Rating By Gender
SELECT
	gender,
	ROUND(AVG(rating),2) as Average_Rating
FROM sales_clean
GROUP BY gender

	--Transactions By Branch

