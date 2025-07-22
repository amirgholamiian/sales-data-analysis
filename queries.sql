-- Example SQL queries for sales analysis

-- 1. Total sales per product
SELECT Product, SUM(Total_Sales) AS TotalProductSales
FROM sales_data
GROUP BY Product;

-- 2. Total sales per region
SELECT Region, SUM(Total_Sales) AS TotalRegionSales
FROM sales_data
GROUP BY Region;

-- 3. Average advertising spend per month
SELECT strftime('%Y-%m', Date) AS Month, AVG(Advertising_Spend) AS AvgAdSpend
FROM sales_data
GROUP BY Month;
