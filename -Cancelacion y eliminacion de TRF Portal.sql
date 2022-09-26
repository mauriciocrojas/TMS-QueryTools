select deleted, status, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = 'TRF654464'

select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder = 1403740

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 3158 and Value = 12

update [3PL_POOL].dbo.PL_ORDERS set DELETED = 1, status = 277 where EXTERNORDERKEY = 'TRF654464'

delete [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder = 1403740

delete [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = 'TRF654464'

select * from [UNIGIS_DataRepository].dbo.Pedido where ReferenciaExterna = 'TRF654464'