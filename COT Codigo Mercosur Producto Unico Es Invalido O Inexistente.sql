select * from OrdenItem_Dyn where CodigoMercosur = '904203'
select * from PedidoItem_Dyn where CodigoMercosur = '904203'
--960899

--update OrdenItem_Dyn set CodigoMercosur = '851030' where CodigoMercosur = '904203'
--update PedidoItem_Dyn set CodigoMercosur = '851030' where CodigoMercosur = '904203'

select Descripcion, * from OrdenItem where IdOrden = 1394175

update OrdenItem set Descripcion = '420613672172' where IdOrden = 1394175

select Descripcion, * from PedidoItem where RefDocumento = '420613672172'--sku

update PedidoItem set Descripcion = '420613672172' where RefDocumento = '420613672172'


--insert into OrdenItem_Dyn (
IdOrdenItem,
OrigenProducto,
NroDespacho,
SKU,
CodigoMercosur,
NumeroLinea) 
VALUES (6036468, '0', '0081713800', '50U6295/77G', '960899', 90001)



--select * from PedidoItem_Dyn where SKU = '32PHD6825/77' and IdPedidoItem in (select IdPedidoItem from PedidoItem where IdPedido = 1390548)