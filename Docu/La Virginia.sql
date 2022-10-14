--QA La Virginia



--Ingresa el pedido en portal mediante la interfaz que envía el cliente.

--El pedido se crea automáticamente en Fleet con el estado Ingresado. En Portal el pedido pasa al estado Pendiente de Ruteo.

select status, ROUTE, EXTERNALORDERKEY2, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '0050317961'

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 5887  

select IdEstadoRuta, * from Ruta where IdRuta = 239149

select * from Orden where IdJornada = 24666 and IdRuta = 32