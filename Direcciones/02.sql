--Modificar Orden
select Provincia, Calle, CalleNormalizada, Provincia, ProvinciaNormalizada, Localidad, LocalidadNormalizada, * from Orden where RefOrdenExterna in (
'0081728136'
)

--Modificar Pedido
select Provincia, Calle, CalleNormalizada, Provincia, ProvinciaNormalizada, Localidad, LocalidadNormalizada, * from Pedido where ReferenciaExterna in (
'0081728136'
)

--Modificar DomicilioOrden
select * from DomicilioOrden where IdDomicilioOrden in (
select IdDomicilioOrden from Orden where RefOrdenExterna in ('0081728136')
)

--Modificar ClienteOrden
select * from ClienteOrden where IdClienteOrden in (
select IdClienteOrden from Orden where RefOrdenExterna in ('0081728136')
)

--Modificar EndPointCode
select * from [3PL_POOL].dbo.PL_DELIVERYADDRESSES where ENDPOINTCODE = '0005018775'


