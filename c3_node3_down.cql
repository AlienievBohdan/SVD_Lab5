CONSISTENCY ALL;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
CONSISTENCY QUORUM;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
CONSISTENCY ONE;
UPDATE orders.order_details SET Sales = 200.00 WHERE RowID = 88888;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
