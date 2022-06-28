--('1071302382','1068493099')

select status, * from PL_ORDERS where EXTERNORDERKEY in ('1071302382','1068493099')
select value, * from PL_STATUS where IdCustomer = 64

--update PL_ORDERS set status = 88 where EXTERNORDERKEY in ('1071302382','1068493099') 
select status, * from pl_orders where EXTERNORDERKEY in ('1071302382','1068493099') 

select * from PL_LIBERATION_LOG  where EXTERNORDERKEY in ('1071302382','1068493099') 