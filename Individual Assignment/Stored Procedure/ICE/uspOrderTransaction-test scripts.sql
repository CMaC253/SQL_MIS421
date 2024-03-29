/**

Test the uspPersistentTran stored procedure with the following parameters:
@sku int, @orderNum int, @warehouseID int, @quantity int, @price float, 
@extendedPrice float, @orderTotal float, @result int OUTPUT, @message varchar(100) OUTPUT

*/
select * from tblUSPSkuData;
select * from tblUSPInventory;
select * from tblUSPRetailOrder
select * from tblUSPOrderItem
select * from tblUSPInventory where WarehouseID=100 and SKU=100100;

--Not available, SKU does not exist in the warehouse #100
Declare @result int, @message varchar(100)
--parameters: @sku, @orderNum, @warehouseID, @quantity, @price, @extendedPrice, @orderTotal, @result, @message
execute uspPersistentTran 201000, 311, 100, 100, 55.5, 5550, 500, @result OUTPUT, @message OUTPUT
SELECT @result
SELECT @message

--Not available, not enough number of inventory in the warehouse #100
Declare @result int, @message varchar(100)
--parameters: @sku, @orderNum, @warehouseID, @quantity, @price, @extendedPrice, @orderTotal, @result, @message
execute uspPersistentTran 100200, 312, 100, 100, 55.5, 5550, 500, @result OUTPUT, @message OUTPUT
SELECT @result
SELECT @message

--Successful transaction -- new order
Declare @result int, @message varchar(100)
--parameters: @sku, @orderNum, @warehouseID, @quantity, @price, @extendedPrice, @orderTotal, @result, @message
execute uspPersistentTran 100100, 312, 100, 3, 55.5, 5550, 500, @result OUTPUT, @message OUTPUT
SELECT @result
SELECT @message

--Successful transaction -- existing order
Declare @result int, @message varchar(100)
--parameters: @sku, @orderNum, @warehouseID, @quantity, @price, @extendedPrice, @orderTotal, @result, @message
execute uspPersistentTran 100200, 312, 100, 1, 55.5, 555, 5000, @result OUTPUT, @message OUTPUT
SELECT @result
SELECT @message


