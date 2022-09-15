--LV

select * from EstadoParadaTransicion where IdEstadoParadaOrigen=1001 and (IdEstadoParadaDestino=3 or IdEstadoParadaDestino=1000)

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion=38

select * from EstadoParada where IdEstadoParada in (1001, 3)

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in (38, 41)

select * from Grupo where Descripcion like '%conductor%'

select * from Grupo where IdGrupo in (1, 40, 41)


select * from GrupoEstadoParadaTransicion where IdGrupo = 25


/*
Para que un conductor visualice un viaje en mobile, debe estar dado de alta en tabla Conductor con un Login not null (es el dni),
y que haya un viaje activo asociado al IdConductor de dicho conductor. 
Ese viaje activo debe estar asignado por una operadora del COSS
*/

/*
Pendiente a no entregada exclusivo para la virginia. 
*/

select IdConductor, * from Viaje where IdEstadoViaje = 3 and IdConductor in (
select IdConductor from Conductor where Login is not null)

select Login, * from Conductor where IdConductor = 499 or IdConductor = 1100
--499 - 20520355 - ADRIAN LUCIO JUAREZ - 259274 - Viaje Philips
--1100 - 14216711 - CARLOS RAMON OJEDA - 259302 - Viaje LV

select IdTransporte, * from Vehiculo where IdConductor = 499

select IdConductor, IdVehiculo, IdEstadoViaje, * from Viaje where IdViaje = 258794

update Viaje set IdConductor = 499, IdVehiculo = 1029 where IdViaje = 258794
select * from Viaje

select * from Parada where IdViaje = 259274

update Parada set IdEstadoParada = 1001 where IdViaje = 259274

select * from EstadoParada
--1001 Pendiente

select * from GrupoUsuario where IdGrupo = 25





----------------
--Control de carga
select * from Ruta where IdEstadoRuta = 19 

Select * from EstadoRuta where Descripcion like '%prep%'

select * from OrdenItemEtiqueta where IdOrdenItem in (
select IdOrdenItem from OrdenItem where IdOrden in (
select IdOrden from Orden where IdJornada = 25493 and IdRuta = 1)
)
 
select * from Viaje where IdViaje = 259193

update OrdenItemEtiqueta set Etiqueta = 'RC000003' where IdOrdenItemEtiqueta = 1962797
update OrdenItemEtiqueta set Etiqueta = 'RC000004' where IdOrdenItemEtiqueta = 1962744
update OrdenItemEtiqueta set Etiqueta = 'RC000005' where IdOrdenItemEtiqueta = 1962757


update OrdenItemEtiqueta set FechaValidacion = null, Login = null where IdOrdenItemEtiqueta = 1962797
update OrdenItemEtiqueta set FechaValidacion = null, Login = null  where IdOrdenItemEtiqueta = 1962744
update OrdenItemEtiqueta set FechaValidacion = null, Login = null  where IdOrdenItemEtiqueta = 1962757

select * from OrdenItem where IdOrden in (
select IdOrden from Orden where IdJornada = 11914 and IdRuta = 1
)

select * from Orden where IdJornada = 11914 and IdRuta = 1