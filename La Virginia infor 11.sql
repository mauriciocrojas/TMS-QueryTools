--La Virginia

select top 1 * from wmwhse2.ORDERS where EXTERNORDERKEY = 0050272025

select * from wmwhse2.ORDERSTATUSSETUP
select * from wmwhse2.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from wmwhse2.TRANSMITLOG where key1 in('0000000014') and TABLENAME ='customerorderstaged'

--update wmwhse2.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000372310', '0000372314')