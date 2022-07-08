-------------------- PORTAL -------------------------

--Copiar Clientes Portal
select * from PL_USERS where USERNAME = 'jfumarola'
select * from PL_USERS where USERNAME = 'gcastano'

select * from PL_USERS_CUSTOMERS where IDUSER = 186
select * from PL_USERS_CUSTOMERS where IDUSER = 643

--insert into PL_USERS_CUSTOMERS 
select 643, IDCUSTOMER, NULL, getdate() from PL_USERS_CUSTOMERS where IDUSER = 186


-------------------- FLEET -------------------------

select * from Usuario where Login = 'macondano'
select * from Usuario where Login = 'jpgarcia'

--Copiar Sucursal Fleet
select * from UsuarioSucursal where Login = 'macondano'
select * from UsuarioSucursal where Login = 'jpgarcia'

--insert into UsuarioSucursal
select 'jpgarcia', IdSucursal, 0 from UsuarioSucursal where Login = 'macondano'

--Copiar Operacion Fleet
select * from UsuarioOperacion where Login = 'macondano'
select * from UsuarioOperacion where Login = 'jpgarcia'

--insert into UsuarioOperacion
select IdOperacion,'jpgarcia', 0 from UsuarioOperacion where Login = 'macondano'

--Copiar Clientes Fleet
select * from UsuarioCliente where Login = 'macondano'
select * from UsuarioCliente where Login = 'jpgarcia'

--insert into UsuarioCliente
select IdCliente, 'jpgarcia', 0, 0 from UsuarioCliente where Login = 'macondano'


--Copiar Deposito Fleet
select * from UsuarioDeposito where Login = 'macondano'
select * from UsuarioDeposito where Login = 'jpgarcia'

--insert into UsuarioDeposito
select IdDeposito, 'jpgarcia', 0 from UsuarioDeposito where Login = 'macondano'


--Extra
--select * from UsuarioCliente where Login = 'marodriguez' and IdCliente not in (select IdCliente from UsuarioCliente where Login = 'fmonasterio')
