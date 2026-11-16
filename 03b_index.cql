DESCRIBE INDEX orders.idx_region;
SELECT COUNT(*) FROM orders.order_details WHERE region = 'West';
SELECT COUNT(*) FROM orders.order_details WHERE region = 'Central';
SELECT COUNT(*) FROM orders.order_details WHERE region = 'East';
SELECT COUNT(*) FROM orders.order_details WHERE region = 'South';
