--Orden Retiro interior en fleet ingresada y que deber�a estar en pendiente de aprobaci�n
--Retiro Interior (usa expreso)

--Chequeamos estado, cuando se envio a fleet, direcci�n 1, y direcci�n 2 (a donde va el expreso)
select status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from PL_ORDERS where ExternOrderKey = '84117283' --pendiente de ruteo

select * from PL_STATUS where IdCustomer = 956

--Chequeo si hay caracteres especiales
select * from PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES in ('37285','53648')

--Chequeo el Id_DeliveryAdress2, que es la direcci�n del expreso, la cual necesito para hacer el update ya que se encontraba en null
select STATUS, SENDTOFLEET, ID_DELIVERYADDRESS1, dbo.FC_OBTENER_EXPRESO(ID_DELIVERYADDRESS1) EsExpreso,
ID_DELIVERYADDRESS2, ORDERTYPETMS, SUSPENDINDICATOR, * 
from PL_ORDERS where EXTERNORDERKEY in ('84117283')

--Actualizo el estado a ingresado para que el pedido sea visible por routing, sendtofleet a null, y en la dlvadress2 la direcci�n
--obtenida de la consulta anterior. De esta manera se genera el reprocesamiento
--update PL_ORDERS set status = 1, SENDTOFLEET = null, ID_DELIVERYADDRESS2 = '53648' where ExternOrderKey = '84117283'