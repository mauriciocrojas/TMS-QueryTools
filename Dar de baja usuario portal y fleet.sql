select * from PL_USERS where USERNAME = 'evsanchez'

update PL_USERS set INACTIVE = 1 where USERNAME = 'evsanchez'

--

select * from Usuario where Login = 'evsanchez'

update Usuario set Activo = 0, Eliminado = 1 where Login = 'evsanchez'