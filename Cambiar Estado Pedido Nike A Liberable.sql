--Consulta base PL

select status, * from  [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('1083423494')

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer=64


select * from [3PL_POOL].dbo.PL_LIBERATION_LOG where EXTERNORDERKEY in ('1088613050')

--Paso el estado del pedido a liberable (pickeado 88, no entregado 12, reenvio 6)
update PL_ORDERS set STATUS = 88 where EXTERNORDERKEY in ('1083423494')

--Consulta base Nike (151), esquema wmwhse1

select STATUS, ORDERKEY, * from wmwhse1.orders where EXTERNORDERKEY in ('1081764485')

select * from wmwhse1.ORDERSTATUSSETUP
--select * from wmwhse1.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from wmwhse1.TRANSMITLOG where key1 in('0000365708') and TABLENAME ='customerorderstaged'

--update wmwhse1.TRANSMITLOG set TRANSMITFLAG2=0 where key1 in(

