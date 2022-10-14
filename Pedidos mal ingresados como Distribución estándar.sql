--Caso: Pedidos que deberían haber ingresado con tipo "Interior con expreso" e ingresaron como "Distribución estándar":

--Pedidos:
--1354805
--1355361

--IdDeliveryAdresses respectivas:
--37714
--60048

/*
Búsqueda de pedidos tipo "interior con expreso" para hacer comparativas:
select ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, ORDERTYPETMS, * from [3PL_POOL].dbo.PL_ORDERS where ID_DELIVERYADDRESS1 in (37714, 60048)
and C_DIFFERENTDELIVERYADDRESS = 1 and IdCustomer = 3158
order by ORDERCREATE desc
*/

--Chequeo pedido en cuestión en Portal:
select ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, C_DIFFERENTDELIVERYADDRESS, ORDERTYPETMS, SUSPENDINDICATOR, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('1355361')

--Lo chequeo en Fleet:
select Eliminado, IdTipoPedido, * from Pedido where ReferenciaExterna  like '1355361'

--Chequeo IdDeliveryAdresses:
select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES in (60048)

--Updateo de ser necesario:
update [3PL_POOL].dbo.PL_DELIVERYADDRESSES set 
City = 'Bahia Blanca', 
DISTRICT = 'Bahia Blanca', 
zip = 8000, 
NADDRESS = null, 
NNUMBER = null, 
NBETWEEN = null,
NDISCTRICT = null, 
NTOWN = null, 
NSTATE = null, 
NCITY = null, 
NCOUNTRY = null, 
NZIP = null 
where IDDELIVERYADDRESSES = 60048

--Función ObtenerExpreso (con la cual conseguimos la dirección del expreso, que es la IdDeliveryAdresses2):
select ID_DELIVERYADDRESS1, [3PL_POOL].dbo.FC_OBTENER_EXPRESO(ID_DELIVERYADDRESS1) 
EsExpreso, ID_DELIVERYADDRESS2, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('1355361')


--Updateo al pedido en portal con los campos necesarios para reprocesar:
update [3PL_POOL].dbo.PL_ORDERS set SENDTOFLEET = null, status = 3, C_DIFFERENTDELIVERYADDRESS = 1, ORDERTYPETMS = 5, ID_DELIVERYADDRESS2 = 20131 where EXTERNORDERKEY = '1355361'

--Chequeo si ya se reproceso (a esta altura el pedido ya debería haber cambiado su tipo a interior con expreso):
select status, SENDTOFLEET, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '1355361'

--Chequeo cliente correcto
select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 3158

--Chequeo tipos de pedido en Portal (1: distribución estandar, 2: interior con expreso)
select * from [3PL_POOL].dbo.PL_ORDERSTYPETMS

--Consulto y updateo el tipo de orden en fleet:
select * from TipoOrden
select IdTipoOrden, * from Orden where IdOrden =1492314
update Orden set IdTipoOrden = 24 where IdOrden =1492314

--En este punto, realizamos el flujo normal para generar la segunda orden y la ruta expreso.

--Ruta interior con expreso de ejemplo:
select IdVehiculo, IdConductor, IdTipoVehiculo, * from Ruta where IdRuta in (313282)

--Updateo la nueva ruta generada:
update Ruta set IdVehiculo = 1786881, IdConductor = 1343, IdTipoVehiculo = 2012 where IdRuta = 322589

--Tipos genéricos para rutas interior expreso
select * from Vehiculo where IdVehiculo = 1786881
select * from Conductor where IdConductor = 1343
select * from TipoVehiculo where IdTipoVehiculo = 2012


--En caso que se hayan duplicado los pedidos procederemos así:
--update Pedido set Eliminado = 0 where IdPedido = 1127777
--update Pedido set Eliminado = 1 where IdPedido = 1141365