



select IdOrden, IdPedido from Orden where IdOrden in (1479229)

---Campos Dinámicos de la orden
insert into Orden_Dyn
select 1479229, null, null, null, CodigoCliente, null, CUIT, null, null, null, Turno, CodigoTurno, FechaTurno,null,null 
from Pedido_Dyn where IdPedido = 1119028

--Insertar detalle del pedido en la orden item dym
insert into OrdenItem_Dyn 
select 6796078, OrigenProducto, NroDespacho, SKU, CodigoMercosur, NumeroLinea from PedidoItem_Dyn where IdPedidoItem = 12669447

--Consulto ordenitem:
select IdOrdenItem, * from OrdenItem where IdOrden = 1479229
--delete OrdenItem_Dyn where IdOrdenItem = 6796088

--PedidioItemDyn:
select * from PedidoItem_Dyn where IdPedidoItem in (
select IdPedidoItem from PedidoItem where IdPedido = 1119028)

--Consulto campos dinámicos orden y borro registro mal generado:
select * from Orden_Dyn where IdOrden = 1479229
delete Orden_Dyn where IdOrden = 1479229
--delete Orden_Dyn where IdOrden = 1478919 and CUIT is null




--


--Consulto los items orden:
select  * from OrdenItem where IdOrden = 1479718

--Consulto el item dym orden:
select * from OrdenItem_Dyn where IdOrdenItem in (
select IdOrdenItem from OrdenItem where IdOrden = 1479718
)

--PedidoItem
select * from PedidoItem where IdPedido = 1120179

--PedidioItemDyn
select * from PedidoItem_Dyn where IdPedidoItem = 12684808

--Pedido dyn (campos dinámicos)
select * from Pedido_Dyn where IdPedido = 1122471
