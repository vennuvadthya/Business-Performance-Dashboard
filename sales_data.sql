SELECT * FROM business_analysis.sales_data;
SELECT COUNT(*) FROM sales_data;
DROP TABLE sales_data;
CREATE TABLE sales_data (
Date DATE,
Region VARCHAR(20),
Product_Category VARCHAR(50),
Customer_Segment VARCHAR(50),
Units_Sold INT,
Revenue FLOAT,
Cost FLOAT,
Profit FLOAT,
Profit_Margin FLOAT,
Revenue_per_Unit FLOAT
);
LOAD DATA LOCAL INFILE 'C:/Users/vennu/Downloads/sales_data.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
SELECT COUNT(*) FROM sales_data;
SELECT * 
FROM sales_data
LIMIT 10;
SELECT Region, SUM(Revenue) AS total_revenue
FROM sales_data
GROUP BY Region
ORDER BY total_revenue DESC;
SELECT Product_Category, SUM(Profit) AS total_profit
FROM sales_data
GROUP BY Product_Category
ORDER BY total_profit DESC;
SELECT Customer_Segment, SUM(Revenue) AS revenue
FROM sales_data
GROUP BY Customer_Segment
ORDER BY revenue DESC;
SELECT AVG(Profit_Margin) AS avg_margin
FROM sales_data;
DESCRIBE sales_data;
SELECT AVG(`Profit Margin`) AS avg_margin
FROM sales_data;
ALTER TABLE sales_data
CHANGE `Profit Margin` Profit_Margin DOUBLE;
SELECT AVG(Profit_Margin) AS avg_margin
FROM sales_data;
SELECT *
FROM sales_data;
SELECT * FROM sales_data;
SELECT *
FROM sales_data
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_data.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';