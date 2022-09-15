
--PROD
--Viaje 279794
--ReferenciaExterna 0050489772
--IdParada 1836431

select * from Parada where IdViaje = 279794

select * from ParadaArchivo where IdParada = 1836431

select * from Parametro where Clave like '%PermiteFotosGaleria%'

select * from Parametro where Clave like '%Archivo%'

select * from Parametro where Clave like '%NombreArchivoParadaDescarga%'
