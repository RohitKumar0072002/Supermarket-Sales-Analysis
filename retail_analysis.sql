# --> Total Revenue
SELECT 
    ROUND(SUM(total), 2) AS Total_Revenue
FROM
    supermarket_sales_project;
# --> Monthly Sales Trend
SELECT 
    MONTH(order_date) AS Month,
    ROUND(SUM(total), 2) AS Total_Revenue
FROM
    supermarket_sales_project
GROUP BY Month
ORDER BY Total_Revenue DESC;
# --> Top Performing Branch
SELECT 
    branch, ROUND(SUM(total), 2) AS Total_Revenue
FROM
    supermarket_sales_project
GROUP BY branch
ORDER BY Total_Revenue;
# --> Most Selling Product Line
SELECT 
    product_line, SUM(quantity) AS total_units
FROM
    supermarket_sales_project
GROUP BY product_line
ORDER BY total_units DESC;
# --> Peak Sales Time
SELECT 
    HOUR(order_time) AS Hour, SUM(total) AS Total_Revenue
FROM
    supermarket_sales_project
GROUP BY Hour
ORDER BY Total_Revenue DESC;
# --> Payment Method Anal
SELECT 
    payment,
    COUNT(*) AS Transactions,
    SUM(total) AS Total_Revenue
FROM
    supermarket_sales_project
GROUP BY payment
ORDER BY Total_Revenue DESC;