--Consulta base PL

select RECORD_TYPE, status, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in (
'1102116937',
'1102116936',
'1101735711',
'1102116938'
)

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer=64


select * from [3PL_POOL].dbo.PL_LIBERATION_LOG where EXTERNORDERKEY in (
'1102116937',
'1102116936',
'1101735711',
'1102116938'
)


--delete [3PL_POOL].dbo.PL_LIBERATION_LOG where EXTERNORDERKEY in (
'1102116937',
'1102116936',
'1101735711',
'1102116938'
)

--Paso el estado del pedido a liberable (pickeado 88, no entregado 12, reenvio 6)
update [3PL_POOL].dbo.PL_ORDERS set STATUS = 88 where EXTERNORDERKEY in (
'1102116937',
'1102116936',
'1101735711',
'1102116938'
)

--Consulta base Nike (151) infor 10, esquema wmwhse1:

select STATUS, ORDERKEY, * from [SCNIK].wmwhse1.orders where EXTERNORDERKEY in ('1081764485')

select * from [SCNIK].wmwhse1.ORDERSTATUSSETUP

--select * from [SCNIK].wmwhse1.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from [SCNIK].wmwhse1.TRANSMITLOG where key1 in('0000365708') and TABLENAME ='customerorderstaged'

--update [SCNIK].wmwhse1.TRANSMITLOG set TRANSMITFLAG3=0 where key1 in ('0000365708') and TABLENAME ='customerorderstaged'

