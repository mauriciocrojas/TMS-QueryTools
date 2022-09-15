--PEDIDOS QUE NO INGRESAN A FLEET

--RECORD_TYPE,
--null interfaz
--2,  import excel
--3 manual

--Compruebo si el cliente prepara o rutea primero
select c.RazonSocial, toc.Descripcion from cliente c
inner join OperacionCliente oc on c.IdCliente = oc.IdCliente
inner join operacion o on o.IdOperacion = oc.IdOperacion
inner join TipoOperacion toc on toc.IdTipoOperacion = o.IdTipoOperacion
where c.IdCliente in(7770)

select * from [3PL_POOL].dbo.PL_STATUS where IdCustomer = 956

select * from Pedido where ReferenciaExterna = '0081732363'

SELECT  * FROM [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY='0081732363'

SELECT  * FROM [3PL_POOL].dbo.PL_ORDERDETAIL where IdOrder='1361884'


select RECORD_TYPE, status, SENDTOFLEET, ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, C_DIFFERENTDELIVERYADDRESS, * 
from [3PL_POOL].dbo.PL_ORDERS where ExternOrderKey like '0081732363' --pendiente de ruteo

select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where IDDELIVERYADDRESSES = 53648

--update [3PL_POOL].dbo.PL_DELIVERYADDRESSES set street = 'Jesus Maria', City = 'Cordoba', DISTRICT = 'Cordoba', NADDRESS = 'Jesus Maria',
NBETWEEN = 'Apostoles', NCITY = 'Cordoba', NSTREET = 'Jesus Maria' where IDDELIVERYADDRESSES = 36872

--Cuando es un cliente Rutea Primero, o un pedido manual. Se debe actualizar
--el status=1,sendtofleet=null para el pedido que no ingresa.

UPDATE [3PL_POOL].dbo.PL_ORDERS SET STATUS=1, SENDTOFLEET= NULL WHERE EXTERNORDERKEY='0081732363'

--Cuando el cliente es, nike, converse, samsonite o puma (PREPARA PRIMERO) y 
--no es pedido manual. Se debe actualizar el status=3, sendtofleet=null para el pedido que no ingresa.

--UPDATE PL_ORDERS SET STATUS=3, SENDTOFLEET= NULL WHERE EXTERNORDERKEY='0081326185'