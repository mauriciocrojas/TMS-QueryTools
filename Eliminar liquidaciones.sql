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

update Guia set IdEstadoGuia = 2, IdLiquidacion = null where IdGuia in (
1155881,
1159350,
1154464
)

delete Liquidacion where IdLiquidacion in (
540562,
540557,
540560
)

select * from EstadoGuia

select * from EstadoLiquidacion

select * from BitacoraLiquidacion where IdLiquidacion in (
540562,
540557,
540560
)

delete BitacoraLiquidacion where IdLiquidacion in (
540562,
540557,
540560
)

