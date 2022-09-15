select IdDomicilioOrden, * from Parada where IdParada = 1717010
--61687 do

select IdDomicilioOrden, IdClienteOrden, * from Tarifa where IdTarifa = 29809 

select IdDomicilioOrden, IdClienteOrden, * from Parada where IdViaje = 260278 and IdOrden is not null

select * from TarifaEntidad where IdTarifa = 29809 and IdEntidad = 4431

select IdCliente, * from Guia where IdGuia = 1170600

select * from Cliente where IdCliente = 4431

select * from DomicilioOrden where IdDomicilioOrden in ('12367','61687')

--IdDomicilioOrden de la tarifa 29809: 12367

--IdDomicilioOrden de la parada 1716994: 61687

--Viajes a aplicar tarifa costo 29809:
/*
260278
261142
261525
261876
262181
262590
263064
263340
263695
264033
264440
264798
265135
265499
265965
266255
266696
267226
267576
267879
268450
268868
269038
*/
