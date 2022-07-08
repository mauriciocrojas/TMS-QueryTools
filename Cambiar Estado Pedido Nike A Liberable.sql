--Consulta base PL

select status, * from PL_ORDERS where EXTERNORDERKEY in ('1081764485')

select * from PL_STATUS where IdCustomer=64


select * from PL_LIBERATION_LOG where EXTERNORDERKEY in ('1081764485')

--Paso el estado del pedido a liberable (pickeado, no entregado, reenvio)
--update PL_ORDERS set STATUS = 88 where EXTERNORDERKEY in ('1081764485')

--Consulta base Nike (151), esquema wmwhse1

select STATUS, ORDERKEY, * from wmwhse1.orders where EXTERNORDERKEY in ('1081764485')

--key1 = orderkey
select * from wmwhse1.TRANSMITLOG where key1 in('0000365708') and TABLENAME ='customerorderstaged'

--update wmwhse1.TRANSMITLOG set TRANSMITFLAG2=0 where key1 in(

