--Prepara primero

select * from EstadoRuta where IdEstadoRuta in (1, 3)

select * from EstadoOrden where IdEstadoOrden in (2, 1000)

select IdTipoOperacion, * from Operacion where IdOperacion = 1018

select * from TipoOperacion where IdTipoOperacion = 3

select * from EstadoOrdenTransicion where IdEstadoOrigen = 2 and IdEstadoDestino = 1000 and IdTipoOperacion = 3

