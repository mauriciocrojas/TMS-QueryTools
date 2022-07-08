select * from GrupoUsuario where Login = 'vramirez'
select * from GrupoUsuario where Login = 'maalvarez'


select * from Grupo where IdGrupo in (5,6,14,18,28,45)--18 Transporte_Jefe --6 Transporte Administrativo (grupo con restricción)
select * from Grupo where IdGrupo in (40)--Transporte Administrador

select * from GrupoUsuario where IdGrupo = 40
select distinct(Name) from GrupoAction where IdGrupo in (5,6,14,18,28,45)

select * from TransicionExcluir where IdTransicionExcluir = 185 --444
select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion = 444 --1,8,13,40,41,45(LV)

select * from EstadoParadaTransicion where IdEstadoParadaTransicion = 444
select * from EstadoParada where IdEstadoParada in (3, 6)

select * from GrupoAction where IdGrupo in (18)
select * from GrupoAction where IdGrupo in (6)

select * from GrupoAction where IdGrupo in(6) and Name not in (select Name from GrupoAction where IdGrupo = 18) --

--insert into GrupoAction 
select Name, 18, Form from GrupoAction where IdGrupo in(6) and Name not in (select Name from GrupoAction where IdGrupo = 18)