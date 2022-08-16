--La Virginia

select status, * from wmwhse2.ORDERS where EXTERNORDERKEY = '0050450669'

select * from wmwhse2.ORDERSTATUSSETUP
select * from wmwhse2.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from wmwhse2.TRANSMITLOG where key1 in('0000006454') and TABLENAME ='customerorderstaged'

update wmwhse2.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000006454') and TABLENAME ='customerorderstaged'

