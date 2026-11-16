CREATE KEYSPACE IF NOT EXISTS orders
WITH REPLICATION = {
  'class' : 'NetworkTopologyStrategy',
  'DC1' : 2,
  'DC2' : 1
};

DESCRIBE KEYSPACES;

USE orders;

CREATE TABLE IF NOT EXISTS order_details (
  RowID int PRIMARY KEY,
  OrderPriority text,
  Discount decimal,
  UnitPrice decimal,
  ShippingCost decimal,
  CustomerID int,
  ShipMode text,
  CustomerSegment text,
  ProductName text,
  ProductBaseMargin decimal,
  Country text,
  Region text,
  StateOrProvince text,
  City text,
  PostalCode text,
  OrderDate timestamp,
  ShipDate timestamp,
  Profit decimal,
  QuantityOrderedNew int,
  Sales decimal,
  OrderID int
);

DESCRIBE TABLES;
DESCRIBE KEYSPACE orders;
