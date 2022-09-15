select Login, * from Conductor where NroDocumento in ('25895931','29724409','44745203')

select * from Usuario where Login in ('25895931','29724409','44745203')

/*
CRISTIAN ENRIQUE - SOUTO DEVALLE - 25895931 (creado)
silva angel - 29724409 (creado)    
silva santiago - 44745203 (creado)
*/

select * from Tarifa where IdTarifa = 34138
select * from TarifaEntidad where IdTarifa = 34138


select * from Parada where IdViaje = 278793
--1453155 orden
--1830471 parada

update Parada set IdEstadoParada = 1001 where IdParada = 1830471

select * from Usuario where Login = 'nvera'
