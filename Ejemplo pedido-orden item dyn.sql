--Prueba de la generación de OrdenItem_Dyn y Orden_Dyn:
--Ambiente: QA

/*

1: RX: Creación jornada de philips:
26983 - Philips - 12-10-22

2: Lista de pedidos seleccionados para la prueba (10):

--Con RX:
'0306578540',
'0306579965',
'0314310312',

--Con RD:
'0314330423',
'0314330177',
'0314460759',

--Para pruebas Uni:
'0314473507',
'0314473666',
'0314461510',
'0314466531'

3: Verificación de datos: select * from Pedido-PedidoItem-Pedido_Dyn-PedidoItem_Dyn 

4: RX: Creación de órdenes a 3 pedidos, consulta a orden, ordenitem, "orden_dyn y ordenitem_dyn" (estas dos últimas no se crean)
'0306578540',
'0306579965',
'0314310312'

5: RD: Creación de órdenes a 3 pedidos, consulta a orden, ordenitem, "orden_dyn y ordenitem_dyn" (estas dos últimas sí se crean)
'0314330423',
'0314330177',
'0314460759',

6: Pedidos para que pruebe Unisolutions.
'0314473507',
'0314473666',
'0314461510',
'0314466531'
*/

--Pedido
select * from Pedido where ReferenciaExterna in (
'0306578540',
'0306579965',
'0314310312',
'0314330423',
'0314330177',
'0314460759',
'0314473507',
'0314473666',
'0314461510',
'0314466531'
)


--PedidoItem
select * from PedidoItem where IdPedido in (
select IdPedido from Pedido where ReferenciaExterna in (
'0306578540',
'0306579965',
'0314310312',
'0314330423',
'0314330177',
'0314460759',
'0314473507',
'0314473666',
'0314461510',
'0314466531'
)
)


--PedidoItem_Dyn
select  * from PedidoItem_Dyn where IdPedidoItem in (
select IdPedidoItem from PedidoItem where IdPedido in (
select IdPedido from Pedido where ReferenciaExterna in (
'0306578540',
'0306579965',
'0314310312',
'0314330423',
'0314330177',
'0314460759',
'0314473507',
'0314473666',
'0314461510',
'0314466531'
)
)
)

--Pedido_Dyn
select * from Pedido_Dyn where IdPedido in (
select IdPedido from Pedido where ReferenciaExterna in (
'0306578540',
'0306579965',
'0314310312',
'0314330423',
'0314330177',
'0314460759',
'0314473507',
'0314473666',
'0314461510',
'0314466531'
)
)

-------------------------------------------------------------------

--Con Routing X

--Orden
select * from Orden where RefOrdenExterna in (
'0306578540',
'0306579965',
'0314310312'
)

--OrdenItem
select * from OrdenItem where IdOrden in (
select IdOrden from Orden where RefOrdenExterna in (
'0306578540',
'0306579965',
'0314310312'
)
)

--OrdenItem_Dyn (no tiene datos)
select * from OrdenItem_Dyn where IdOrdenItem in (
select IdOrdenItem from OrdenItem where IdOrden in (
select IdOrden from Orden where RefOrdenExterna in (
'0306578540',
'0306579965',
'0314310312'
)
)
)

--OrdenItem (no tiene datos)
select * from Orden_Dyn where IdOrden in (
select IdOrden from Orden where RefOrdenExterna in (
'0306578540',
'0306579965',
'0314310312'
)
)

-------------------------------------------------------------------

--Con Routing Desktop

--Orden
select * from Orden where RefOrdenExterna in (
'0314330423',
'0314330177',
'0314460759'
)

--OrdenItem
select * from OrdenItem where IdOrden in (
select IdOrden from Orden where RefOrdenExterna in (
'0314330423',
'0314330177',
'0314460759'
)
)

--OrdenItem_Dyn (tiene datos)
select * from OrdenItem_Dyn where IdOrdenItem in (
select IdOrdenItem from OrdenItem where IdOrden in (
select IdOrden from Orden where RefOrdenExterna in (
'0314330423',
'0314330177',
'0314460759'
)
)
)

--OrdenItem (tiene datos)
select * from Orden_Dyn where IdOrden in (
select IdOrden from Orden where RefOrdenExterna in (
'0314330423',
'0314330177',
'0314460759'
)
)