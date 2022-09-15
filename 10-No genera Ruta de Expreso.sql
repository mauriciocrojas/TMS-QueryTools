select status, * from [3PL_POOL].dbo.pl_orders where EXTERNORDERKEY in ('1328583')

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 3158

select * from Proceso where Descripcion like '%expreso%'

select * from EstadoPedidoTransicion where IdEstadoPedidoTransicion = 1168

--Pedidos -> Viajes (pasar el viaje a "finalizado") -> Paradas -> Buscar la parada del pedido (Entregado a expreso)
--Pasar la parada a Pendiente, y luego a entregada, verificar la nueva orden y ruta. Devolver viaje a estado original.

select * from Pedido where ReferenciaExterna = '1328583' --1014

select * from EstadoPedido where IdEstadoPedido in (1014, 1001)

--update Pedido set IdEstadoPedido = 1014 where ReferenciaExterna = '1328583'

select IdEstadoViaje, * from Viaje where IdViaje = 263830

--update Viaje set IdEstadoViaje = 7  where IdViaje = 263830

---------------------------------------------------------------------------------------------------------------
--Chequeo para crear nueva división política
select * from EXO_VW_Interior_con_Expreso where Provincia like '%santa f%' and IdCliente in (1038, 7770, 1042)

select * from DivisionPoliticaNivel3 where IdDivisionPoliticaNivel2 = 539 --21 539

select * from Cliente where RazonSocial like '%philips%'


select STATUS, SENDTOFLEET, ID_DELIVERYADDRESS1, [3PL_POOL].dbo.FC_OBTENER_EXPRESO(ID_DELIVERYADDRESS1) 
EsExpreso, ID_DELIVERYADDRESS2, ORDERTYPETMS, SUSPENDINDICATOR, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('0250663220')

--update [3PL_POOL].dbo.PL_ORDERS set ID_DELIVERYADDRESS2 = 48531, SENDTOFLEET = null, STATUS = 1 where EXTERNORDERKEY in ('0250663220')