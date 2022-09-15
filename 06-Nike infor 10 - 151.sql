--Consulta base Nike (151) infor 10, esquema wmwhse1:

select STATUS, ORDERKEY, * from [SCNIK].wmwhse1.orders where EXTERNORDERKEY in ('1081764485')

select * from [SCNIK].wmwhse1.ORDERSTATUSSETUP

--select * from [SCNIK].wmwhse1.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from [SCNIK].wmwhse1.TRANSMITLOG where key1 in('0000365708') and TABLENAME ='customerorderstaged'

--update [SCNIK].wmwhse1.TRANSMITLOG set TRANSMITFLAG3=0 where key1 in ('0000365708') and TABLENAME ='customerorderstaged'