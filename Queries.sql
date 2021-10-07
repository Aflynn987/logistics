# Queries

SELECT * FROM shipper;

SELECT * FROM weight_level
WHERE WeightClass="Light";

SELECT * FROM warehouse
WHERE Country="Ireland";

SELECT * FROM products
ORDER BY ProductsID;

SELECT * FROM ref_calender
where ExpectedDeliveryDate=ActualDeliveryDate;