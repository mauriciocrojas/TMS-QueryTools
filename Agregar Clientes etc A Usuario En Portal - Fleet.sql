-------------------- PORTAL -------------------------

--Copiar Clientes Portal
select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'evidal'
select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'jalbarengo'

select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 660
select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 489

insert into [3PL_POOL].dbo.PL_USERS_CUSTOMERS 
select 660, IDCUSTOMER, NULL, getdate() from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 489


-------------------- FLEET -------------------------

select * from Usuario where Login = 'evidal'
select * from Usuario where Login = 'jalbarengo'

insert into Usuario VALUES(
'evidal','','Vidal','Elias','','','','','','',null,1,0,0,null,0,null,0,0,0,'LDAP','evidal@exologista.com',null,null,null,null,0,'.',null,'Metric'
)

--Grupos Fleet
select * from GrupoUsuario where Login = 'evidal'
select * from GrupoUsuario where Login = 'jalbarengo'

insert into GrupoUsuario (IdGrupo, Login) VALUES (
5,'evidal'
)

--Copiar Sucursal Fleet
select * from UsuarioSucursal where Login = 'evidal'
select * from UsuarioSucursal where Login = 'jalbarengo'

--insert into UsuarioSucursal
select 'evidal', IdSucursal, 0 from UsuarioSucursal where Login = 'jalbarengo'

--Copiar Operacion Fleet
select * from UsuarioOperacion where Login = 'evidal'
select * from UsuarioOperacion where Login = 'jalbarengo'

--insert into UsuarioOperacion
select IdOperacion,'evidal', 0 from UsuarioOperacion where Login = 'jalbarengo'

--Copiar Clientes Fleet--
select * from UsuarioCliente where Login = 'evidal'
select * from UsuarioCliente where Login = 'jalbarengo'

--insert into UsuarioCliente
select IdCliente, 'evidal', 0, 0 from UsuarioCliente where Login = 'jalbarengo'

--Copiar Deposito Fleet--
select * from UsuarioDeposito where Login = 'evidal'
select * from UsuarioDeposito where Login = 'jalbarengo'

--insert into UsuarioDeposito
select IdDeposito, 'evidal', 0 from UsuarioDeposito where Login = 'jalbarengo'


--Extra
--select * from UsuarioCliente where Login = 'marodriguez' and IdCliente not in (select IdCliente from UsuarioCliente where Login = 'fmonasterio')


--extra2
--operación y sucursales, heredan desde grupo