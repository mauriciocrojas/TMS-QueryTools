select * from Grupo where Descripcion like '%contenedor%' --38

select * from Grupo where IdGrupo = 40

select * from GrupoUsuario where Login = 'dmorel'

--Viaje
select * from EstadoViaje --16 a 7

select * from EstadoViajeTransicion where IdEstadoViajeOrigen = 16 and IdEstadoViajeDestino = 7 --40

select * from GrupoEstadoViajeTransicion where IdEstadoViajeTransicion = 40

--insert into GrupoEstadoViajeTransicion
select 38, 40 from GrupoEstadoViajeTransicion where IdGrupo = 38 and IdEstadoViajeTransicion = 40

insert into GrupoEstadoViajeTransicion (IdGrupo, IdEstadoViajeTransicion) 
VALUES 
(38, 40)


--Parada
select * from EstadoParada 

select * from EstadoParada where Descripcion like '%EXO%' or Descripcion like 'entregada' or Descripcion like 'pendiente'

select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 2 and IdEstadoParadaDestino = 1001 --447

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion = 34

--insert into GrupoEstadoParadaTransicion
select 38, 40 from GrupoEstadoParadaTransicion where IdGrupo = 38 and IdEstadoParadaTransicion = 40

--

--Transición Excluir
select * from TransicionExcluir where IdTransicionExcluir = 2277

insert into TransicionExcluir 
select 99, IdCliente, IdOperacion, IdTipoOperacion, IdTransicion, Entidad from TransicionExcluir where IdGrupo = 45




