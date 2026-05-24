SELECT * FROM erp_sales
LIMIT 10;
SELECT COUNT(*) FROM erp_sales;

SELECT ROUND(SUM(total_amount)::numeric, 2) AS total_revenue
FROM erp_sales;

SELECT ROUND(AVG(total_amount)::numeric, 2) AS avg_order_value
FROM erp_sales;

SELECT product_category,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY product_category
ORDER BY revenue DESC;

SELECT month,
       ROUND(SUM(total_amount)::numeric, 2) AS monthly_sales
FROM erp_sales
GROUP BY month
ORDER BY month;

SELECT customer_state,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY customer_state
ORDER BY revenue DESC;

SELECT month,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY month
ORDER BY month;

SELECT product_category,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY product_category
ORDER BY revenue DESC
LIMIT 5;

SELECT customer_state,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY customer_state
ORDER BY revenue DESC;

SELECT payment_mode,
       COUNT(*) AS total_orders,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY payment_mode
ORDER BY revenue DESC;

SELECT order_status,
       COUNT(*) AS total_orders
FROM erp_sales
GROUP BY order_status
ORDER BY total_orders DESC;

SELECT salesperson,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY salesperson
ORDER BY revenue DESC
LIMIT 10;

SELECT quarter,
       ROUND(SUM(total_amount)::numeric, 2) AS revenue
FROM erp_sales
GROUP BY quarter
ORDER BY quarter;

SELECT product_category,
       ROUND(AVG(discount_pct)::numeric, 2) AS avg_discount
FROM erp_sales
GROUP BY product_category
ORDER BY avg_discount DESC;