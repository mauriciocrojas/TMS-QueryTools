select * from ConceptoValorizadoGuia where IdGuia in (
select IdGuia from GuiaViaje where IdViaje = 273092 
) and IdParada in (1797092)


--delete ConceptoValorizadoGuia where IdGuia in (
select IdGuia from GuiaViaje where IdViaje = 273092 
) and IdParada in (1797092)

select * from Parada where IdParada = 1797092

--delete Parada where IdParada = 1797092

--delete ParadaTraceEstado where IdParada = 1797092

--delete BitacoraParada where IdParada = 1797092