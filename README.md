# SQL_task_6
**SELECT * FROM sales.sales_data_sample;**

![Screenshot 2025-07-02 223652](https://github.com/user-attachments/assets/4359a53f-4d57-4967-811f-ea18e42c1272)

**SELECT
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    SaleYear ASC, SaleMonth ASC;**

![Screenshot 2025-07-02 223149](https://github.com/user-attachments/assets/f87a68f9-96c0-4d6a-bdf7-4031eaaeb58c)

**SELECT
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    COUNT(DISTINCT ORDERNUMBER) AS MonthlyOrderVolume
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    SaleYear ASC, SaleMonth ASC;**

![Screenshot 2025-07-02 223218](https://github.com/user-attachments/assets/28327442-15e4-4fb0-b29f-583afcaaca09)

**SELECT
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
    SaleYear ASC, SaleMonth ASC;**

![Screenshot 2025-07-02 223232](https://github.com/user-attachments/assets/67736455-ff13-412b-8917-dbb850a82de9)

**SELECT 
    YEAR_ID AS SaleYear,
    MONTH_ID AS SaleMonth,
    SUM(SALES) AS TotalMonthlyRevenue
FROM
    sales.sales_data_sample
GROUP BY
    YEAR_ID,
    MONTH_ID
ORDER BY
    TotalMonthlyRevenue DESC limit 5;**

![Screenshot 2025-07-02 224236](https://github.com/user-attachments/assets/d6708564-0100-47fb-a2e3-f12f08da056f)

**SELECT
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
    SaleMonth ASC;**

![Screenshot 2025-07-02 223247](https://github.com/user-attachments/assets/8502d5af-b8e4-42d1-9bef-58f658a0692e)









