select IdDeposito,  * from Parada where IdViaje = 258269

select IdDomicilioOrden, IdClienteOrden, * from Tarifa where IdTarifa = 29194

select IdDomicilioOrden, IdClienteOrden, IdCliente, * from Parada where IdViaje = 258269 and IdOrden is not null

select IdDomicilioOrden, IdDomicilioOrdenDesde, IdDomicilioOrdenHasta, IdDepositoSalida, idestadoorden from Tarifa where IdTarifa = 29194

update Tarifa set idestadoorden = null where IdTarifa = 29194

--insert into tarifaentidad
select IdTarifa, 6 identidad, 'EstadoOrden' entidad, excluir from Tarifaentidad where IdTarifa = 29194 and idtarifaentidad = 51222

--12807 IdDomicilioOrdenHasta
select * from EstadoParada 

select * from cliente where idcliente in
(select  identidad from TarifaEntidad where IdTarifa = 29194 and entidad='cliente')

select  * from TarifaEntidad where IdTarifa = 29194

select distinct IdCliente from Parada where IdViaje = 258269 and IdOrden is not null

select IdTipoOrden from Orden where IdOrden =1359305 1359304 --60

select  * from parada 


select * from DomicilioOrden where IdDomicilioOrden in ('12807')


61687	47111
--IdDomicilioOrden de la tarifa 29809: 12367

--IdDomicilioOrden de la parada 1716994: 61687

--Viajes a aplicar tarifa costo:
/*


*/

--Tarifa: