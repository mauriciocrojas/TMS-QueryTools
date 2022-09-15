--(Infor 11-srv95):
--La Virginia

select status, * from [SCMDZ].wmwhse2.ORDERS where EXTERNORDERKEY = '0050496730'

select * from [SCMDZ].wmwhse2.ORDERDETAIL where EXTERNORDERKEY = '0050472338'

select * from [SCMDZ].wmwhse2.ORDERSTATUSSETUP
select * from [SCMDZ].wmwhse2.ORDERSTATUSSETUP where CODE = 2

--key1 = orderkey
select * from [SCMDZ].wmwhse2.TRANSMITLOG where key1 in('0000007880') and TABLENAME ='customerorderstaged'

update [SCMDZ].wmwhse2.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000007880') and TABLENAME ='customerorderstaged'


--Philips PH y DA:

select status, * from [SCPHL].wmwhse1.ORDERS where EXTERNORDERKEY = '0391429875'

select * from [SCPHL].wmwhse1.ORDERDETAIL where EXTERNORDERKEY = '0391429875'

select * from [SCPHL].wmwhse1.TRANSMITLOG where key1 in('0000012829') and TABLENAME ='customerorderstaged'

select DESCR, * from [SCPHL].wmwhse1.SKU where sku = '300005801441'

update [SCPHL].wmwhse1.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000012829') and TABLENAME ='customerorderstaged'


--Sabic:

select status, * from [SCMC4].wmwhse1.orders where externorderkey = '805215797'

select * from [SCMC4].wmwhse1.ORDERSTATUSSETUP where CODE = 17

select * from [SCMC4].wmwhse1.TRANSMITLOG where key1 = '0000003964' and TABLENAME ='customerorderstaged'

update [SCMC4].wmwhse1.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 = '0000003964' and TABLENAME ='customerorderstaged'


---
--OriginalQTY lo que envia el cliente
--Openqty lo que se preparó pero aún no se expidió
--Shippedqty lo expedido

---

--(Infor 10-srv150):
--Converse 

select status, * from [SCMC1].wmwhse1.ORDERS where EXTERNORDERKEY like '%000000136585%'

select * from [SCMC1].wmwhse1.ORDERDETAIL where EXTERNORDERKEY = '0391545797'

select * from [SCMC1].wmwhse1.TRANSMITLOG where key1 in('0000044600') and TABLENAME ='customerorderstaged'

update [SCMC1].wmwhse1.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000045258') and TABLENAME ='customerorderstaged'


--Puma:

select status, * from [SCMC1].wmwhse2.ORDERS where EXTERNORDERKEY like '%0711900880%'

select * from [SCMC1].wmwhse2.ORDERDETAIL where EXTERNORDERKEY = '0711900880'

select * from [SCMC1].wmwhse2.TRANSMITLOG where key1 in('0000044600') and TABLENAME ='customerorderstaged'

update [SCMC1].wmwhse2.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000044600') and TABLENAME ='customerorderstaged'


--Samsonite:

select status, * from [SCMC1].wmwhse3.ORDERS where EXTERNORDERKEY like '%0711900880%'

select * from [SCMC1].wmwhse3.ORDERSTATUSSETUP where CODE = 75

select * from [SCMC1].wmwhse3.ORDERDETAIL where EXTERNORDERKEY = '0391545797'

select * from [SCMC1].wmwhse3.TRANSMITLOG where key1 in('0000044600') and TABLENAME ='customerorderstaged'

update [SCMC1].wmwhse3.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000044600') and TABLENAME ='customerorderstaged'
