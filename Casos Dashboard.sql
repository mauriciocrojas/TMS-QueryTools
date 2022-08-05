--TMS1: ARION - Control Pedidos Duplicados

select ReferenciaExterna from Pedido where Eliminado = 0 group by ReferenciaExterna, IdCliente having count(ReferenciaExterna) > 1

select IdEstadoPedido, * from Pedido where ReferenciaExterna = '38897701'

select * from EstadoPedido where IdEstadoPedido in (1, 8)

/*
update pedido set Eliminado=1, FechaEliminacion= GETDATE() where ReferenciaExterna in (

select ReferenciaExterna from Pedido where ReferenciaExterna in (
select ReferenciaExterna from Pedido where Eliminado = 0 group by ReferenciaExterna, IdCliente having count(ReferenciaExterna) > 1)

) and IdEstadoPedido=1
*/
------------------------------------------------------------------------------------------------------------------------------------------

--TMS2: ARION - Remitos Duplicados


--Con este primer select observamos la cantidad de remitos que tiene para el idorden (por el que filtramos)
select * from Remito where IdOrden = 1413288

--Eliminamos el ultimo remito que generó (tomamos el idremito mayor)
--delete Remito where IdRemito = 1285740
------------------------------------------------------------------------------------------------------------------------------------------

--TMS2: ARION - Pedidos sin ClienteOrden

/*
En el caso que el pedido se encuentre por delante del estado ingresado (casos de prepara primero)  
Reprocesar desde portal, correr la interfaz de preparación (transmitlog, transmitflag3 de la customerorderstaged) 
correr la interfaz de remito en el caso de nike en portal (LIBERATIONLOG)  y luego alinear con generador de estados el pedido.
*/

--!--
select status, SENDTOFLEET, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('0391457875')

--select status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('0391457875')

--select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder in ('1342339')

--select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES=55519


--En este caso se debe reprocesar desde portal para que ingrese nuevamente en fleet con el cliente orden completo.
--update [3PL_POOL].dbo.PL_Orders set SENDTOFLEET = null, status = 1 where EXTERNORDERKEY in ('0391457875')

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 7361 and value in (18)

select * from [3PL_POOL].dbo.PL_LIBERATION_LOG where EXTERNORDERKEY in ('1089338794','1089106048')



select Eliminado, * from [UNIGIS_DataRepository].dbo.Pedido where ReferenciaExterna in ('1089338794','1089106048')

--Al reprocesar desde portal, ingresan los pedidos con IdClienteOrden, 
--y debemos eliminar de manera lógica los pedidos sin IdClienteOrden
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

------------------------------------------------------------------------------------------------------------------------------------------


--TMS1
--ARION - Control Remito / COT
--ARION - Rutas Duplicadas
--ARION - Guias Venta estado Inicial Rendidas
--ARION - Nike - Pedidos sin Dropid (DropId es reprocesar en Infor, converse, puma, samsonite, leqoq etc)
--ARION - Control Pedidos Duplicados


--TMS2
--ARION - Remitos Duplicados
--ARION - Pedidos sin ClienteOrden


--TMS3
--ARION – Ordenes Última Milla Duplicadas
--ARION - Viajes Duplicados
--ARION - Viajes con Guias Faltantes
--ARION - Error Despito Salida y Llegada en 1
--ARION - Pedidos sin DYN
--
--