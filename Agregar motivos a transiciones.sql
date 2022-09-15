select *  from Motivo

select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (31)

select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1001 and IdEstadoParadaDestino = 2

Insert into  EstadoParadaTransicionMotivo 
select 627, IdMotivo from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion = 32

Insert into  EstadoParadaTransicionMotivo 
select 628, IdMotivo from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion = 31

Insert into  EstadoParadaTransicionMotivo 
select 629, IdMotivo from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion = 14

--update EstadoParadaTransicionMotivo set IdEstadoParadaTransicion = 628 where IdEstadoParadaTransicion = 627

select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion = 627

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion = 629 
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (38)
select * from GrupoEstadoParadaTransicion where IdGrupo = 25 


select * from Motivo where IdMotivo in (
34,
35,
39,
40,
41
)




--Pendiente a no entrega tte (32) 627
--Pendiente a No entrega exo (31) 628
--Pendiente a no entrega cte (14) 629

--Pendiente 1001

--No entregada 1005

--No entrega x tte 1002
--NO entrega x cte 6
--NO entrega por exo 2

--Transiciones
-- No entregada a no entrega tte 627
-- No entregada a no entrega exo 628
-- No entregada a no entrega cte 629
