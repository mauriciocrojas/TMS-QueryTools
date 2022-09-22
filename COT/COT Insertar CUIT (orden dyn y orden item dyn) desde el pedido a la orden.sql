--Insertar CUIT (y campos dinámicos en general) desde el pedido hasta la orden.

select IdPedido, IdOrden, ReferenciaPedido, IdDomicilioOrden, CodigoPostal, Provincia, * from Orden where ReferenciaPedido in ('0318295269')
select IdPedido, IdOrden, ReferenciaPedido, * from Orden where IdOrden in (1479713)


select * from Parada where IdParada = 1861207


--update Orden set CodigoPostal = 1825 where ReferenciaPedido in ('0081744866')
select RefDomicilioExterno, * from DomicilioOrden where IdDomicilioOrden = 41314

---Campos Dinámicos de la orden
insert into Orden_Dyn
select 1477893, null, null, null, CodigoCliente, null, CUIT, null, null, null, Turno, CodigoTurno, FechaTurno,null,null 
from Pedido_Dyn where IdPedido = 1120220


--Campos Dinamicos de la orden item
insert into OrdenItem_Dyn (
IdOrdenItem,
OrigenProducto,
NroDespacho,
SKU,
CodigoMercosur,
NumeroLinea) 
VALUES (6294588, '0', '1339429', '4065449361026', '1339429', 7)


--Insertar detalle del pedido en la orden item dym
insert into OrdenItem_Dyn 
select 6781369, OrigenProducto, NroDespacho, SKU, CodigoMercosur, NumeroLinea from PedidoItem_Dyn where IdPedidoItem = 12709285


---Cuando no tengo los campos dinámicos de la ordenitem_dyn
insert into OrdenItem_Dyn
select  oi.IdOrdenItem, '', o.RefOrdenExterna, pi.SKU, pi.CodigoMercosur, pi.NumeroLinea from OrdenItem oi
inner join Orden o on o.IdOrden = oi.IdOrden
inner join PedidoItem_Dyn pi on pi.sku = oi.RefItemExterno
where  o.IdOrden = 1473699 and pi.IdPedidoItem in ( select  IdPedidoItem from PedidoItem where IdPedido = 1116481)


--Consulto campos dinámicos orden:
select * from Orden_Dyn where IdOrden = 1477893
--delete Orden_Dyn where IdOrden = 1478919 and CUIT is null
delete Orden_Dyn where IdOrden = 1477893

--Consulto los items orden:
select  * from OrdenItem where IdOrden = '1477893'

--Consulto el item dym orden:
select * from OrdenItem_Dyn where IdOrdenItem = 6782335

--Pedido dyn (campos dinámicos)
select * from Pedido_Dyn where IdPedido = 1122471

--PedidoItem
select * from PedidoItem where IdPedido = 1122471

--PedidioItemDyn
select * from PedidoItem_Dyn where IdPedidoItem = 12409370

----

select * from Pedido where 


--update OrdenItem_Dyn set CodigoMercosur = 640411 where IdOrdenItem = 6294588

