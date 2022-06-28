select * from Grupo where Descripcion like '%contenedor%' --38
select * from EstadoViaje --16 a 7
select * from EstadoViajeTransicion where IdEstadoViajeOrigen = 16 and IdEstadoViajeDestino = 7 --40

select * from GrupoEstadoViajeTransicion where IdEstadoViajeTransicion = 40

insert into GrupoEstadoViajeTransicion
select 38, 40 from GrupoEstadoViajeTransicion where IdGrupo = 38 and IdEstadoViajeTransicion = 40
