select * from Pedido where ReferenciaExterna in (
'1338598',
'1338661',
'1338750',
'1339069',
'1339099',
'1339119',
'1339342',
'1339357',
'1339459',
'1339700',
'TRF6730088|P',
'TRF6730089|P'
)

select * from EstadoPedido where IdEstadoPedido in (4, 9)

select status, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('TRF6730088')

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 3158 and value in (99)

update Orden set IdRuta = 0 where IdOrden = 1426925

select Bultos, Peso, Volumen, Unidades, CantidadOrdenes, * from Ruta where IdRuta = 303538
		--74	659		0.56	624			12

update Ruta set Bultos = 73, Peso = 654, Volumen = 0.48, CantidadOrdenes = 11 where IdRuta = 303538

select Bultos, Peso, Volumen, Unidades, * from Orden where IdOrden = 1426925
		--1		5	  0.08		0
