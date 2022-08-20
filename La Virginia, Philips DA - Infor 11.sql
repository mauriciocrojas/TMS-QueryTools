--La Virginia

select status, * from [SCMDZ].wmwhse2.ORDERS where EXTERNORDERKEY = '0050450669'

select * from [SCMDZ].wmwhse2.ORDERDETAIL where EXTERNORDERKEY = '0391429875'

select * from [SCMDZ].wmwhse2.ORDERSTATUSSETUP
select * from [SCMDZ].wmwhse2.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from [SCMDZ].wmwhse2.TRANSMITLOG where key1 in('0000006454') and TABLENAME ='customerorderstaged'

update wmwhse2.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000006454') and TABLENAME ='customerorderstaged'


--Philips

select status, * from [SCPHL].wmwhse1.ORDERS where EXTERNORDERKEY = '0391429875'

select * from [SCPHL].wmwhse1.ORDERDETAIL where EXTERNORDERKEY = '0391429875'

select DESCR, * from [SCPHL].wmwhse1.SKU where sku = '300005801441'
