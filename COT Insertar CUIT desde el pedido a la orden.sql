--Insertar CUIT desde el pedido hasta la orden.

insert into Orden_Dyn
select 1426882, null, null, null, CodigoCliente, null, CUIT, null, null, null, Turno, CodigoTurno, FechaTurno,null,null 
from Pedido_Dyn where IdPedido = 1086001

select top 1 * from Pedido_Dyn where IdPedido = 1086001

select * from OrdenItem where IdOrden = '1426857'

select * from OrdenItem_Dyn where IdOrdenItem = '6294588'

insert into OrdenItem_Dyn (
IdOrdenItem,
OrigenProducto,
NroDespacho,
SKU,
CodigoMercosur,
NumeroLinea) 
VALUES (6294588, '0', '1339429', '4065449361026', '1339429', 7)

select * from OrdenItem_Dyn where IdOrdenItem = 6294588

update OrdenItem_Dyn set CodigoMercosur = 640411 where IdOrdenItem = 6294588