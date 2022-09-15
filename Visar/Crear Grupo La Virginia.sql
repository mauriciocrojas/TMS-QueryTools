--1001 pendiente, 1002 no entrega x tte, 2 no entrega x exo, 6 no entrega x cliente, 1000 entrega parcial, 3 entregada --estados de parada

--Transiciones necesarias para el grupo:
--32, 31, 14, 41 --33, 34, 35, 45 --455, 456, 458 --448, 449, 450 --452, 453, 454 
--550, 551, 552, 446, 445, 444, 443, 46, 447, 451, 457, 459, 38

select * from EstadoParadaTransicion where IdEstadoParadaOrigen in (1000) and IdEstadoParadaDestino in (1002, 2, 6)
select * from EstadoParadaTransicion where IdEstadoParadaOrigen in (1000, 1002, 2, 6) and IdEstadoParadaDestino in (3)--
select * from EstadoParada

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in 
(32, 31, 14, 41, 33, 34, 35, 45, 455, 456, 458, 448, 449, 450, 452, 453, 454, 550, 551, 552, 446, 445, 444, 443, 46, 447, 451, 457, 459, 38) and IdGrupo = 44


insert into GrupoEstadoParadaTransicion 
select 44, IdEstadoParadaTransicion from GrupoEstadoParadaTransicion where IdGrupo = 8 and IdEstadoParadaTransicion in
(32, 31, 14, 41, 33, 34, 35, 45, 455, 456, 458, 448, 449, 450, 452, 453, 454, 550, 551, 552, 446, 445, 444, 443, 46, 447, 451, 457, 459, 38)


select * from GrupoEstadoParadaTransicion where IdGrupo = 44

insert into TransicionExcluir
select 44, null, op.IdOperacion, null, IdEstadoParadaTransicion, 'Parada'
from EstadoParadaTransicion 
inner join (select IdOperacion from Operacion where IdOperacion <> '1027') op on 1=1
where IdEstadoParadaTransicion in (32, 31, 14, 41, 33, 34, 35, 45, 455, 456, 458, 448, 449, 450, 452, 453, 454, 550, 551, 552, 446, 445, 444, 443, 46, 447, 451, 457, 459, 38)


select * from TransicionExcluir

select IdEstadoParadaTransicion from EstadoParadaTransicion where IdEstadoParadaTransicion in 
(32, 31, 14, 41, 33, 34, 35, 45, 455, 456, 458, 448, 449, 450, 452, 453, 454, 550, 551, 552, 446, 445, 444, 443, 46, 447, 451, 457, 459, 38)

--1003, 1008, 1009, 1010, 1016, 1017, 1018, 1020, 1021, 1022, 1023, 1024, 1025, 1026 excluir operaciones


select * from GrupoUsuario where Login = 'dailopez' 
select * from GrupoUsuario where Login = 'vramirez' 
select * from GrupoUsuario where Login = 'pdelgado'

insert into GrupoUsuario
select 28, Login from GrupoUsuario where Login = 'vramirez' 


