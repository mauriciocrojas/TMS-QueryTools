--QA

--[Pendiente (1001) a No entregada (1005)] 631 (Grupo conductor(25))

--Se agregan motivos a las transiciones de:
--[No entregada (1005)] -> ([No entrega x exo (2)], [No entrega x cliente(6)], [No entrega x tte(1002)])
select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1005 and 
(IdEstadoParadaDestino = 2 or IdEstadoParadaDestino = 6 or IdEstadoParadaDestino = 1002 or IdEstadoParadaDestino = 1001)


--[No entregada (1005)] -> [Pendiente (1001)](630 actual)
--[No entregada (1005)] -> [Pendiente (1001)] Nueva: 
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, RequiereMotivo, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 630
---

--IdEstadoParadaTransicion:
--///////////--1
--[No entregada (1005)] -> [No entrega x exo (2)] (628 actual coss y nosotros) (No la tiene Seg. LV) -> Clonar transicion con IdOperacion = 1027
--[No entregada (1005)] -> [No entrega x exo (2)] Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 628

--[No entrega x tte (1002)] -> [No entrega x exo (2)] 456
--[No entrega x cte (6)] -> [No entrega x exo (2)] 452
--///////////--1

--///////////--2
--[No entregada (1005)] -> [No entrega x cliente(6)] (629 actual coss y nosotros) (No la tiene Seg. LV) -> Clonar transicion con IdOperacion = 1027
--[No entregada (1005)] -> [No entrega x cliente(6)] Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 629

--[No entrega x exo (2)] -> [No entrega x cliente (6)] 448
--[No entrega x tte (1002)] -> [No entrega x cliente (6)] 455
--///////////--2

--///////////--3
--[No entregada (1005)] -> [No entrega x tte(1002)] (627 actual coss y nosotros) (No la tiene Seg. LV) -> Clonar transicion con IdOperacion = 1027
--[No entregada (1005)] -> [No entrega x tte(1002)] Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 627

--[No entrega x exo (2)] -> [No entrega x tte (1002)] 450
--[No entrega x cte (6)] -> [No entrega x tte (1002)] 453
--///////////--3

--Chequeo los id IdEstadoParadaTransicion de las nuevas transiciones
select * from EstadoParadaTransicion order by IdEstadoParadaTransicion DESC 
-----------------------------------------------------------------------------------------------------------------------------------

select * from Grupo where IdGrupo = 45

select * from GrupoEstadoParadaTransicion where IdGrupo = 45

--Inserto las nuevas transiciones para el grupo Seguimiento LV:
insert into GrupoEstadoParadaTransicion Values
(45, [No entregada (1005)] -> [Pendiente (1001)] Nueva:),
(45, [No entregada (1005)] -> [No entrega x exo (2)] Nueva:),
(45, [No entregada (1005)] -> [No entrega x cliente(6)] Nueva:),
(45, [No entregada (1005)] -> [No entrega x tte(1002)] Nueva:)



select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in (628), 456, 452, 629, 448, 455, 627, 450, 453)
and IdGrupo = 45


select * from Motivo where Descripcion like '%%'

select * from EstadoParada where Descripcion like '%%'

select IdOperacion, * from EstadoParadaTransicion where IdEstadoParadaTransicion in (628, 456, 452, 629, 448, 455, 627, 450, 453)
where (IdEstadoParadaOrigen = 2 or IdEstadoParadaOrigen =  6 or IdEstadoParadaOrigen = 1002)
and (IdEstadoParadaDestino = 2 or IdEstadoParadaDestino = 6 or IdEstadoParadaDestino = 1002)

-----------------------------------------------------------------------------------------------------------------------------------
--NO ENTREGA x EXO (2):--

--DOMICILIO CERRADO (15)
--PEDIDO REPETIDO (18)
--FALTA REMITO (32)
--FUERA DE HORA (33)
--CAJA DETERIORADA (40)
--PEDIDO EQUIVOCADO (51)

--[No entrega x tte (1002)] -> [No entrega x exo (2)] 456
--[No entrega x cte (6)] -> [No entrega x exo (2)] 452
--[No entregada (1005)] -> [No entrega x exo (2)] Nueva:

select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (456) and IdMotivo in (15, 18, 32, 33, 40, 41)
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (452) and IdMotivo in (15, 18, 32, 33, 40, 41)
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (NuevaNoEntregada-NoEntregaExo) and IdMotivo in (15, 18, 32, 33, 40, 41)

--Inserto motivos a las transiciones no entrega exo: 
insert into EstadoParadaTransicionMotivo VALUES
(456, 15),
(456, 18),
(456, 41),
(452, 15),
(452, 18),
(452, 41),
(NuevaNoEntregada-NoEntregaExo, 15),
(NuevaNoEntregada-NoEntregaExo, 18),
(NuevaNoEntregada-NoEntregaExo, 41),
(NuevaNoEntregada-NoEntregaExo, 32),
(NuevaNoEntregada-NoEntregaExo, 33),
(NuevaNoEntregada-NoEntregaExo, 40)

-----------------------------------------------------------------------------------------------------------------------------------

--NO ENTREGA x CLIENTE (6):--

--CERRADO POR VACACIONES (16)
--PEDIDO RECHAZADO (17)
--NO RECIBE X NO TENER TURNO (23)
--EXCESIVA DEMORA (30)
--NO PUEDE PAGAR (53)
--NO ESTA EL RESPONSABLE (54)

--[No entrega x exo (2)] -> [No entrega x cliente (6)] 448
--[No entrega x tte (1002)] -> [No entrega x cliente (6)] 455
--[No entregada (1005)] -> [No entrega x cliente(6)] Nueva:

select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (448) and IdMotivo in (16, 17, 23, 30, 53, 54)
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (455) and IdMotivo in (16, 17, 23, 30, 53, 54)
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (NuevaNoEntregada-NoEntregaCte) and IdMotivo in (16, 17, 23, 30, 53, 54)

--Inserto motivos a las transiciones no entrega cliente: 
insert into EstadoParadaTransicionMotivo VALUES
(448, 30),
(455, 15),
(NuevaNoEntregada-NoEntregaCte, 16),
(NuevaNoEntregada-NoEntregaCte, 17),
(NuevaNoEntregada-NoEntregaCte, 23),
(NuevaNoEntregada-NoEntregaCte, 30),
(NuevaNoEntregada-NoEntregaCte, 53),
(NuevaNoEntregada-NoEntregaCte, 54)


-----------------------------------------------------------------------------------------------------------------------------------

--NO ENTREGA x TTE (1002):--

--VEHICULO DESCOMPUESTO (45)
--NO PUEDE COMPLETAR REPARTO (55)

--[No entrega x exo (2)] -> [No entrega x tte (1002)] 450
--[No entrega x cte (6)] -> [No entrega x tte (1002)] 453
--[No entregada (1005)] -> [No entrega x tte(1002)] Nueva:

select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (450) and IdMotivo in (45, 55)
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (453) and IdMotivo in (45, 55)
select * from EstadoParadaTransicionMotivo where IdEstadoParadaTransicion in (NuevaNoEntregada-NoEntregaTte) and IdMotivo in (45, 55)

--Inserto motivos a las transiciones no entrega tte: 
insert into EstadoParadaTransicionMotivo VALUES
(NuevaNoEntregada-NoEntregaTte, 45),
(NuevaNoEntregada-NoEntregaTte, 55)













-------

/*
En PROD el grupo Seg LV ya tiene las transiciones de no entregada a no entrega x y pendiente, eliminarlas y seguir los pasos para hacerlas exclusivas

delete GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 627 or IdEstadoParadaTransicion = 628 
or IdEstadoParadaTransicion = 629) 
and IdGrupo in (45)

delete GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 448 or IdEstadoParadaTransicion = 450 
or IdEstadoParadaTransicion = 452 or IdEstadoParadaTransicion = 453
or IdEstadoParadaTransicion = 455 or IdEstadoParadaTransicion = 456) 
and IdGrupo in (45)
*/



select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1005 and 
(IdEstadoParadaDestino = 2 or IdEstadoParadaDestino = 6 or IdEstadoParadaDestino = 1002 or IdEstadoParadaDestino = 1001)


select * from GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 627 or IdEstadoParadaTransicion = 628 
or IdEstadoParadaTransicion = 629 or IdEstadoParadaTransicion = 630) 
and IdGrupo in (45)