select IdOrden, RefOrdenExterna from Orden where IdOrden = 1483190

--
select Monto, * from EXO_Remito_Orden where RefExterna = '0391680214' --2534836

select ValorDeclarado, IdOrden, * from Orden where RefOrdenExterna = '0391680214'

select ImporteRemito, * from Orden_Dyn where IdOrden = 1483190

update EXO_Remito_Orden set Monto = '2534836' where RefExterna = '0391680214'

--
update Orden set ValorDeclarado = '2534836' where RefOrdenExterna = '0391680214'

update Orden_Dyn set ImporteRemito = '2534836' where IdOrden = 1483190
--
