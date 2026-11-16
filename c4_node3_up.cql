CONSISTENCY ALL;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
DELETE FROM orders.order_details WHERE RowID = 88888;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
