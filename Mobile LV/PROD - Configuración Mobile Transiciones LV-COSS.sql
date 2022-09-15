--Query Configuración Mobile Transiciones LV-COSS

--insert into EstadoParadaTransicion
select IdEstadoParadaOrigen, IdEstadoParadaDestino, RequiereMotivo, RequiereControl, IdTipoAlarma,
IdEstadoParadaVisita, RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta,
RequiereObservacion, IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion,
ConsiderarConsolidados, CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha,
PermiteParadaEtiqueta, ConsiderarDomicilios, ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca,
CompletarParadaItemCantidad, TemplateNotificacionMovil, IdEstadoGuia, IdEmpresa, IdOperacion, IdTipoOperacion, PermiteTomarFotosRecursos,
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 38

--insert into EstadoParadaTransicion
select IdEstadoParadaOrigen, IdEstadoParadaDestino, RequiereMotivo, RequiereControl, IdTipoAlarma,
IdEstadoParadaVisita, RequiereValidacionCantidades, RequiereFirma, RequiereFoto, IdTipoParada, IdEstadoViaje, IdEncuesta,
RequiereObservacion, IdEstadoOrden, IdEstadoParadaTransicionAlternativo, PermiteModificarUbicacion, PermiteActualizarUbicacion,
ConsiderarConsolidados, CantidadFoto, IdTipoEvento, PermiteRecolectarRecursos, PermiteEntregarRecursos, PermiteEditarFecha,
PermiteParadaEtiqueta, ConsiderarDomicilios, ProximaParada, IdAccionIntent, Contactless, SalidaZona, ValidarGeocerca,
CompletarParadaItemCantidad, TemplateNotificacionMovil, IdEstadoGuia, IdEmpresa, IdOperacion, IdTipoOperacion, PermiteTomarFotosRecursos,
PermiteObservacionesRecursos, PermiteControlDocumentacion, PermiteVisualizarCantidades, ForzarEdicionCantidadesValidadas
from EstadoParadaTransicion where IdEstadoParadaTransicion = 41

--Insert's ejecutados, resta:


select * from EstadoParadaTransicion order by IdEstadoParadaTransicion desc
select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1001 
select * from EstadoParada

--Nuevas transiciones
--Transición 643: Pendiente(1001) → Entregada(3)
--Transición 644: Pendiente(1001) → Entrega Parcial(1000)

--No es nueva, la vamos a dejar exclusiva para la operación LV.
--Transición 631: Pendiente(1001) → No entregada(1005)

--update EstadoParadaTransicion set IdOperacion = 1027 where IdEstadoParadaTransicion = 38
--update EstadoParadaTransicion set IdOperacion = 1027 where IdEstadoParadaTransicion = 41
--update EstadoParadaTransicion set IdOperacion = 1027 where IdEstadoParadaTransicion = 631

--update GrupoEstadoParadaTransicion set IdEstadoParadaTransicion = (643) where IdEstadoParadaTransicion = 38 and IdGrupo in (1, 8, 13, 40, 41)
--update GrupoEstadoParadaTransicion set IdEstadoParadaTransicion = (644) where IdEstadoParadaTransicion = 41 and IdGrupo in (1, 8, 13, 40, 41)

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in (6)

select * from GrupoEstadoParadaTransicion where +IdEstadoParadaTransicion = 38 and IdGrupo in (1, 8, 13, 40, 41)

select * from GrupoEstadoParadaTransicion where IdGrupo in (25)

select * from EstadoParadaTransicion where IdEstadoParadaTransicion in (641,632)
--visitada(5)
select * from Grupo where IdGrupo = 45


--Chequeo:
select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in (38, 41, 631) --1, 25, 40, 41, 45

select * from GrupoEstadoParadaTransicion where IdEstadoParadaTransicion in (643, 644) --1, 8, 13, 40, 41

select * from GrupoEstadoParadaTransicion where IdGrupo in (25)

---


--Insert para agregar las transiciones exclusivas de LV a: conductores, sistemas, y seguimiento LV:
--insert into GrupoEstadoParadaTransicion VALUES
(25, 38),
(25, 41),
(25, 631),
(40, 38),
(40, 41),
(40, 631),
(41, 38),
(41, 41),
(41, 631),
(1, 38),
(1, 41),
(1, 631),
(45, 627),
(45, 628),
(45, 629),
(45, 630)


--Agregar transiciones para Seguimiento LV (45), de no entregada (1005) a los tres no entregada (no entregada exo (2), no entrega cliente (6), no entrega tte (1002), y a pendiente (1001))
select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1005 and (IdEstadoParadaDestino = 2 or IdEstadoParadaDestino = 6 or IdEstadoParadaDestino = 1002 or IdEstadoParadaDestino = 1001)

select * from GrupoEstadoParadaTransicion where (IdEstadoParadaTransicion = 643 or IdEstadoParadaTransicion = 644) and IdGrupo in (1, 8, 13, 40, 41)

select * from Grupo where IdGrupo in (1, 8, 13, 40, 41)


---

select * from TransicionExcluir where IdTransicion in (644, 41) and IdGrupo in (8, 13, 25) 

--select * from TransicionExcluir where IdGrupo in (644, 41) and IdGrupo in (45) 


select * from EstadoParadaTransicion where IdEstadoParadaOrigen = 1000 and IdEstadoParadaDestino = 1001

--insert into TransicionExcluir 
select 25, IdCliente, IdOperacion, IdTipoOperacion, IdTransicion, Entidad from TransicionExcluir where IdTransicion in (41) and IdGrupo in (8)

--update TransicionExcluir set IdTransicion = 644 where IdTransicion = 41 and IdGrupo in (8, 13)

--¿Agregar las viejas transiciones? No
--insert into TransicionExcluir 
select 8, IdCliente, IdOperacion, IdTipoOperacion, 41, Entidad from TransicionExcluir where IdTransicion in (644) and IdGrupo in (8)

--insert into TransicionExcluir 
select 13, IdCliente, IdOperacion, IdTipoOperacion, 41, Entidad from TransicionExcluir where IdTransicion in (644) and IdGrupo in (8)
