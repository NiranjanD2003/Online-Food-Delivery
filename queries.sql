1. Restaurants with average rating above 4.5
SELECT r.name, ROUND(AVG(rt.rating),2) AS avg_rating
FROM Restaurants r
JOIN Ratings rt ON r.restaurant_id = rt.restaurant_id
GROUP BY r.name
HAVING AVG(rt.rating) > 4.5;

Expected Output:
NAME          AVG_RATING
Spicy Treat       4.70
Pizza Hub         4.75


2. Delivery boy with max orders in last 30 days
SELECT db.name, COUNT(o.order_id) AS total_orders
FROM Delivery_Boys db
JOIN Orders o ON db.delivery_boy_id = o.delivery_boy_id
WHERE o.order_date >= SYSDATE - 30
GROUP BY db.name
ORDER BY total_orders DESC
FETCH FIRST 1 ROWS ONLY;

Expected Output:
NAME           TOTAL_ORDERS
Vijay Patil         3


3. Customer who ordered most frequently
SELECT c.name, COUNT(o.order_id) AS order_count
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY order_count DESC
FETCH FIRST 1 ROWS ONLY;

Expected Output:
NAME           ORDER_COUNT
Amit Sharma         3


4. Revenue by restaurant for a date range
SELECT r.name, SUM(o.total_amount) AS revenue
FROM Restaurants r
JOIN Orders o ON r.restaurant_id = o.restaurant_id
WHERE o.order_date BETWEEN TO_DATE('2025-07-01', 'YYYY-MM-DD')
                        AND TO_DATE('2025-07-31', 'YYYY-MM-DD')
GROUP BY r.name
ORDER BY revenue DESC;

Expected Output:
NAME          REVENUE
Pizza Hub       450
Royal Biryani   650
Spicy Treat     450