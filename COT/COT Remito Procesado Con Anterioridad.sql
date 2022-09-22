select * from EXO_Remito_Orden where RefExterna in ('0711940056')


select * from EXO_Remito_Orden where NumeroRemito = '0023900065849'

select * from Orden where IdOrden in (1475476)

select * from Orden where RefOrdenExterna in ('0081702335', '0081699010') 

----
select status, SENDTOFLEET, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '0711940056'

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 6283 and Value = 92

--update [3PL_POOL].dbo.PL_ORDERS set status = 3 , sendtofleet = null where EXTERNORDERKEY = '0711940056'
--

select cot, * from Remito where IdOrden in ('1370830', '1370831')

select cot, * from Remito where NumeroRemito = '0023900065849'

select * from EstadoOrden 

--update Remito set cot = 'Ok' where IdOrden in ('1475476')
--una vez cambiado a Ok, no se vuelve a intentar generar cot.