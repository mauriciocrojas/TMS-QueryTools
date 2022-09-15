--TMS1: ARION - Control Pedidos Duplicados

select ReferenciaExterna from Pedido where Eliminado = 0 group by ReferenciaExterna, IdCliente having count(ReferenciaExterna) > 1

select IdEstadoPedido, Eliminado, * from Pedido where ReferenciaExterna in ('38951101','38938801-M-532481')

select * from EstadoPedido where IdEstadoPedido in (1, 8, 1006)


--update pedido set Eliminado=1, FechaEliminacion= GETDATE() where ReferenciaExterna in (

select ReferenciaExterna from Pedido where ReferenciaExterna in (
select ReferenciaExterna from Pedido where Eliminado = 0 group by ReferenciaExterna, IdCliente having count(ReferenciaExterna) > 1)

) and IdEstadoPedido=1

------------------------------------------------------------------------------------------------------------------------------------------

--TMS2: ARION - Remitos Duplicados


--Con este primer select observamos la cantidad de remitos que tiene para el idorden (por el que filtramos)
select * from Remito where IdOrden = 1460272

--Eliminamos el ultimo remito que generó (tomamos el idremito mayor)
--delete Remito where IdRemito = 1329387
------------------------------------------------------------------------------------------------------------------------------------------

--TMS2: ARION - Pedidos sin ClienteOrden

/*
En el caso que el pedido se encuentre por delante del estado ingresado (casos de prepara primero)  
Reprocesar desde portal, correr la interfaz de preparación (transmitlog, transmitflag3 de la customerorderstaged) 
correr la interfaz de remito en el caso de nike en portal (LIBERATIONLOG)  y luego alinear con generador de estados el pedido.
*/

--!--


select status, SENDTOFLEET, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('000000136585')

--select status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('0391457875')

select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder in ('1342282')

select * from [3PL_POOL].dbo.PL_CUSTOMERS where IDCUSTOMER = 1166

--select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES=55519


--En este caso se debe reprocesar desde portal para que ingrese nuevamente en fleet con el cliente orden completo:
--update [3PL_POOL].dbo.PL_Orders set SENDTOFLEET = null, status = 3 where EXTERNORDERKEY in ('000000136585')

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 64 and value in (88)

select * from [3PL_POOL].dbo.PL_LIBERATION_LOG where EXTERNORDERKEY in ('1092723804')



select Eliminado, IdEstadoPedido, IdClienteOrden, * from [UNIGIS_DataRepository].dbo.Pedido where ReferenciaExterna in ('000000136585')

--Devuelvo el pedido a su estado original:
update [UNIGIS_DataRepository].dbo.Pedido set IdEstadoPedido = 2 where ReferenciaExterna in ('000000136585') and Eliminado = 0

select * from [UNIGIS_DataRepository].dbo.Orden where RefOrdenExterna in ('1092723804') 

--Al reprocesar desde portal, ingresan los pedidos con IdClienteOrden, 
--y debemos eliminar de manera lógica los pedidos sin IdClienteOrden:
update [UNIGIS_DataRepository].dbo.Pedido set Eliminado = 1 where IdPedido in ('1116112')

select * from [UNIGIS_DataRepository].dbo.EstadoPedido where IdEstadoPedido in (1013)

-----
--Consulta base Nike (151), esquema wmwhse1

select STATUS, ORDERKEY, * from wmwhse1.orders where EXTERNORDERKEY in ('1092723804')

select * from wmwhse1.ORDERSTATUSSETUP
select * from wmwhse1.ORDERSTATUSSETUP where CODE = 75

--key1 = orderkey
select * from wmwhse1.TRANSMITLOG where key1 in('0000372310', '0000372314') and TABLENAME ='customerorderstaged'

--update wmwhse1.TRANSMITLOG set TRANSMITFLAG3 = 0 where key1 in('0000372310', '0000372314')

------------------------------------------------------------------------------------------------------------------------------------------

--TMS3 - ARION - Error Despito Salida y Llegada en 1

--Ejecutar uno u otro dependiendo el tipo que sea.

--Eliminar depositos salida y llegada en la orden , no sabemos que lo pone en 1

--update orden set IdDepositoSalida=null,IdDepositoLlegada=null 
where IdDepositoSalida=1 and IdDepositoLlegada=1 and tipo='P'-- and IdOperacion=1009 
and IdTipoOrden=59

select IdDepositoSalida, IdDepositoLlegada, * from orden where IdDepositoSalida = 1 
and IdDepositoLlegada = 1 and Tipo = 'P' and IdTipoOrden=59


--actualizamoss las de entrega

--update orden set IdDepositoSalida=null,IdDepositoLlegada=null  

where IdDepositoSalida=1 and IdDepositoLlegada=1 and tipo='D' --and IdOperacion=1009

and IdTipoOrden=53
------------------------------------------------------------------------------------------------------------------------------------------

--TMS1
--ARION - Control Remito / COT.
--ARION - Rutas Duplicadas
--ARION - Guias Venta estado Inicial Rendidas
--ARION - Nike - Pedidos sin Dropid (DropId es reprocesar en Infor, converse, puma, samsonite, leqoq etc)
--ARION - Pedidos sin Dropid CNV-PUMA
--ARION - Control Pedidos Duplicados-


--TMS2
--ARION - Remitos Duplicados-
--ARION - Pedidos sin ClienteOrden-


--TMS3
--ARION – Ordenes Última Milla Duplicadas.
--ARION - Viajes Duplicados
--ARION - Viajes con Guias Faltantes
--ARION - Error Despito Salida y Llegada en 1-
--ARION - Pedidos sin DYN
--
--

/*
PEDIDOS QUE NO INGRESAN A FLEET

--SELECT * FROM PL_ORDERS where EXTERNORDERKEY='0081326185'

Cuando es un cliente Rutea Primero, o un pedido manual. Se debe actualizar el status=1,sendtofleet=null para el pedido que no ingresa.

--UPDATE PL_ORDERS SET STATUS=1, SENDTOFLEET= NULL WHERE EXTERNORDERKEY='0081326185'

Cuando el cliente es, nike, converse, samsonite o puma (PREPARA PRIMERO) y no es pedido manual. Se debe actualizar el status=3, sendtofleet=null para el pedido que no ingresa.

--UPDATE PL_ORDERS SET STATUS=3, SENDTOFLEET= NULL WHERE EXTERNORDERKEY='0081326185'

Prepara primero:
Se rutea con las cantidades modificadas, sin remito no se rutea.

Nike
Puma
Converse
Samsonite
Leqoq



Rutea primero:
Se rutea con las cantidades del pedido original.

Philips x3 (TPV, DA, PH)
Carrier (Fueguina, Arg)
La Virginia 
Sabic

*/