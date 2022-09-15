select * from Ruta where IdRuta in (310645, 310646)

select * from rutarecurso where idruta in (310645, 310646)

select * from BitacoraRuta where idruta in (310645, 310646)

--En este caso, la ruta se triplicó, borrar las últimas dos que se generaron

delete Ruta where IdRuta in (310645, 310646)

delete rutarecurso where idruta in (310645, 310646)

delete BitacoraRuta where idruta in (310645, 310646)