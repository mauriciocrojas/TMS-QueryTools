select * from Grupo where Descripcion like '%contenedor%' --38
select * from EstadoViaje --16 a 7
select * from EstadoViajeTransicion where IdEstadoViajeOrigen = 16 and IdEstadoViajeDestino = 7 --40

select * from GrupoEstadoViajeTransicion where IdEstadoViajeTransicion = 40

--insert into GrupoEstadoViajeTransicion
select 38, 40 from GrupoEstadoViajeTransicion where IdGrupo = 38 and IdEstadoViajeTransicion = 40

select * from TransicionExcluir where IdTransicionExcluir = 2277

select * from EstadoParada where Descripcion like '%EXO%' or Descripcion like 'entregada' or Descripcion like 'pendiente'

select * from Grupo where IdGrupo = 40

select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 2 and IdEstadoParadaDestino = 1001 --447

select * from GrupoUsuario where Login = 'dmorel'

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion = 34
