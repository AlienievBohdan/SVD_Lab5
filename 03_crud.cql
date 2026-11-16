USE orders;

SELECT rowid, orderpriority, productname, region, city, sales, orderdate FROM order_details WHERE rowid = 20847;

CREATE INDEX IF NOT EXISTS idx_region ON order_details (region);
SELECT COUNT(*) FROM order_details WHERE region = 'West';
SELECT COUNT(*) FROM order_details WHERE region = 'Central';

INSERT INTO order_details (RowID, OrderPriority, Discount, UnitPrice, ShippingCost, CustomerID, ShipMode,
  CustomerSegment, ProductName, ProductBaseMargin, Country, Region, StateOrProvince, City, PostalCode,
  OrderDate, ShipDate, Profit, QuantityOrderedNew, Sales, OrderID)
VALUES (99999, 'High', 0.05, 120.50, 9.99, 9999, 'Express Air', 'Consumer', 'Lab5 Test Product (Alieniev B.)',
  0.5, 'Ukraine', 'East', 'Ternopil Oblast', 'Ternopil', '46000',
  '2025-11-13', '2025-11-14', 15.75, 3, 361.50, 99999);
SELECT rowid, productname, city, quantityorderednew, sales FROM order_details WHERE rowid = 99999;

UPDATE order_details SET QuantityOrderedNew = 5, Sales = 602.50 WHERE RowID = 99999;
SELECT rowid, productname, city, quantityorderednew, sales FROM order_details WHERE rowid = 99999;

DELETE FROM order_details WHERE RowID = 99999;
SELECT rowid, productname FROM order_details WHERE rowid = 99999;
SELECT COUNT(*) FROM order_details;
