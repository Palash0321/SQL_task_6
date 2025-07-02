SELECT * FROM sales.sales_data_sample;
SELECT
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    SaleYear ASC, SaleMonth ASC; 

SELECT
    YEAR(ORDERDATE) AS SaleYear,
    MONTH(ORDERDATE) AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue
FROM
    sales.sales_data_sample
GROUP BY
    YEAR(ORDERDATE),
    MONTH(ORDERDATE)
ORDER BY
    SaleYear ASC, SaleMonth ASC;

SELECT
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    COUNT(DISTINCT ORDERNUMBER) AS MonthlyOrderVolume
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    SaleYear ASC, SaleMonth ASC; 

SELECT
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue,
    COUNT(DISTINCT ORDERNUMBER) AS MonthlyOrderVolume
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    SaleYear ASC, SaleMonth ASC; -- Hint e: ORDER BY for sorting
    
SELECT 
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    TotalMonthlyRevenue DESC limit 5;
    
SELECT
    MONTH_ID AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue,
    COUNT(DISTINCT ORDERNUMBER) AS MonthlyOrderVolume
FROM
    sales.sales_data_sample
WHERE
    YEAR_ID = 2003 AND QTR_ID = 4
GROUP BY
    MONTH_ID
ORDER BY
    SaleMonth ASC;