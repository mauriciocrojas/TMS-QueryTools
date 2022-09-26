-------------------- PORTAL -------------------------

select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'ssandoval'
select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'jperalta'

select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 664
select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 244

--Copiar clientes Portal:
insert into [3PL_POOL].dbo.PL_USERS_CUSTOMERS 
select 660, IDCUSTOMER, NULL, getdate() from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 489

--Clientes Portal:
select * from [3PL_POOL].dbo.PL_CUSTOMERS

--Consulta clientes por usuario (muestra nombre del cliente):
select puc.IDCUSTOMER, pc.customer, * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS puc inner join [3PL_POOL].dbo.PL_CUSTOMERS pc
on puc.IDCUSTOMER = pc.IDCUSTOMER where puc.IdUser = 244

--Baja:
--update [3PL_POOL].dbo.PL_USERS set INACTIVE = 1 where USERNAME = 'evsanchez'

-------------------- FLEET -------------------------

select * from Usuario where Login = 'evidal'
select * from Usuario where Login = 'jalbarengo'

--Baja:
--update Usuario set Activo = 0, Eliminado = 1 where Login = 'evsanchez'

--Insertar nuevo usuario en fleet
insert into Usuario VALUES(
'evidal','','Vidal','Elias','','','','','','',null,1,0,0,null,0,null,0,0,0,'LDAP','evidal@exologista.com',null,null,null,null,0,'.',null,'Metric'
)

--Grupos Fleet
--insert into GrupoUsuario 
select IdGrupo, 'evidal' from GrupoUsuario where Login = 'evidal'

--Sucursal Fleet
--insert into UsuarioSucursal
select 'evidal', IdSucursal, 0 from UsuarioSucursal where Login = 'jalbarengo'

--Operacion Fleet
--insert into UsuarioOperacion
select IdOperacion,'evidal', 0 from UsuarioOperacion where Login = 'jalbarengo'

--Clientes Fleet
--insert into UsuarioCliente
select IdCliente, 'evidal', 0, 0 from UsuarioCliente where Login = 'jalbarengo'

--Deposito Fleet
--insert into UsuarioDeposito
select IdDeposito, 'evidal', 0 from UsuarioDeposito where Login = 'jalbarengo'



--

/*

--Extra:

--Clientes que tiene un usuario pero no otro:
--select * from UsuarioCliente where Login = 'marodriguez' and IdCliente not in (select IdCliente from UsuarioCliente where Login = 'fmonasterio')

--Operación y Sucursal, heredan desde grupo, insertar de todas maneras

insert into GrupoUsuario (IdGrupo, Login) VALUES (
5,'evidal'
)

select * from GrupoUsuario where Login = 'evidal'
select * from GrupoUsuario where Login = 'jalbarengo'

select * from UsuarioSucursal where Login = 'evidal'
select * from UsuarioSucursal where Login = 'jalbarengo'

select * from UsuarioOperacion where Login = 'evidal'
select * from UsuarioOperacion where Login = 'jalbarengo'

select * from UsuarioCliente where Login = 'evidal'
select * from UsuarioCliente where Login = 'jalbarengo'

select * from UsuarioDeposito where Login = 'evidal'
select * from UsuarioDeposito where Login = 'jalbarengo'

*/
