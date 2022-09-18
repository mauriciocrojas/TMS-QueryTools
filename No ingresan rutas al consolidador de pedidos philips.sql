select idorden, IdRuta, IdRutaFleet, * from exo_ordenes_confirmadas_phl where IdRutaFleet in (
314971,
314973,
314974,
314975,
314977,
314978,
314980
)

delete exo_ordenes_confirmadas_phl where IdRutaFleet in (
314971,
314973,
314974,
314975,
314977,
314978,
314980
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

select IdRuta, IdJornada, * from Orden where RefOrdenExterna in(
'0081746497',
'0081746499',
'0081745757',
'0081745755',
'0081745753',
'0081745765',
'0081745778',
'0081745790',
'0081745826',
'0081744997',
'0081745004',
'0081745130',
'0081745115',
'0081745139',
'0081745148',
'0081745162',
'0081746505',
'0081746503',
'0081745784',
'0081745783'
)

select * from Pedido where ReferenciaExterna = '0081745783'

--Update [3PL_POOL].dbo.Pl_Orders set status=5, sendtofleet=null, route=’IdRuta’, externalorderkey2=Idorden where externorderkey=’X’

--select route, status, SENDTOFLEET, SENDTOINFOR, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '0081745783'