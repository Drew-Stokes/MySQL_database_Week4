
SELECT * 
FROM week_4.customers;

SELECT customer_last_name AS "last name", customer_first_name AS "first name", customer_phone AS phone FROM customers;

SELECT CONCAT(customer_first_name, ' ', customer_last_name) AS Customers, customer_phone  
AS Phone 
FROM customers
ORDER BY customer_phone
IN("New York", "New Jersey", "Washington DC");

SELECT DISTINCT(customer_city) AS cities FROM customers ORDER BY customer_city DESC;

SELECT CONCAT(title, ' ', unit_price) AS Original,  ROUND(unit_price * .25, 2)
AS Sale FROM items ORDER BY unit_price;
 
 SELECT customer_first_name, customer_last_name, customer_city FROM customers 
 WHERE customer_zip LIKE "4%";
 
 SELECT order_id, DATE_FORMAT(order_date, '%M %d %Y') AS Ordered FROM orders WHERE order_date > '20140301'
 AND order_date < '20140430';
 
 SELECT CONCAT(order_id, ' ', customer_id, ' ', DATEDIFF(order_date, shipped_date)) AS Days
 FROM orders WHERE DATEDIFF(order_date, shipped_date) >= 15 ORDER BY DATEDIFF(order_date, shipped_date)
 ASC;
 
 SELECT order_id, customer_id, order_date FROM orders 
 WHERE shipped_date is null ORDER BY order_date DESC;
 
 SELECT order_id, order_date, shipped_date, DAYNAME(order_date) AS Order_day 
 FROM orders WHERE DAYNAME(order_date) like "s%";
 
 SELECT customer_last_name, customer_phone, customer_fax FROM customers 
 WHERE customer_fax IS NOT NULL;
 

 -- INSERT INTO items (item_id, title, artist_id, unit_price) values
 (11, "Ode To MY ERD", 15, 12.95);
 
 SELECT * FROM items where item_id > 10;
 
 UPDATE items SET unit_price = 7.95 WHERE item_id = 11;
 
 SELECT * FROM items WHERE item_id > 10;
 
 DELETE FROM items WHERE item_id = 11;
 
 SELECT * FROM items WHERE item_id > 10;
 
 SELECT CONCAT(customer_last_name, ', ', customer_first_name) AS Customer, 
 CONCAT( '(', SUBSTRING(customer_phone, 1, 3), ')', ' ', SUBSTRING(customer_phone, 5, 3), 
'-', SUBSTRING(customer_phone, 6, 4) )AS Phone FROM customers
 ORDER BY customer_last_name;
 
 
 
 
 
 
 
 
 

 
 