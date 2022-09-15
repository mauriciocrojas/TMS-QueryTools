select * from Liquidacion where IdLiquidacion in (
540562,
540557,
540560
)

select * from Guia where IdLiquidacion in (
540562,
540557,
540560
)

select * from Guia where IdGuia in (
1155881,
1159350,
1154464
)

select * from EstadoGuia

select * from EstadoLiquidacion


--Dejamos la guia en estado liquidable (2), y le sacamos su asociación a su liquidación:
update Guia set IdEstadoGuia = 2, IdLiquidacion = null where IdGuia in (
1155881,
1159350,
1154464
)

--Eliminamos las liquidaciones
delete Liquidacion where IdLiquidacion in (
540562,
540557,
540560
)

--Eliminamos Bitacora de esas liquidaciones:
delete BitacoraLiquidacion where IdLiquidacion in (
540562,
540557,
540560
)

select * from BitacoraLiquidacion where IdLiquidacion in (
540562,
540557,
540560
)

