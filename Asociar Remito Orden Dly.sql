select * from EXO_Remito_Orden where RefExterna in ('0081702418')

--select * from Pedido where ReferenciaExterna in ('0081702418')
select * from Orden where ReferenciaPedido in ('0081702418')

select NumeroRemito, * from Orden where IdOrden in ('1361097')
--remito 00239-00063098
--De infor sale una interfaz al cliente, donde se confirma la preparación. 
--philips
--si se envió la interfaz, deberá reprocesar DEI, si no se envió, se deberá pedir el reenvio al cliente.
