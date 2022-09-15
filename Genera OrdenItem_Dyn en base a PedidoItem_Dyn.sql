
select IdPedido, IdOrden from Orden where ReferenciaPedido in ('1351509')

--Para crear la orden_dyn
insert into Orden_Dyn
select 1473821, null, null, null, CodigoCliente, null, CUIT, null, null, null, Turno, CodigoTurno, FechaTurno, null, null 
from Pedido_Dyn where IdPedido = 1118633


--Cuando no tengo los campos dinámicos de la ordenitem_dyn
insert into OrdenItem_Dyn
select  oi.IdOrdenItem, '', o.RefOrdenExterna, pi.SKU, pi.CodigoMercosur, pi.NumeroLinea from OrdenItem oi
inner join Orden o on o.IdOrden = oi.IdOrden
inner join PedidoItem_Dyn pi on pi.sku = oi.RefItemExterno
where  o.IdOrden = 1473699 and pi.IdPedidoItem in ( select  IdPedidoItem from PedidoItem where IdPedido = 1116481)





