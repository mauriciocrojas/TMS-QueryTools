select * from PL_USERS where USERNAME = 'jfumarola'
select * from PL_USERS where USERNAME = 'gcastano'
select * from PL_USERS_CUSTOMERS where IDUSER = 186
select * from PL_USERS_CUSTOMERS where IDUSER = 643

--insert into PL_USERS_CUSTOMERS 
select 643, IDCUSTOMER, NULL, getdate() from PL_USERS_CUSTOMERS where IDUSER = 186
--

select * from Usuario where Login = 'jfumarola'
select * from Usuario where Login = 'gcastano'

select * from UsuarioCliente where Login = 'jfumarola'
select * from UsuarioCliente where Login = 'gcastano'

--insert into UsuarioCliente
select IdCliente, 'gcastano', 0, 0 from UsuarioCliente where Login = 'marodriguez'

select * from UsuarioCliente where Login = 'marodriguez' and IdCliente not in (select IdCliente from UsuarioCliente where Login = 'fmonasterio')