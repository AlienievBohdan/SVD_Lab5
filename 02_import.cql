COPY orders.order_details (RowID, OrderPriority, Discount, UnitPrice, ShippingCost, CustomerID,
  ShipMode, CustomerSegment, ProductName, ProductBaseMargin, Country, Region, StateOrProvince,
  City, PostalCode, OrderDate, ShipDate, Profit, QuantityOrderedNew, Sales, OrderID)
FROM '/mnt/lab5/orders.csv'
WITH HEADER = TRUE
AND DELIMITER = ';'
AND ESCAPE = '"'
AND DATETIMEFORMAT = '%d.%m.%Y';

SELECT COUNT(*) FROM orders.order_details;
SELECT rowid, orderpriority, productname, region, city, orderdate, sales FROM orders.order_details LIMIT 5;
SELECT rowid, productname FROM orders.order_details WHERE rowid IN (23639, 7733, 22015);
