select IdOrden, RefOrdenExterna, fecha, * from Orden where IdOrden in (1330804, 1330861)--RefOrdenExterna: '36700301-292275|02' '0050272042'

--select RefOrdenExterna, Fecha, * from Orden where RefOrdenExterna in ('36700301-292275|02'), '0050272042')

--La RefOrdenExterna en Orden, es la ReferenciaExterna en Pedido
select ReferenciaExterna, Fecha, * from Pedido where ReferenciaExterna in ( '0050272042', '36700301-292275')

select top 1 * from Pedido 

--Pruebo un pedido de philips que le llega fecha al pedido, pero no a la orden
select IdOrden, RefOrdenExterna, fecha, * from Orden where RefOrdenExterna in ('0391187282')
select ReferenciaExterna, Fecha, * from Pedido where ReferenciaExterna in ('0391187282')

select * from Orden where IdClienteOrden = 38269
select * from Operacion where IdOperacion = 1022
