--Paso 1 - Creación de transiciones 

--[No entregada (1005)] -> [No entrega x tte(1002)] (627 actual) 
--[No entregada (1005)] -> [No entrega x exo (2)] (628 actual)
--[No entregada (1005)] -> [No entrega x cliente(6)] (629 actual) 
--[No entregada (1005)] -> [Pendiente (1001)](630 actual)

select * from GrupoEstadoParadaTransicion where 
(IdEstadoParadaTransicion = 627 or IdEstadoParadaTransicion = 628 or IdEstadoParadaTransicion = 629 or IdEstadoParadaTransicion = 630) 
and IdGrupo in (45)

--[No entrega x tte (1002)] -> [No entrega x exo (2)] 456
--[No entrega x cte (6)] -> [No entrega x exo (2)] 452

--[No entrega x exo (2)] -> [No entrega x cliente (6)] 448
--[No entrega x tte (1002)] -> [No entrega x cliente (6)] 455

--[No entrega x exo (2)] -> [No entrega x tte (1002)] 450
--[No entrega x cte (6)] -> [No entrega x tte (1002)] 453

/*
Elimino los registros actuales de las transiciones que tiene el grupo Seg LV, ya que no son exclusivas
*/

select * from GrupoEstadoParadaTransicion where (
IdEstadoParadaTransicion = 456 or IdEstadoParadaTransicion = 452 or 
IdEstadoParadaTransicion = 448 or IdEstadoParadaTransicion = 455 or 
IdEstadoParadaTransicion = 450 or IdEstadoParadaTransicion = 453
) and IdGrupo in (45)

--delete GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 448 or IdEstadoParadaTransicion = 450 
or IdEstadoParadaTransicion = 452 or IdEstadoParadaTransicion = 453
or IdEstadoParadaTransicion = 455 or IdEstadoParadaTransicion = 456) 
and IdGrupo in (45)

--[No entrega x tte (1002)] -> [No entrega x exo (2)] 456 - Nueva: 664
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 456

--[No entrega x cte (6)] -> [No entrega x exo (2)] 452 - Nueva: 665
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 452

--[No entrega x exo (2)] -> [No entrega x cliente (6)] 448 - Nueva: 666
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 448

--[No entrega x tte (1002)] -> [No entrega x cliente (6)] 455 - Nueva: 667
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 455

--[No entrega x exo (2)] -> [No entrega x tte (1002)] 450 - Nueva: 668
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 450

--[No entrega x cte (6)] -> [No entrega x tte (1002)] 453 - Nueva: 673
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 453

--[No entregada (1005)] -> [No entrega x exo (2)] 628 - Nueva: 670
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 628

--[No entregada (1005)] -> [No entrega x cliente(6)] 629 - Nueva: 671
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 629

--[No entregada (1005)] -> [No entrega x tte(1002)] 627 - Nueva: 672
insert into EstadoParadaTransicion 
select IdEstadoParadaOrigen, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 627

--Chequeo los id IdEstadoParadaTransicion de las nuevas transiciones
select * from EstadoParadaTransicion order by IdEstadoParadaTransicion DESC 


--Inserto las nuevas transiciones para el grupo Seguimiento LV:
insert into GrupoEstadoParadaTransicion Values
(45, 630),--[No entregada (1005)] -> [Pendiente (1001)] (no lleva motivos, se agrega a QA ya que no la tenía (630 actual))
(45, 670),--[No entregada (1005)] -> [No entrega x exo (2)]
(45, 671),--[No entregada (1005)] -> [No entrega x cliente(6)]
(45, 672),--[No entregada (1005)] -> [No entrega x tte(1002)]
(45, 664),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(45, 665),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(45, 666),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(45, 667),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(45, 668),--[No entrega x exo (2)] -> [No entrega x tte (1002)]
(45, 673),--[No entrega x cte (6)] -> [No entrega x tte (1002)]
--Replicar para grupo 1, 40, 41
(1, 670),
(1, 671),
(1, 672),
(1, 664),
(1, 665),
(1, 666),
(1, 667),
(1, 668),
(1, 673),
--
(40, 670),
(40, 671),
(40, 672),
(40, 664),
(40, 665),
(40, 666),
(40, 667),
(40, 668),
(40, 673),
--
(41, 670),
(41, 671),
(41, 672),
(41, 664),
(41, 665),
(41, 666),
(41, 667),
(41, 668),
(41, 673)

--Inserto motivos a las transiciones no entrega exo
insert into EstadoParadaTransicionMotivo VALUES
(670, 15),--[No entregada (1005)] -> [No entrega x exo (2)]
(670, 18),--[No entregada (1005)] -> [No entrega x exo (2)]
(670, 41),--[No entregada (1005)] -> [No entrega x exo (2)]
(670, 32),--[No entregada (1005)] -> [No entrega x exo (2)]
(670, 33),--[No entregada (1005)] -> [No entrega x exo (2)]
(670, 40),--[No entregada (1005)] -> [No entrega x exo (2)]

(664, 15),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(664, 18),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(664, 41),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(664, 32),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(664, 33),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(664, 40),--[No entrega x tte (1002)] -> [No entrega x exo (2)]

(665, 15),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(665, 18),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(665, 41),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(665, 32),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(665, 33),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(665, 40)--[No entrega x cte (6)] -> [No entrega x exo (2)]

--Inserto motivos a las transiciones no entrega cliente: 
insert into EstadoParadaTransicionMotivo VALUES
(671, 16),--[No entregada (1005)] -> [No entrega x cliente(6)]
(671, 17),--[No entregada (1005)] -> [No entrega x cliente(6)]
(671, 23),--[No entregada (1005)] -> [No entrega x cliente(6)]
(671, 30),--[No entregada (1005)] -> [No entrega x cliente(6)]
(671, 53),--[No entregada (1005)] -> [No entrega x cliente(6)]
(671, 54),--[No entregada (1005)] -> [No entrega x cliente(6)]

(666, 16),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(666, 17),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(666, 23),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(666, 30),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(666, 53),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(666, 54),--[No entrega x exo (2)] -> [No entrega x cliente (6)]

(667, 16),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(667, 17),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(667, 23),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(667, 30),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(667, 53),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(667, 54)--[No entrega x tte (1002)] -> [No entrega x cliente (6)]


--Inserto motivos a las transiciones no entrega tte: 
insert into EstadoParadaTransicionMotivo VALUES
(672, 45),--[No entregada (1005)] -> [No entrega x tte(1002)]
(672, 55),--[No entregada (1005)] -> [No entrega x tte(1002)]

(668, 45),--[No entrega x exo (2)] -> [No entrega x tte (1002)]
(668, 55),--[No entrega x exo (2)] -> [No entrega x tte (1002)]

(673, 45),--[No entrega x cte (6)] -> [No entrega x tte (1002)]
(673, 55)--[No entrega x cte (6)] -> [No entrega x tte (1002)]



