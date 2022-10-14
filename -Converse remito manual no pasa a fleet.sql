select * from [UNIGIS_DataRepository].dbo.Pedido where ReferenciaExterna in ('2051/1', '2050/2')

select addwho, ORDERTYPETMS, SENDTOFLEET, status, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from [3PL_POOL].dbo.PL_ORDERS where ExternOrderKey  in ('2051/1', '2050/2')

update [3PL_POOL].dbo.PL_ORDERS set SUSPENDINDICATOR = 0, status = 5 where ExternOrderKey  in ('2051/1', '2050/2')

select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder in (1420389, 1420391)

select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES = 88895

select * from [3PL_POOL].dbo.PL_ORDERSTYPETMS where IDORDERSTYPE = 1

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 1166

