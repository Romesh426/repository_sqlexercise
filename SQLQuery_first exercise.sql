SELECT *
FROM SalesLT.Product

select name, standardcost, listprice
from SalesLT.Product


select name, listprice-standardcost
from SalesLT.Product;

select name, listprice-standardcost as markup
from SalesLT.Product;

select ProductNumber, color,size,color + ','+ size as productdetails
from SalesLT.Product

select productid + ':' + Name as Productname
from SalesLT.Product

select CAST(productid as varchar(5)) + ':' + name as productname
from SalesLT.Product

select CONVERT(varchar(5), ProductID ) + ':' + name as productname
from SalesLT.Product

SELECT SELLSTARTDATE,
CONVERT(nvarchar(30), sellstartdate) as converteddate,
convert(nvarchar(30),sellstartdate,126) as iso88601formatdate
from SalesLT.Product

select name,TRY_CAST(size as integer) as numbersize
from SalesLT.Product

SELECT NAME, ISNULL(TRY_CAST(Size as integer),0) as numbersize
from SalesLT.Product

 SELECT Name, NULLIF(Color, 'Multi') AS SingleColor
 FROM SalesLT.Product;

  SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated
 FROM SalesLT.Product;

 SELECT Name,
     CASE
         WHEN SellEndDate IS NULL THEN 'Currently for sale'
         ELSE 'No longer available'
     END AS SalesStatus
 FROM SalesLT.Product;

  SELECT Name,
     CASE Size
         WHEN 'S' THEN 'Small'
         WHEN 'M' THEN 'Medium'
         WHEN 'L' THEN 'Large'
         WHEN 'XL' THEN 'Extra-Large'
         ELSE ISNULL(Size, 'n/a')
     END AS ProductSize
 FROM SalesLT.Product;





