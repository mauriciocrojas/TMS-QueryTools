select  * from Viaje where IdViaje = 260221

select IdDomicilioOrden, IdClienteOrden, * from Tarifa where IdTarifa = 29810 --12367

select * from TarifaEntidad where IdTarifa = 29810



select IdDomicilioOrden, IdClienteOrden, IdCliente, * from Parada where IdParada = 1716624 and IdOrden is not null

select * from cliente where idcliente in
(select  identidad from TarifaEntidad where IdTarifa = 29810 and entidad='cliente')

select  * from TarifaEntidad where IdTarifa = 29810

select distinct IdCliente from Parada where IdViaje = 260221 and IdOrden is not null

select IdDomicilioOrden, IdClienteOrden, IdTipoOrden from Orden where IdOrden in('1359305') --60

--IrOrden 1359305, IdTipoOrden 31
--IrOrden 1359304, IdTipoOrden 60

--IdCliente 4434



select  * from parada 


select * from DomicilioOrden where Descripcion = 'EXO - PLS' IdDomicilioOrden in ('61687',53093,'12367')


61687	47111
--IdDomicilioOrden de la tarifa 29809: 12367

--IdDomicilioOrden de la parada 1716994: 61687

--Viajes a aplicar tarifa costo:
/*

*/

--Tarifa: