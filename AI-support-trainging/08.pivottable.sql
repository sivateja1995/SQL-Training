use sales;

show tables;

select * from SalesData;

select Product, sum(
        case
            when Month = 'Jan' then Sales
            else 0
        end
    ) as 'Jan_sales', sum(
        case
            when Month = 'Feb' then Sales
            else 0
        end
    ) as 'Feb_sales', sum(
        case
            when Month = 'Mar' then Sales
            else 0
        end
    ) as 'Mar_sales'
from SalesData
group by
    `SalesData`.Product;


    -- using of the pivot table
 SELECT *
FROM
(
SELECT Product, Month, Sales
FROM SalesDatax 
) AS SourceTable
PIVOT
(
SUM(Sales)
FOR Month IN ([Jan], [Feb], [Mar])
) AS PivotTable;


-- find the median
select * from hr.employees

select salary, ROW_NUMBER() OVER (ORDER BY salary) AS RowAsc,count()