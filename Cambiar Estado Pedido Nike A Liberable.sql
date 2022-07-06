--Consulta base PL

select status, * from PL_ORDERS where EXTERNORDERKEY in (
'1071881671',
'1070817335',
'1070817336',
'1071881670',
'1064611782')

select * from PL_STATUS where IdCustomer=64


select * from PL_LIBERATION_LOG where EXTERNORDERKEY in (
'1071881671',
'1070817335',
'1070817336',
'1071881670',
'1064611782')


--Consulta base Nike (151)

select STATUS, * from wmwhse1.orders where EXTERNORDERKEY in(
'1071881671',
'1070817335',
'1070817336',
'1071881670',
'1064611782')


select * from wmwhse1.TRANSMITLOG where key1 in(

select orderkey from wmwhse1.orders where EXTERNORDERKEY in(
'1071881671',
'1070817335',
'1070817336',
'1071881670',
'1064611782')) and TABLENAME ='customerorderstaged'

update wmwhse1.TRANSMITLOG set TRANSMITFLAG2=0 where key1 in(

select orderkey from wmwhse1.orders where EXTERNORDERKEY in(
'1071881671',
'1070817335',
'1070817336',
'1071881670',
'1064611782')) and TABLENAME ='customerorderstaged'