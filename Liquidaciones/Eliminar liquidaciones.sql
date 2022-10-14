--Consulto las liquidaciones
select IdEstadoLiquidacion, * from Liquidacion where IdLiquidacion in (
540591,
541559
)

--Consulto las gu�as asociadas a esas liquidaciones
select * from Guia where IdLiquidacion in (
540591,
541559
)

--Consulto propiamente esas gu�as
select * from Guia where IdGuia in (
1198936
)


select * from EstadoGuia
select * from EstadoLiquidacion


--Dejamos la guia en estado liquidable (2), y le sacamos su asociaci�n a su liquidaci�n:
update Guia set IdEstadoGuia = 2, IdLiquidacion = null where IdGuia in (
1198936
)

--Consulto si hay bit�coras de esas liquidaciones
select * from BitacoraLiquidacion where IdLiquidacion in (
540591,
541559
)

--Eliminamos Bitacora de esas liquidaciones:
delete BitacoraLiquidacion where IdLiquidacion in (
540591,
541559
)

--Eliminamos las liquidaciones
delete Liquidacion where IdLiquidacion in (
540591,
541559
)

--Consulto LiquidacionTraceEstado
select * from LiquidacionTraceEstado where IdLiquidacion in (
540591,
541559
)

--Elimino LiquidacionTraceEstado
delete LiquidacionTraceEstado where IdLiquidacion in (
540591,
541559
)

