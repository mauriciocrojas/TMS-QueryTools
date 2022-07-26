--Insertar CUIT desde el pedido hasta la orden.

--insert into Orden_Dyn
select 1403637, null, null, null, CodigoCliente, null, CUIT, null, null, null, Turno, CodigoTurno, FechaTurno,null,null 
from Pedido_Dyn where IdPedido = 1071183