select * from Usuario where Login like '%hfernandez%'

update Usuario set Activo = 0, Eliminado = 1 where Login in ('mtarantini')


select * from [3PL_POOL].dbo.PL_USERS where USERNAME like '%hfernandez%'

update [3PL_POOL].dbo.PL_USERS set INACTIVE = 1, ACTIVE_DIRECTORY_USER = 0 where USERNAME = 'hfernandez'
