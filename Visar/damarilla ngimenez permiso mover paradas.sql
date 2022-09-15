select * from Action where Descripcion like '%reordenar%'

select * from GrupoAction where Name like '%reordenar%'

select * from Grupo where IdGrupo in (1,6,40,41)

select * from GrupoUsuario where Login = 'damarilla'
select * from Grupo where IdGrupo in (5,6,34)

select * from EstadoParadaAction where ActionName like '%reordenar%' 

select * from EstadoViajeAction where ActionName like '%reordenar%' 

select * from EstadoViaje where IdEstadoViaje = 3