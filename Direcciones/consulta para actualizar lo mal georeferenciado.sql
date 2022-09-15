






DECLARE @calle nvarchar(50) = 'Av San Martin' --Street
DECLARE @direccion nvarchar(50) = 'Av San Martin 1506' --InformedStreet
DECLARE @codigopostal nvarchar(50) = '5152' --Zip
DECLARE @numeropuerta nvarchar(50) = '1506' --Number
DECLARE @barrio nvarchar(50) = '' --Town
DECLARE @localidad nvarchar(50) = 'Villa Carlos Paz' --City
DECLARE @partido nvarchar(50) = 'Punilla' --District
DECLARE @provincia nvarchar(50) ='Cordoba' --State
DECLARE @latitud float = '-31.409181412292234'  
DECLARE @longitud float = '-64.4809363079391'


DECLARE @iddireccionportal nvarchar(50) = '9731706'


 --@clienteorden varchar(40);
--DECLARE @domicilioorden int 




--select @domicilioorden = iddomicilioorden from pedido where Referenciaexterna=@referenciaExterna




 
--MODIFICACION A PARADA
update parada set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido, Provincia=@provincia,
latitud = @latitud , longitud=@longitud where ReferenciaExterna in (
'9740735906|01',
'9740736035|01',
'9740736172|01',
'9740736298|01',
'9740736506|01',
'9740736553|01',
'9740737263|01',
'9740737691|01',
'9740737817|01',
'9740737902|01',
'9740738239|01',
'9740738465|01'
) 


--MODIFICACION A  ORDEN
update orden set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido, Provincia=@provincia,
latitud = @latitud , longitud=@longitud where  RefOrdenExterna in (
'9740735906|01',
'9740736035|01',
'9740736172|01',
'9740736298|01',
'9740736506|01',
'9740736553|01',
'9740737263|01',
'9740737691|01',
'9740737817|01',
'9740737902|01',
'9740738239|01',
'9740738465|01'
) 

--MODIFICACION A CLIENTE ORDEN
update clienteorden set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido, Provincia=@provincia,
latitud = @latitud , longitud=@longitud where idclienteorden=47497

--MODIFICACION A DOMICILIO ORDEN
update DomicilioOrden set Direccion= @direccion, Calle= @calle, CodigoPostal=@codigopostal, NumeroPuerta=@numeropuerta, Barrio=@barrio,Localidad=@localidad , Partido=@partido,  Provincia=@provincia,
latitud = @latitud , longitud=@longitud where idclienteorden=47497 --iddomicilioorden=64463 
--se puede filtrar por idclienteorden, en algunos casos

--MODIFICACION A DELIVERY ADDRESES EN PORTAL
UPDATE [3PL_POOL].dbo.PL_DELIVERYADDRESSES 
set latitude = @latitud , longitude=@longitud, nstreet=@calle ,nDisctrict= @partido, nCity=@localidad,nState=@provincia,
NNUMBER=@numeropuerta,NZIP=@codigopostal where ENDPOINTCODE=@iddireccionportal