select * from ConceptoValorizadoGuia where IdGuia in (
select IdGuia from GuiaViaje where IdViaje = 275002 
) and IdParada in (1807456, 1807453)


--delete ConceptoValorizadoGuia where IdGuia in (
select IdGuia from GuiaViaje where IdViaje = 275002 
) and IdParada in (1807456, 1807453)