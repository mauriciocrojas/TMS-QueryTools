select * from EXO_Remito_Orden where RefExterna in ('0081702418')

--select * from Pedido where ReferenciaExterna in ('0081702418')
select * from Orden where ReferenciaPedido in ('0081702418')

select NumeroRemito, * from Orden where IdOrden in ('1361097')
--remito 00239-00063098
--De infor sale una interfaz al cliente, donde se confirma la preparaci�n. 
--philips
--si se envi� la interfaz, deber� reprocesar DEI, si no se envi�, se deber� pedir el reenvio al cliente.
