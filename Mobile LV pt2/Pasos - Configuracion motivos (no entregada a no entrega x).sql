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

select * from GrupoEstadoParadaTransicion where (
IdEstadoParadaTransicion = 456 or IdEstadoParadaTransicion = 452 or 
IdEstadoParadaTransicion = 448 or IdEstadoParadaTransicion = 455 or 
IdEstadoParadaTransicion = 450 or IdEstadoParadaTransicion = 453
) and IdGrupo in (45)


/*
Elimino los registros actuales de las transiciones que tiene el grupo Seg LV, ya que no son exclusivas

delete GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 448 or IdEstadoParadaTransicion = 450 
or IdEstadoParadaTransicion = 452 or IdEstadoParadaTransicion = 453
or IdEstadoParadaTransicion = 455 or IdEstadoParadaTransicion = 456) 
and IdGrupo in (45)
*/

--[No entrega x tte (1002)] -> [No entrega x exo (2)] 456 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 456

--[No entrega x cte (6)] -> [No entrega x exo (2)] 452 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 452

--[No entrega x exo (2)] -> [No entrega x cliente (6)] 448 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 448

--[No entrega x tte (1002)] -> [No entrega x cliente (6)] 455 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 455

--[No entrega x exo (2)] -> [No entrega x tte (1002)] 450 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 450

--[No entrega x cte (6)] -> [No entrega x tte (1002)] 452 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 452

--[No entregada (1005)] -> [Pendiente (1001)] 630 - Nueva:
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

--[No entregada (1005)] -> [No entrega x exo (2)] 628 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 628

--[No entregada (1005)] -> [No entrega x cliente(6)] 629 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta, RequiereObservacion,
IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion, ConsiderarConsolidados,
CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha, PermiteParadaEtiqueta, 
ConsiderarDomicilios,ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca, CompletarParadaItemCantidad, 
TemplateNotificacionMovil,IdEstadoGuia, IdEmpresa, 1027, IdTipoOperacion, PermiteTomarFotosRecursos, 
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 629

--[No entregada (1005)] -> [No entrega x tte(1002)] 627 - Nueva:
insert into EstadoParadaTransicion 
select IdEstadoParadaDestino, IdEstadoParadaDestino, 1, RequiereControl, IdTipoAlarma, IdEstadoParadaVisita, 
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
(45, ),--[No entregada (1005)] -> [Pendiente (1001)] (no lleva motivos)
(45, ),--[No entregada (1005)] -> [No entrega x exo (2)]
(45, ),--[No entregada (1005)] -> [No entrega x cliente(6)]
(45, ),--[No entregada (1005)] -> [No entrega x tte(1002)]
(45, ),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(45, ),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(45, ),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(45, ),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(45, ),--[No entrega x exo (2)] -> [No entrega x tte (1002)]
(45, ),--[No entrega x cte (6)] -> [No entrega x tte (1002)]

--Replicar para grupo 1, 40, 41


--Inserto motivos a las transiciones no entrega exo
insert into EstadoParadaTransicionMotivo VALUES

(NuevaNoEntregada-NoEntregaExo, 15),--[No entregada (1005)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 18),--[No entregada (1005)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 41),--[No entregada (1005)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 32),--[No entregada (1005)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 33),--[No entregada (1005)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 40),--[No entregada (1005)] -> [No entrega x exo (2)]

(NuevaNoEntregada-NoEntregaExo, 15),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 18),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 41),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 32),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 33),--[No entrega x tte (1002)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 40),--[No entrega x tte (1002)] -> [No entrega x exo (2)]

(NuevaNoEntregada-NoEntregaExo, 15),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 18),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 41),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 32),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 33),--[No entrega x cte (6)] -> [No entrega x exo (2)]
(NuevaNoEntregada-NoEntregaExo, 40)--[No entrega x cte (6)] -> [No entrega x exo (2)]

--Inserto motivos a las transiciones no entrega cliente: 
insert into EstadoParadaTransicionMotivo VALUES

(NuevaNoEntregada-NoEntregaCte, 16),--[No entregada (1005)] -> [No entrega x cliente(6)]
(NuevaNoEntregada-NoEntregaCte, 17),--[No entregada (1005)] -> [No entrega x cliente(6)]
(NuevaNoEntregada-NoEntregaCte, 23),--[No entregada (1005)] -> [No entrega x cliente(6)]
(NuevaNoEntregada-NoEntregaCte, 30),--[No entregada (1005)] -> [No entrega x cliente(6)]
(NuevaNoEntregada-NoEntregaCte, 53),--[No entregada (1005)] -> [No entrega x cliente(6)]
(NuevaNoEntregada-NoEntregaCte, 54),--[No entregada (1005)] -> [No entrega x cliente(6)]

(NuevaNoEntregada-NoEntregaCte, 16),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 17),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 23),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 30),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 53),--[No entrega x exo (2)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 54),--[No entrega x exo (2)] -> [No entrega x cliente (6)]

(NuevaNoEntregada-NoEntregaCte, 16),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 17),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 23),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 30),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 53),--[No entrega x tte (1002)] -> [No entrega x cliente (6)]
(NuevaNoEntregada-NoEntregaCte, 54)--[No entrega x tte (1002)] -> [No entrega x cliente (6)]


--Inserto motivos a las transiciones no entrega tte: 
insert into EstadoParadaTransicionMotivo VALUES
(NuevaNoEntregada-NoEntregaTte, 45),--[No entregada (1005)] -> [No entrega x tte(1002)]
(NuevaNoEntregada-NoEntregaTte, 55),--[No entregada (1005)] -> [No entrega x tte(1002)]

(NuevaNoEntregada-NoEntregaTte, 45),--[No entrega x exo (2)] -> [No entrega x tte (1002)]
(NuevaNoEntregada-NoEntregaTte, 55),--[No entrega x exo (2)] -> [No entrega x tte (1002)]

(NuevaNoEntregada-NoEntregaTte, 45),--[No entrega x cte (6)] -> [No entrega x tte (1002)]
(NuevaNoEntregada-NoEntregaTte, 55)--[No entrega x cte (6)] -> [No entrega x tte (1002)]



