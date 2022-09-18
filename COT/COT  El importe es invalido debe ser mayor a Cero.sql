select Monto, * from EXO_Remito_Orden where RefExterna = '0081744903' --2721915900

select ValorDeclarado, IdOrden, * from Orden where RefOrdenExterna = '0081744903'

select ImporteRemito, * from Orden_Dyn where IdOrden = 1475465


update EXO_Remito_Orden set Monto = '2721915900' where RefExterna = '0081744903'

--
update Orden set ValorDeclarado = '27219159' where RefOrdenExterna = '0081744903'

update Orden_Dyn set ImporteRemito = '27219159' where IdOrden = 1475465
--

0391651128, 0081744903
1475389, 1475465
