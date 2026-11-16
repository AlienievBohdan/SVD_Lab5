CONSISTENCY ONE;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
CONSISTENCY QUORUM;
SELECT rowid, productname, sales FROM orders.order_details WHERE rowid = 88888;
