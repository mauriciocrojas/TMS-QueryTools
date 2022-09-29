
select IdDomicilioOrden, * from Orden where IdOrden = 1490221

select IdDomicilioOrden, * from Pedido where ReferenciaExterna = '000000137091'

select * from DomicilioOrden where IdDomicilioOrden = 71434

update Orden set IdDomicilioOrden = 71434, Calle = 'Santa Fe', Direccion = 'AV.SANTAFE2653', NumeroPuerta = '2653',
Localidad = 'Capital Federal', Provincia = 'Capital Federal', Partido = 'Capital Federal', Pais = 'Argentina', CodigoPostal = '1425'
where IdOrden = 1490221