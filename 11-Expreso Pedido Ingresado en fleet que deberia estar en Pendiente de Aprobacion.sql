--Pedido tipo [Retiro interior] (usa expreso) en fleet ingresado y que debería estar en pendiente de aprobación:

--RecordType:
--null interfaz
--2 import excel
--3 manual

--Chequeamos estado, cuando se envio a fleet, dirección 1, y dirección 2 (a donde va el expreso)
select IdOrder, RECORD_TYPE, status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, C_DIFFERENTDELIVERYADDRESS, * 
from [3PL_POOL].dbo.PL_ORDERS where ExternOrderKey = 'trf3563368' --pendiente de ruteo

--Chequear si la dlv tiene detalle
select * from [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder = '1410784'

--Si es dlv tipo expreso debería tener el C_DIFFERENTDELIVERYADDRESS = 1 
--update [3PL_POOL].dbo.PL_ORDERS set C_DIFFERENTDELIVERYADDRESS = 1 where ExternOrderKey = '0250646508'

--Reprocesar para que pase a fleet
--update [3PL_POOL].dbo.PL_ORDERS set STATUS = 1, SENDTOFLEET = null where ExternOrderKey  in ('')

--Chequeo si llegó a fleet
select * from Pedido where ReferenciaExterna in('TRF674-147', '677-080')  

--Chequeo si hay caracteres especiales
select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES in (55740,
44138)

--Corrijo en caso de haberlos
--update [3PL_POOL].dbo.PL_DELIVERYADDRESSES set STATE = 'Santa Fe', DISTRICT = 'General Lopez' where IDDELIVERYADDRESSES in (55740)


--Chequeo el Id_DeliveryAdress2, que es la dirección del expreso, la cual necesito para hacer el update ya que se encontraba en null
select STATUS, SENDTOFLEET, ID_DELIVERYADDRESS1, [3PL_POOL].dbo.FC_OBTENER_EXPRESO(ID_DELIVERYADDRESS1) EsExpreso,
ID_DELIVERYADDRESS2, ORDERTYPETMS, SUSPENDINDICATOR, * 
from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY in ('0250646508')


--Actualizo el estado a ingresado para que el pedido sea visible por routing, sendtofleet a null, y en la dlvadress2 la dirección
--obtenida de la consulta anterior. De esta manera se genera el reprocesamiento
--update [3PL_POOL].dbo.PL_ORDERS set status = 1, SENDTOFLEET = null, ID_DELIVERYADDRESS2 = '48531' where ExternOrderKey = '0250646508'


--------------------------------------------------------------------------------------------------------------------------------------
select * from [3PL_POOL].dbo.PL_CUSTOMERS where Customer like '%virgi%'

select RECORD_TYPE, * from [3PL_POOL].dbo.PL_ORDERS where IDCUSTOMER = 8259

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 956
--------------------------------------------------------------------------------------------------------------------------------------


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