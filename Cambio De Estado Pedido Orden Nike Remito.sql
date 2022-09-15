--('1071302382','1068493099')

select IDORDER, status, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('0317956755')


select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IDORDER in ('1354262')

select value, * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 64

--update PL_ORDERS set status = 88 where EXTERNORDERKEY in ('1071302382','1068493099') 
select status, * from [3PL_POOL].dbo.pl_orders where EXTERNORDERKEY in ('1092331402') 

select * from [3PL_POOL].dbo.PL_LIBERATION_LOG  where EXTERNORDERKEY in ('1092331402') 

-----
select * from [UNIGIS_DataRepository].dbo.EXO_Remito_Orden where RefExterna in ('1092331402')