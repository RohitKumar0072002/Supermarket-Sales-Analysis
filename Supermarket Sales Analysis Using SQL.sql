##======> Revenue Analysis
-- Total Revenue
Select Sum(total) As `Total Revenu`
From supermarket_sales;
/*--> Short Insight
-- This shows the overall revenue genrated from all transactions
*/

##======> Revenue by Branch
Select branch as Branch,
SUM(total) as `Total Revenue`
from supermarket_sales
group by branch
order by `Total Revenue` DESC;
/*--> Short Insight
Branch C with the highest total revenue indicates the stronger sales performance compare to Branch A & B.
This could be due to the higher foot traffic or better product demand.
--> Action
Management can analyze what strategies Branch C uses and try it in on Branch A & B. 
*/

##======> Product Performance
-- Best Selling Product Line
select product_line as `Product Line`,
SUM(total) as `Total Revenue`
from supermarket_sales
group by product_line
order by `Total Revenue` DESC;
/*--> Short Insight
Food and Beverages Contributes the largest share of sales.
Action:
Prioritize stock and promotions for top revenue generation categories.
*/

##=====>Customer Type Spending
select customer_type as `Customer Type`,
Sum(total) as `Total Revenue`
from supermarket_sales
group by customer_type
order by `Total Revenue` Desc;
/*--> Short Insight
Member Customer type generate slightly higher revenue of ₹164K than normal customers with ₹158K
-> Action
Strenghten membership benefits to further increase repeat purchases and customer retention. 
*/

##=====> Sales by Time
Select
case when hour(order_time) < 12 THEN 'Morning'
when hour(order_time) BETWEEN 12 AND 17 THEN 'Afternoon'
ELSE 'Evening'
End as `Sales Period`,
sum(total) as `Total Revenue`
from supermarket_sales
group by `Sales Period`
order by `Total Revenue` desc;
/*--> Short Insight
Afternoon contributes highest revenue of ₹172K nearly double evening sales.
Indicating peak customer activity during midday hours.
->Action
Ensure higher staffing and product availability during afternoon peak hours.
*/

##======>Payment Method
select payment as `Payment Method`,
Count(*) as `Total Transactions`
from supermarket_sales
group by payment
order by `Total Transactions` desc;
/*--> Short Insight
Ewallet and Cash dominating the transactions with 345 each while credit card usage is low
-> Action
Introduce cashback and discount offers on digital transaction to increase adoption.
*/