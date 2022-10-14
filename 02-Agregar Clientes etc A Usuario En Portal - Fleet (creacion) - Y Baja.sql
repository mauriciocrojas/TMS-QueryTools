-------------------- PORTAL -------------------------

select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'jaldeco'
select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'hnoguerol'

select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 664
select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 244

--Crear usuario Portal:
insert into [3PL_POOL].dbo.PL_USERS 
(USERNAME, IDCUSTOMER, IDROL, BRANCH_OFFICE, TYPE_CUSTOMER_IMAGE, CUSTOMER_IMAGE, ADDDATE, UPDDATE, RESET_KEY, EMAIL, ACTIVE_DIRECTORY_USER, PASSWORD, ID_NUMBER, FIRST_NAME, LAST_NAME, IDMODULE, INACTIVE, IDGROUP) 
VALUES(
'jaldeco', 536, 25, null, null, null, GETDATE(), GETDATE(), null, 'jaldeco@exologistica.com', 1, null, 30000000, 'Jesus', 'Aldeco', null, 0, null
)

--Copiar clientes Portal:
insert into [3PL_POOL].dbo.PL_USERS_CUSTOMERS 
select 666, IDCUSTOMER, NULL, getdate() from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 455

--Clientes Portal:
select * from [3PL_POOL].dbo.PL_CUSTOMERS

--Consulta clientes por usuario (muestra nombre del cliente):
select puc.IDCUSTOMER, pc.customer, * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS puc inner join [3PL_POOL].dbo.PL_CUSTOMERS pc
on puc.IDCUSTOMER = pc.IDCUSTOMER where puc.IdUser = 244

--Baja:
--update [3PL_POOL].dbo.PL_USERS set INACTIVE = 1 where USERNAME = 'evsanchez'

-------------------- FLEET -------------------------

select * from Usuario where Login = 'ngonzalez'
select * from Usuario where Login = 'gestion_mobregon'

--Baja:
--update Usuario set Activo = 0, Eliminado = 1 where Login = 'evsanchez'

--Insertar nuevo usuario en fleet
insert into Usuario VALUES(
'gestion_mobregon','','Obregon','Micaela','','','','','','',null,1,0,0,null,0,null,0,0,0,'LDAP','gestion_mobregon@exologista.com',null,null,null,null,0,'.',null,'Metric'
)

--Grupos Fleet
--insert into GrupoUsuario 
select IdGrupo, 'gestion_mobregon' from GrupoUsuario where Login = 'ngonzalez'

--Sucursal Fleet
--insert into UsuarioSucursal
select 'gestion_mobregon', IdSucursal, 0 from UsuarioSucursal where Login = 'ngonzalez'

--Operacion Fleet
--insert into UsuarioOperacion
select IdOperacion,'gestion_mobregon', 0 from UsuarioOperacion where Login = 'ngonzalez'

--Clientes Fleet
--insert into UsuarioCliente
select IdCliente, 'gestion_mobregon', 0, 0 from UsuarioCliente where Login = 'ngonzalez'

--Deposito Fleet
--insert into UsuarioDeposito
select IdDeposito, 'gestion_mobregon', 0 from UsuarioDeposito where Login = 'ngonzalez'



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
