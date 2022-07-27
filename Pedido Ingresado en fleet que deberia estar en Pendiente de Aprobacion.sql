--Orden Retiro interior en fleet ingresada y que debería estar en pendiente de aprobación
--Retiro Interior (usa expreso)

--Chequeamos estado, cuando se envio a fleet, dirección 1, y dirección 2 (a donde va el expreso)
select status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from PL_ORDERS where ExternOrderKey = '0250655416' --pendiente de ruteo

select * from PL_STATUS where IdCustomer = 66

--Chequeo si hay caracteres especiales
select * from PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES = '40295'

--Chequeo el Id_DeliveryAdress2, que se la dirección del expreso, la cual necesito para hacer el update ya que se encontraba en null
select STATUS, SENDTOFLEET, ID_DELIVERYADDRESS1, dbo.FC_OBTENER_EXPRESO(ID_DELIVERYADDRESS1) EsExpreso,
ID_DELIVERYADDRESS2, ORDERTYPETMS, SUSPENDINDICATOR, * 
from PL_ORDERS where EXTERNORDERKEY in ('0250655416')

--Actualizo el estado a ingresado para que el pedido sea visible por routing, sendtofleet a null, y en la dlvadress2 la dirección
--obtenida de la consulta anterior. De esta manera se genera el reprocesamiento
--update PL_ORDERS set status = 1, SENDTOFLEET = null, ID_DELIVERYADDRESS2 = '35709' where ExternOrderKey = '0250655416'