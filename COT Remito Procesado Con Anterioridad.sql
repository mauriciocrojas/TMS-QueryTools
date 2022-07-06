select * from EXO_Remito_Orden where RefExterna in ('0081702335', '0081698984', '0081700133', '0081699010')

select * from EXO_Remito_Orden where RefExterna in ('0081702335', '0081698984')

select cot, * from Remito where IdOrden in ('1730342', '1730343', '1730344', '1730345', '1370829', '1370832')
select cot, * from Remito where IdOrden in ('1370830', '1370831')

select * from Orden where RefOrdenExterna in ('0081702335', '0081698984', '0081700133', '0081699010') 

select * from EstadoOrden 


--update Remito set cot = 'Ok' where IdOrden in ('1370829', '1370832')