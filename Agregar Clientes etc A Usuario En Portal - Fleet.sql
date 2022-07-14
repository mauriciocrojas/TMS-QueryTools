-------------------- PORTAL -------------------------

--Copiar Clientes Portal
select * from PL_USERS where USERNAME = 'jfumarola'
select * from PL_USERS where USERNAME = 'gcastano'

select * from PL_USERS_CUSTOMERS where IDUSER = 186
select * from PL_USERS_CUSTOMERS where IDUSER = 643

--insert into PL_USERS_CUSTOMERS 
select 643, IDCUSTOMER, NULL, getdate() from PL_USERS_CUSTOMERS where IDUSER = 186


-------------------- FLEET -------------------------

select * from Usuario where Login = 'dailopez'
select * from Usuario where Login = 'snoguera'

--Copiar Sucursal Fleet
select * from UsuarioSucursal where Login = 'dailopez'
select * from UsuarioSucursal where Login = 'snoguera'

--insert into UsuarioSucursal
select 'snoguera', IdSucursal, 0 from UsuarioSucursal where Login = 'dailopez'

--Copiar Operacion Fleet
select * from UsuarioOperacion where Login = 'dailopez'
select * from UsuarioOperacion where Login = 'snoguera'

--insert into UsuarioOperacion
select IdOperacion,'snoguera', 0 from UsuarioOperacion where Login = 'dailopez'

--Copiar Clientes Fleet--
select * from UsuarioCliente where Login = 'dailopez'
select * from UsuarioCliente where Login = 'snoguera'

---insert into UsuarioCliente
select IdCliente, 'snoguera', 0, 0 from UsuarioCliente where Login = 'dailopez'


--Copiar Deposito Fleet--
select * from UsuarioDeposito where Login = 'snoguera'
select * from UsuarioDeposito where Login = 'dailopez'

---insert into UsuarioDeposito
select IdDeposito, 'snoguera', 0 from UsuarioDeposito where Login = 'dailopez'


--Extra
--select * from UsuarioCliente where Login = 'marodriguez' and IdCliente not in (select IdCliente from UsuarioCliente where Login = 'fmonasterio')


--extra2
--operación y sucursales, heredan desde grupo