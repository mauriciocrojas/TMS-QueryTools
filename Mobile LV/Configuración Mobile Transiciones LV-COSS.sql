--Query Configuración Mobile Transiciones LV-COSS


--insert into EstadoParadaTransicion
select IdEstadoParadaOrigen, IdEstadoParadaDestino, RequiereMotivo, RequiereControl, IdTipoAlarma,
IdEstadoParadaVisita, RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, null,
RequiereObservacion, IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion,
ConsiderarConsolidados, CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha,
PermiteParadaEtiqueta, ConsiderarDomicilios, ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca,
CompletarParadaItemCantidad, TemplateNotificacionMovil, IdEstadoGuia, IdEmpresa, IdOperacion, IdTipoOperacion, PermiteTomarFotosRecursos,
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 38

--insert into EstadoParadaTransicion
select IdEstadoParadaOrigen, IdEstadoParadaDestino, RequiereMotivo, RequiereControl, IdTipoAlarma,
IdEstadoParadaVisita, RequiereValidacionCantidades, RequiereFirma, 0, IdTipoParada, IdEstadoViaje, null,
RequiereObservacion, IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion,
ConsiderarConsolidados, CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha,
PermiteParadaEtiqueta, ConsiderarDomicilios, ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca,
CompletarParadaItemCantidad, TemplateNotificacionMovil, IdEstadoGuia, IdEmpresa, IdOperacion, IdTipoOperacion, PermiteTomarFotosRecursos,
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 41

select * from EstadoParadaTransicion order by IdEstadoParadaTransicion desc
select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1001 
select * from EstadoParada

--Nuevas transiciones
--Transición 643: Pendiente (1001) → Entregada(3)
--Transición 645: Pendiente(1001) → Entrega Parcial(1000)

--No es nueva, la vamos a dejar exclusiva para la operación LV.
--Transición 631: Pendiente(1001) → No entregada(1005)

--update EstadoParadaTransicion set IdOperacion = 1027 where IdEstadoParadaTransicion = 38
--update EstadoParadaTransicion set IdOperacion = 1027 where IdEstadoParadaTransicion = 41
--update EstadoParadaTransicion set IdOperacion = 1027 where IdEstadoParadaTransicion = 631

--update GrupoEstadoParadaTransicion set IdEstadoParadaTransicion = (643) where IdEstadoParadaTransicion = 38 and IdGrupo in (1, 8, 13, 40, 41)
--update GrupoEstadoParadaTransicion set IdEstadoParadaTransicion = (645) where IdEstadoParadaTransicion = 41 and IdGrupo in (1, 8, 13, 40, 41)

select * from GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 643 or IdEstadoParadaTransicion = 645) and IdGrupo in (1, 8, 13, 40, 41)