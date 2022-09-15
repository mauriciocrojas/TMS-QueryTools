select * from EXO_Remito_Orden where RefExterna = '0391472031' --31334330

select IdOrden, ValorDeclarado, * from Orden where RefOrdenExterna = '0391472031'

select ImporteRemito, * from Orden_Dyn where IdOrden = 1424523


update EXO_Remito_Orden set Monto = '31334330' where RefExterna = '0391472031'

update Orden set ValorDeclarado = '31334330' where RefOrdenExterna = '0391472031'

update Orden_Dyn set ImporteRemito = '31334330' where IdOrden = 1424523



