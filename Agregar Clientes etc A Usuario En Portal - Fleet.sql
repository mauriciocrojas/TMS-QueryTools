-------------------- PORTAL -------------------------

--Copiar Clientes Portal
select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'jfumarola'
select * from [3PL_POOL].dbo.PL_USERS where USERNAME = 'gcastano'

select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 186
select * from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 643

--insert into PL_USERS_CUSTOMERS 
select 643, IDCUSTOMER, NULL, getdate() from [3PL_POOL].dbo.PL_USERS_CUSTOMERS where IDUSER = 186


-------------------- FLEET -------------------------

select * from Usuario where Login = 'cbarcala'
select * from Usuario where Login = 'jrua'

--Grupos Fleet
select * from GrupoUsuario where Login = 'cbarcala'
select * from GrupoUsuario where Login = 'jrua'

--Copiar Sucursal Fleet
select * from UsuarioSucursal where Login = 'cbarcala'
select * from UsuarioSucursal where Login = 'jrua'

--insert into UsuarioSucursal
select 'cbarcala', IdSucursal, 0 from UsuarioSucursal where Login = 'jrua'

--Copiar Operacion Fleet
select * from UsuarioOperacion where Login = 'cbarcala'
select * from UsuarioOperacion where Login = 'jrua'

--insert into UsuarioOperacion
select IdOperacion,'cbarcala', 0 from UsuarioOperacion where Login = 'jrua'

--Copiar Clientes Fleet--
select * from UsuarioCliente where Login = 'cbarcala'
select * from UsuarioCliente where Login = 'jrua'

--insert into UsuarioCliente
select IdCliente, 'cbarcala', 0, 0 from UsuarioCliente where Login = 'jrua'


--Copiar Deposito Fleet--
select * from UsuarioDeposito where Login = 'cbarcala'
select * from UsuarioDeposito where Login = 'jrua'

--insert into UsuarioDeposito
select IdDeposito, 'cbarcala', 0 from UsuarioDeposito where Login = 'jrua'


--Extra
--select * from UsuarioCliente where Login = 'marodriguez' and IdCliente not in (select IdCliente from UsuarioCliente where Login = 'fmonasterio')


--extra2
--operación y sucursales, heredan desde grupo