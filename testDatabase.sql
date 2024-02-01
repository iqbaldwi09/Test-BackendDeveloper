USE classicmodels;

SELECT o.customerNumber, COUNT(o.orderNumber) AS totalOrders
FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
WHERE p.productLine = 'Classic Cars'
GROUP BY o.customerNumber
HAVING totalOrders > 23;