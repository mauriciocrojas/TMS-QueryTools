--('1071302382','1068493099')

select IDORDER, status, * from PL_ORDERS where EXTERNORDERKEY in ('0317956755')

select * from PL_ORDERDETAIL where IDORDER in ('1354262')

select value, * from PL_STATUS where IdCustomer = 64

--update PL_ORDERS set status = 88 where EXTERNORDERKEY in ('1071302382','1068493099') 
select status, * from pl_orders where EXTERNORDERKEY in ('1092331402') 

select * from PL_LIBERATION_LOG  where EXTERNORDERKEY in ('1092331402') 

-----
select * from EXO_Remito_Orden where RefExterna in ('1092331402')