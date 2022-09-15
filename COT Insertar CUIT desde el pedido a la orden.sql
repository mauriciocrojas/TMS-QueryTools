--Insertar CUIT desde el pedido hasta la orden.

insert into Orden_Dyn
select 1445244, null, null, null, CodigoCliente, null, CUIT, null, null, null, Turno, CodigoTurno, FechaTurno,null,null 
from Pedido_Dyn where IdPedido = 1100182

select top 10 * from Orden_Dyn where IdOrden = 1431162
--delete Orden_Dyn where IdOrden = 1431162

--para sacar el id pedido filtramos:
select * from Pedido where ReferenciaExterna = '1342734' --Idpedido 1087497

select * from Pedido_Dyn where IdPedido = 1095676

select * from PedidoItem where IdPedido = 1095676

select * from PedidoItem_Dyn where IdPedidoItem = 12409370

select * from OrdenItem where IdOrden = '1439379'

select * from OrdenItem_Dyn where IdOrdenItem = '6397094'

insert into OrdenItem_Dyn (
IdOrdenItem,
OrigenProducto,
NroDespacho,
SKU,
CodigoMercosur,
NumeroLinea) 
VALUES (6294588, '0', '1339429', '4065449361026', '1339429', 7)

select * from OrdenItem_Dyn where IdOrdenItem = 6294588

--update OrdenItem_Dyn set CodigoMercosur = 640411 where IdOrdenItem = 6294588

--Insertar detalle del pedido en la orden
insert into OrdenItem_Dyn 
select 6397094, OrigenProducto, NroDespacho, SKU, CodigoMercosur, NumeroLinea from PedidoItem_Dyn where IdPedidoItem = 12409370

