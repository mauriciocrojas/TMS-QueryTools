--TMS2: ARION - Pedidos sin ClienteOrden

/*
En el caso que el pedido se encuentre por delante del estado ingresado (casos de prepara primero)  
Reprocesar desde portal, correr la interfaz de preparaci�n (transmitlog, transmitflag3 de la customerorderstaged) 
correr la interfaz de remito en el caso de nike en portal (LIBERATIONLOG)  y luego alinear con generador de estados el pedido.
*/

select status, SENDTOFLEET, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('1089338794','1089106048')

--En este caso se debe reprocesar desde portal para que ingrese nuevamente en fleet con el cliente orden completo.
---update Pl_Orders set SENDTOFLEET = null, status = 1 where EXTERNORDERKEY in ('1089338794','1089106048')

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 64 and value in (88)

select * from [3PL_POOL].dbo.PL_LIBERATION_LOG where EXTERNORDERKEY in ('1089338794','1089106048')



select Eliminado, * from [UNIGIS_DataRepository].dbo.Pedido where ReferenciaExterna in ('1089338794','1089106048')

--Al reprocesar desde portal, ingresan los pedidos con IdClienteOrden, 
--y debemos eliminar de manera l�gica los pedidos sin IdClienteOrden
--update [UNIGIS_DataRepository].dbo.Pedido set Eliminado = 1 where IdPedido in ('1083398','1083400')

select * from [UNIGIS_DataRepository].dbo.EstadoPedido where IdEstadoPedido in (1013)

-----
--Consulta base Nike (151), esquema wmwhse1

select STATUS, ORDERKEY, * from wmwhse1.orders where EXTERNORDERKEY in ('1089338794','1089106048')

select * from wmwhse1.ORDERSTATUSSETUP
select * from wmwhse1.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from wmwhse1.TRANSMITLOG where key1 in('0000372310', '0000372314') and TABLENAME ='customerorderstaged'

--update wmwhse1.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000372310', '0000372314')