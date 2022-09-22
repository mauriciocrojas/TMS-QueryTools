--COT No fue generado. | El servicio informo un error.| - Producto: 640411-3 El campo PROPIO_DESCRIPCION_PRODUCTO es inv?lido o inexistente.
--El cot se genera sobre la orden
--960899 codigo mercosur genérico TPV 
--De la ordenItem sacamos el RefItemExterno

select IdEstadoOrden, * from Orden where RefOrdenExterna in ('0391429875') --o filtrar por id orden

select * from Orden where IdOrden = 1481648

select IdOrdenItem, Descripcion, * from OrdenItem where IdOrden in (1481648) 


select sku, * from OrdenItem_Dyn where IdOrdenItem in (
6789984,
6789985,
6789986,
6789987,
6789988,
6789989,
6789990,
6789991,
6789992
)

--select * from OrdenItem where RefItemExterno in ('420613672172') 

select * from Pedido where IdCliente =6490 order by IdPedido DESC

select * from Cliente where NombreFantasia like '%samso%'

select * from Orden where RefOrdenExterna = '0711757571'

select * from ORdenItem where IdOrden = 1464754

select * from OrdenItem_Dyn where IdOrdenItem = 6634228

update OrdenItem_Dyn set CodigoMercosur  = 'ACT', NroDespacho = 0, NumeroLinea = 0, OrigenProducto = 0 where IdOrdenItem in (
6789984,
6789985,
6789986,
6789987,
6789988,
6789989,
6789990,
6789991,
6789992
)

select * from PedidoItem_Dyn where IdPedidoItem in (

)

select * from OrdenItem_Dyn where IdOrdenItem in (select IdOrdenItem from OrdenItem where IdOrden in (1424548) and RefItemExterno in('420613672172'))
and IdOrdenItem <> 5723181


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