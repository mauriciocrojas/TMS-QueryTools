--COT No fue generado. | El servicio informo un error.| - Producto: 640411-3 El campo PROPIO_DESCRIPCION_PRODUCTO es inv?lido o inexistente.
--El cot se genera sobre la orden
--960899 codigo mercosur genérico TPV 

select IdEstadoOrden, * from Orden where RefOrdenExterna in ('0391429875') --o filtrar por id orden

select IdOrdenItem, Descripcion, * from OrdenItem where IdOrden in (1437040) 

select sku, * from OrdenItem_Dyn where IdOrdenItem in (6377464)

--select * from OrdenItem where RefItemExterno in ('420613672172') 

--update OrdenItem set Descripcion = '300005801441' where IdOrdenItem = 6377464

select * from OrdenItem_Dyn where IdOrdenItem in (select IdOrdenItem from OrdenItem where IdOrden in (1424548) and RefItemExterno in('420613672172'))
and IdOrdenItem <> 5723181

----
--Chequeo de infor 11, ph da

select status, * from [SCPHL].wmwhse1.ORDERS where EXTERNORDERKEY = '0391429875'

select * from [SCPHL].wmwhse1.ORDERDETAIL where EXTERNORDERKEY = '0391429875'

select DESCR, * from [SCPHL].wmwhse1.SKU where sku = '300005801441'


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