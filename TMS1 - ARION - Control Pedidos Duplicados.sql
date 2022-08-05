--TMS1: ARION - Control Pedidos Duplicados
/*
Solución: Revisar en esta consulta los pedidos duplicados, chequear que los pedidos duplicados en ambos casos sean 1 el estado del pedido.
Si el idestadopedido es 1 en ambos pedidos, eliminar manualmente uno de los pedidos, o desde fleet.

Acción:
Baja lógica al pedido, donde ejecutamos la subconsulta(nombrada anteriormente), 
y elimina los pedidos en estado 1 (REVISAR SI EL PEDIDO DUPLICADO EN AMBOS CASOS ES 1 NO HACER LA BAJA, 
ya que estarías eliminando el pedido sin dejar uno correcto).
*/

select ReferenciaExterna from Pedido where Eliminado = 0 group by ReferenciaExterna, IdCliente having count(ReferenciaExterna) > 1

select IdEstadoPedido, * from Pedido where ReferenciaExterna = '38897701'

select * from EstadoPedido where IdEstadoPedido in (1, 8)

--update pedido set Eliminado=1, FechaEliminacion= GETDATE() where ReferenciaExterna in (

select ReferenciaExterna from Pedido where ReferenciaExterna in (
select ReferenciaExterna from Pedido where Eliminado = 0 group by ReferenciaExterna, IdCliente having count(ReferenciaExterna) > 1)

) and IdEstadoPedido=1