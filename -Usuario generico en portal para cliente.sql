--creacion de usuario genérico para cliente en portal
--rol: read-only

--usuario generico de converse como referencia
select  from PL_USERS where username = 'clienteconv'

select * from PL_CUSTOMERS where CUSTOMER like '%virginia%'--8259 id de la virginia
--clave: clv651

--insert into PL_USERS
select 'clientelv', 8259, IDROL, BRANCH_OFFICE, TYPE_CUSTOMER_IMAGE, CUSTOMER_IMAGE, ADDDATE, UPDDATE, RESET_KEY, 'maurojas@exologista.com', ACTIVE_DIRECTORY_USER, [PASSWORD], ID_NUMBER, FIRST_NAME, 'La Virginia', IDMODULE, INACTIVE, IDGROUP from PL_USERS where username = 'clienteconv'

select * from PL_USERS 
