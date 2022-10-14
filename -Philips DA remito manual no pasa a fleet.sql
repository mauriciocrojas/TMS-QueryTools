select * from Pedido where ReferenciaExterna = '0250065457'
select addwho, SENDTOFLEET, status, SUSPENDINDICATOR, ORDERTYPETMS, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '0250065457'


select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder = 1420661

select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES = 55762

select * from [3PL_POOL].dbo.PL_ORDERSTYPETMS


  SELECT distinct top 1 idorder FROM    [3PL_POOL].dbo.PL_ORDERS AS p  
WHERE  p.IDCUSTOMER = 7361
 --Tomo pedidos  que no fueron enviados a Fleet + PENDIENTE PREPARACION
 and ((p.SENDTOFLEET is null and p.STATUS in (1,3,5) and  p.SUSPENDINDICATOR = 0 and (p.ORDERTYPETMS in (1 ,5, 6)))
 or  (p.SENDTOFLEET is null and p.STATUS = 1 and p.ORDERTYPETMS in (select IDORDERSTYPE from [3PL_POOL].dbo.PL_ORDERSTYPETMS where IDORDERSTYPE not in(1,5, 6) and RUTEA = 1)  and SUSPENDINDICATOR = 0))
 and p.EXTERNORDERKEY = '0250065457' 