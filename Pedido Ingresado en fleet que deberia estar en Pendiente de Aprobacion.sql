--Orden Retiro interior en fleet ingresada y que debería estar en pendiente de aprobación
--Retiro Interior (usa expreso)

--Chequeamos estado, cuando se envio a fleet, dirección 1, y dirección 2 (a donde va el expreso)
select RECORD_TYPE, status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, C_DIFFERENTDELIVERYADDRESS, * from PL_ORDERS where ExternOrderKey = '0250663220' --pendiente de ruteo


--update PL_ORDERS set C_DIFFERENTDELIVERYADDRESS = 1 where ExternOrderKey = '0250663220'

--update PL_ORDERS set STATUS = 1, SENDTOFLEET = null, where ExternOrderKey = '0250663220'


--null interfaz
--2,  import excel
--3 manual

select * from PL_CUSTOMERS where Customer like '%virgi%'

select RECORD_TYPE, * from PL_ORDERS where IDCUSTOMER = 8259

select * from PL_STATUS where IdCustomer = 956

--Chequeo si hay caracteres especiales
select * from PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES in ('43292')

--Chequeo el Id_DeliveryAdress2, que es la dirección del expreso, la cual necesito para hacer el update ya que se encontraba en null
select STATUS, SENDTOFLEET, ID_DELIVERYADDRESS1, dbo.FC_OBTENER_EXPRESO(ID_DELIVERYADDRESS1) EsExpreso,
ID_DELIVERYADDRESS2, ORDERTYPETMS, SUSPENDINDICATOR, * 
from PL_ORDERS where EXTERNORDERKEY in ('0250663220')


--Actualizo el estado a ingresado para que el pedido sea visible por routing, sendtofleet a null, y en la dlvadress2 la dirección
--obtenida de la consulta anterior. De esta manera se genera el reprocesamiento
--update PL_ORDERS set status = 1, SENDTOFLEET = null, ID_DELIVERYADDRESS2 = '53648' where ExternOrderKey = '84117283'


/*
Función EsExpreso

DECLARE @num int;  
  
  select @num = d2.IDDELIVERYADDRESSES from PL_DELIVERYADDRESSES d
  inner join PL_CUSTOMERS c on d.IDCUSTOMER = c.IDCUSTOMER
  inner join UNIGIS_DataRepository.dbo.Cliente cl on cl.ReferenciaExterna = c.EXTERNALREFERENCE and cl.IdEstado = 1
  inner join UNIGIS_DataRepository.dbo.EXO_VW_Interior_con_Expreso ie 
      on ie.IdCliente = cl.IdCliente
	  and ie.Provincia collate SQL_Latin1_General_CP1_CI_AI = d.STATE collate SQL_Latin1_General_CP1_CI_AI
	  and 
	  (
	  (ie.partido is null and ie.localidad is null)
	  or
	  (ie.localidad=d.CITY collate SQL_Latin1_General_CP1_CI_AI and ie.Localidad is not null)
	  or 
	  (ie.partido=d.CITY collate SQL_Latin1_General_CP1_CI_AI and ie.partido is not null )
	  )
  inner join PL_DELIVERYADDRESSES d2 on d2.ENDPOINTCODE = convert(varchar(10),ie.IdTransporte)
       and d2.IDCUSTOMER = d.IDCUSTOMER
  where d.IDDELIVERYADDRESSES = 43292

	select @num;
  
*/

/*
select * from [UNIGIS_DataRepository].dbo.EXO_VW_Interior_con_Expreso where IdCliente = 1038 and Provincia like '%santa f%'

select * from Cliente where RazonSocial like '%philips%'
--district = partido/departamento
--city = localidad/ciudad
*/