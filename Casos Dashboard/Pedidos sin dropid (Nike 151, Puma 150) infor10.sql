--ARION - Pedidos sin Dropid CNV-PUMA  (itl-srv150 - [SCMC1] - wmwhse2)

--Consultamos en la tabla de la base de infor10 (puma wmwhse2, converse wmwhse1, samsonite wmwhse3) 
--en la tabla orders filtrando por la refereciaexterna


--obtenemos el orderkey
select orderkey, * from [SCMC1].wmwhse1.orders where externorderkey in (
'000000137201',
'000000137215',
'000000137222'
)

--Reprocesamos en la tabla Transmitlog filtrando por el orderkey que obtuvimos

--actualizamos el campo transmitflag3 de 9 a 0 (para que reenvie la interfaz de bultos a fleet)
--donde el tablename sea igual a customerorderstaged.


select * from [SCMC1].wmwhse1.TRANSMITLOG where key1 in (
'0000045865',
'0000045879',
'0000045886'
) and TABLENAME= 'customerorderstaged'

update [SCMC1].wmwhse1.TRANSMITLOG set Transmitflag3=0 where key1 in (
'0000045865',
'0000045879',
'0000045886'
) and TABLENAME= 'customerorderstaged'
--------------------------------------------------------------------------------------------------------------------------


--NIKE PEDIDO SIN DROP ID (itl-srv151 - wmwhse1)

--Revisar el estado del pedido en fleet, Si se encuentra en estado ingresado,

--Reprocesar en portal

UPDATE [3PL_POOL].dbo.PL_ORDERS SET STATUS=3, SENDTOFLEET= NULL WHERE EXTERNORDERKEY in ('1107449143','1105653725')


--NIKE PEDIDO SIN DROP ID (CUANDO AVANZO)

--Consultar para ver cual es la solución.
