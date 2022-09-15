
--QA
--Viaje 259302
--ReferenciaExterna 2806202201
--IdParada 1711821

select * from Parada where IdViaje = 259302

select * from ParadaArchivo where IdParada = 1711821

select * from Parametro where Clave like '%PermiteFotosGaleria%'

select * from Parametro where Clave like '%Archivo%'

select * from Parametro where Descripcion like '%control de carga%'
 