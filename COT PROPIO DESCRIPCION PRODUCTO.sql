--COT No fue generado. | El servicio informo un error.| - Producto: 640411-3 El campo PROPIO_DESCRIPCION_PRODUCTO es inv?lido o inexistente.
--El cot se genera sobre la orden
--960899 codigo mercosur gen�rico TPV 

select * from Orden where IdOrden in (1424548) 

select * from OrdenItem where IdOrden in (1424548) 

select * from OrdenItem_Dyn where IdOrdenItem = 6297238

select * from OrdenItem where RefItemExterno in ('420613672172') --o filtrar por id orden

--update OrdenItem set Descripcion = 420613672172 where IdOrden = 1424548

select * from OrdenItem_Dyn where IdOrdenItem in (select IdOrdenItem from OrdenItem where IdOrden in (1424548) and RefItemExterno in('420613672172'))
and IdOrdenItem <> 5723181

----
--Chequeo de infor 11, ph da
select * from wmwhse1.ORDERS where EXTERNORDERKEY = '0391458953'

select * from wmwhse1.ORDERDETAIL where EXTERNORDERKEY = '0391458953'
--420613672172

select * from wmwhse1.SKU where sku = '420613672172'


---


--update OrdenItem_Dyn set CodigoMercosur = '960899' where IdOrdenItem in (select IdOrdenItem from OrdenItem where IdOrden in (1351211,1353507,1351946) and RefItemExterno in('221V8/77')) and IdOrdenItem <> 5723181
 

select * from OrdenItem where IdOrden in (1351211,1353507,1351946) and RefItemExterno in('221V8/77') --o filtrar por id orden

--update OrdenItem set Descripcion = '?Monitor 22? Philips' where IdOrden in (1351211,1353507,1351946) and RefItemExterno in('221V8/77') --o filtrar por id orden


select * from PedidoItem_Dyn where IdPedidoItem in (select IdPedidoItem from PedidoItem where IdPedido in (1351211,1353507,1351946) and RefDocumento in('221V8/77')) and IdPedidoItem <> 5723181

select* from PedidoItem where RefDocumento in('221V8/77') and Descripcion = ''

--update OrdenItem_Dyn set CodigoMercosur = '960899' where IdOrdenItem in (select IdOrdenItem from OrdenItem where IdOrden in (1351211,1353507,1351946) and RefItemExterno in('221V8/77')) and IdOrdenItem <> 5723181
 
 --update PedidoItem set Descripcion = '?Monitor 22? Philips' where RefDocumento in('221V8/77') and Descripcion = ''

 select* from PedidoItem where RefDocumento in('221V8/77') --sku


  select * from PedidoItem_Dyn where SKU in('221V8/77') and IdPedidoItem in (select IdPedidoItem from PedidoItem where IdPedido in (1351211,1353507,1351946) and RefDocumento in('221V8/77'))

  --update PedidoItem_Dyn set CodigoMercosur ='960899' where CodigoMercosur = '' and SKU in('221V8/77')