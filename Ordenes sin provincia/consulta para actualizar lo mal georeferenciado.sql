






DECLARE @calle nvarchar(50) = 'Av Belgrano'  
DECLARE @direccion nvarchar(50) = 'Av Belgrano 1116'
DECLARE @codigopostal nvarchar(50) = '5870'
DECLARE @numeropuerta nvarchar(50) = '1116'
DECLARE @barrio nvarchar(50) = ''
DECLARE @localidad nvarchar(50) = 'Cordoba'
DECLARE @partido nvarchar(50) = 'Villa Dolores' --District
DECLARE @provincia nvarchar(50) ='Cordoba'
DECLARE @latitud float = '-31.946134299316977'  
DECLARE @longitud float = '-65.1746567173135'

DECLARE @iddireccionportal nvarchar(50) = '9700774'


 --@clienteorden varchar(40);
--DECLARE @domicilioorden int 




--select @domicilioorden = iddomicilioorden from pedido where Referenciaexterna=@referenciaExterna




 
--MODIFICACION A PARADA
update parada set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido, Provincia=@provincia,
latitud = @latitud , longitud=@longitud where ReferenciaExterna in ('9740742165|01',
'9740742287|01',
'9740742521|01') 


--MODIFICACION A  ORDEN
update orden set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido, Provincia=@provincia,
latitud = @latitud , longitud=@longitud where  RefOrdenExterna in ('9740742165|01',
'9740742287|01',
'9740742521|01') 

--MODIFICACION A CLIENTE ORDEN
update clienteorden set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido, Provincia=@provincia,
latitud = @latitud , longitud=@longitud where idclienteorden=36512

--MODIFICACION A DOMICILIO ORDEN
update DomicilioOrden set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido,  Provincia=@provincia,
latitud = @latitud , longitud=@longitud where iddomicilioorden=66126 
--se puede filtrar por idclienteorden, en algunos casos

--MODIFICACION A DELIVERY ADDRESES EN PORTAL
UPDATE [3PL_POOL].dbo.PL_DELIVERYADDRESSES 
set latitude = @latitud , longitude=@longitud, nstreet=@calle ,nDisctrict= @partido, nCity=@localidad,nState=@provincia,
NNUMBER=@numeropuerta,NZIP=@codigopostal where ENDPOINTCODE=@iddireccionportal