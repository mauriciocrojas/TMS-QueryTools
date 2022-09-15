select status, SENDTOFLEET, SUSPENDINDICATOR, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY like '%677-018%' --retirado

select status, SENDTOFLEET,SUSPENDINDICATOR, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY like '%677-032%' --preparado

update [3PL_POOL].dbo.PL_ORDERS set status = 20 where EXTERNORDERKEY like '%677-032%'

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 3158 

--select * from Proceso where Descripcion like '%CrearOrdenDesdePedidoRetirado%'

select * from Ruta where IdJornada = 27885 and Ruta = 13

select * from Orden where IdJornada = 27900 and IdRuta = 14

select IdRuta, * from Orden where IdOrden = 1447365

--update Orden set IdRuta = 0 where IdOrden = 1447365

--update Orden set Eliminado = 1, FechaEliminacion = getdate() where IdOrden = 1447365

select * from OrdenTipoPedido where IdTipoPedido = 47

select * from TipoPedido --47 Retiro Transferencia