select * from EXO_Remito_Orden where RefExterna = '0391382727' --22310475

select ValorDeclarado, * from Orden where RefOrdenExterna = '0391382727'

select ImporteRemito, * from Orden_Dyn where IdOrden = 1394147


update EXO_Remito_Orden set Monto = '22310475' where RefExterna = '0391382727'

update Orden set ValorDeclarado = '22310475' where RefOrdenExterna = '0391382727'

update Orden_Dyn set ImporteRemito = '22310475' where IdOrden = 1394147



