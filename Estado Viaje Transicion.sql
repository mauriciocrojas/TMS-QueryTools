select * from Usuario where Login = 'esanchez'
select * from GrupoUsuario where Login = 'esanchez'

select * from GrupoEstadoViajeTransicion where idGrupo = 5 and IdEstadoViajeTransicion = 1
select * from EstadoViaje where IdEstadoViaje in (1, 2)
select * from EstadoViajeTransicion where IdEstadoViajeOrigen=1 and IdEstadoViajeDestino=2


select * from Grupo
select * from GrupoAction where IdGrupo= 5 
select * from Action where Name like '%%'


select * from EstadoParada where IdEstadoParada in (1, 3)
select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1 and IdEstadoParadaDestino = 3
select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in (555, 625)
select * from Grupo where IdGrupo in (1, 14, 27, 37, 38, 37, 38, 40, 41)

select * from EstadoPedido
select * from EstadoPedidoTransicion

select * from EstadoRuta
select * from EstadoRutaTransicion

select * from EstadoOrden
select * from EstadoOrdenTransicion

select * from EstadoGuia 
select * from EstadoGuiaTransicion

select * from EstadoIncidencia
select * from EstadoIncidenciaTransicion

select * from EstadoTarifa
select * from EstadoTarifaTransicion

