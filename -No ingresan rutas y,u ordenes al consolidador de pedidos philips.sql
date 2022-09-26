select idorden, IdRuta, IdRutaFleet, * from exo_ordenes_confirmadas_phl where IdOrden in (
1486915,
1486917,
1486918
)

delete exo_ordenes_confirmadas_phl where IdOrden in (
1486915,
1486917,
1486918
)

select RefOrdenExterna, * from Orden where IdOrden in (
1477845,
1477846,
1477859,
1477860,
1477861,
1477862,
1477863,
1477864,
1477865,
1477866,
1477867,
1477879,
1477880,
1477881,
1477882,
1477883,
1477893,
1477899,
1477917,
1477918
)



select * from [3PL_POOL].dbo.Pl_Orders where Route = '3149751'

select * from Ruta where IdRuta = 314974

select IdRuta, IdJornada, * from Orden where RefOrdenExterna in (
'0081750668',
'0081750669',
'0081750708'
)

select * from Pedido where ReferenciaExterna in (
'81750668',
'81750669',
'81750708'
)

--Update [3PL_POOL].dbo.Pl_Orders set status=5, sendtofleet=null, route=’IdRuta’, externalorderkey2=Idorden where externorderkey=’X’

--select route, status, SENDTOFLEET, SENDTOINFOR, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '0081745783'