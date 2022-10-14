
--EXTERNALORDERKEY2 idorder
select EXTERNALORDERKEY2, route, * from [3PL_POOL].dbo.PL_ORDERS where externorderkey = '0050578042'

select * from EXO_VW_Rutas_Cerradas

--update [3PL_POOL].dbo.PL_ORDERS set EXTERNALORDERKEY2 = '1511382' , route = '322839P001', status = 2 where externorderkey = '0050578042'



--Vista EXO_VW_Rutas_Cerradas

WITH O2 (RefOrdenExterna, Cantidad, IdOrdenAnterior, NumeroRemito, IdCliente)
AS
/*(SELECT o.RefOrdenExterna, count(1) AS Cantidad, Min(o.IdOrden) AS IdOrdenAnterior, max(isnull(o.NumeroRemito,'')) AS NumeroRemito, o.IdCliente FROM Orden o
inner join Jornada j WITH (NOLOCK) on j.IdJornada = o.IdJornada and j.FechaCreacion > GETDATE()-365
WHERE o.eliminado = 0 GROUP BY o.RefOrdenExterna, o.IdCliente)*/
(SELECT o.RefOrdenExterna, 
case 
when op.IdTipoOperacion = 2 then --Valida si son operaciones Primero Rutea luego Prepara
  case 
    when sum(case when ote.IdOrden is null then 1 else 0 end) = 0 then 1 
    else 
    sum(case when ote.IdOrden is null then 1 else 0 end) 
  end 
  else
  count(*)
end
AS Cantidad, 
Min(o.IdOrden) AS IdOrdenAnterior, max(isnull(o.NumeroRemito,'')) AS NumeroRemito, o.IdCliente FROM Orden o WITH (NOLOCK) 
left join (select distinct IdOrden from OrdenTraceEstado WITH (NOLOCK) where IdEstadoOrdenDestino in (1023,1024)) ote on o.idorden = ote.IdOrden
inner join Jornada j WITH (NOLOCK) on j.IdJornada = o.IdJornada and j.FechaCreacion > GETDATE()-120
left join Operacion op on o.IdOperacion = op.IdOperacion
WHERE o.eliminado = 0 --and o.RefOrdenExterna = '0390317783'
and o.IdEstadoOrden Not in (4,1004)
GROUP BY o.RefOrdenExterna, o.IdOperacion, o.IdCliente, op.IdTipoOperacion)

SELECT 
	r.IdEstadoRuta, 
	o.Descripcion, 
	p.FechaEntrega, 
	o.IdCliente,
	c.referenciaexterna ClienteReferenciaExterna,
	r.IdJornada, 
	r.Fecha, 
	r.Ruta as Ruta, 
	o.IdOrden, 
	isnull(o.Tipo,'D') Tipo, isnull(o.RefOrdenExterna,' ') RefOrdenExterna , 
	replace(isnull(r.ReferenciaExterna,''),'''','') ReferenciaExterna, 
	o.Latitud, o.Longitud, 
	isnull(replace(o.CalleNormalizada,'''',''),'') CalleNormalizada, 
	CONVERT(nvarchar(10), j.Fecha, 126)  as FechaJornada,
	isnull(o.NumeroPuertaNormalizado,'') NumeroPuertaNormalizado, 
	isnull(replace(o.EntreCalleNormalizada,'''',' '),'') EntreCalleNormalizada, 
	isnull(o.BarrioNormalizado,'') BarrioNormalizado, 
	isnull(o.LocalidadNormalizada,'')LocalidadNormalizada, 
	--isnull((o.PartidoNormalizado,'')PartidoNormalizado, 
	isnull(replace(o.PartidoNormalizado,'''',''),'')PartidoNormalizado,
	isnull(o.ProvinciaNormalizada,'') ProvinciaNormalizada, 
	isnull(o.PaisNormalizado,'') PaisNormalizado,
	SUBSTRING ( isnull(p.codigopostalnormalizado,'')  ,0 , 6)  CPNormalizada,
	O2.Cantidad, 
	O2.IdOrdenAnterior,
	O2.NumeroRemito,
	O.IdTipoOrden,
  case 
    when o.IdOperacion in (1022,1027) then substring(concat(r.IdRuta,'P',RIGHT('00000' + isnull(dbo.Orden_Ruta_Parada(o.IdOrden, r.IdRuta),0),3)),1,10) 
    else concat(RIGHT('000000' + convert(varchar(6),R.IdJornada),6) , 'R' , RIGHT('000' + convert(varchar(6),r.Ruta),3))
  end IdRoute
from ruta r WITH (NOLOCK)
INNER join orden o WITH (NOLOCK) on r.idjornada = o.IdJornada and r.Ruta = o.IdRuta and o.Eliminado = 0
INNER join jornada j WITH (NOLOCK) on j.IdJornada = o.IdJornada --and j.FechaCreacion > GETDATE()-3
INNER join pedido p WITH (NOLOCK) on p.idpedido = o.idpedido and p.FechaCreacion > getdate()-120 and p.Eliminado = 0
INNER join cliente c WITH (NOLOCK) on c.idcliente = o.idcliente
INNER JOIN O2 WITH (NOLOCK) ON O2.RefOrdenExterna = O.RefOrdenExterna and O2.idcliente = o.IdCliente
LEFT JOIN EXO_Ordenes_Confirmadas EOC WITH (NOLOCK) ON EOC.idjornada = R.IdJornada AND EOC.IdRuta = R.Ruta AND EOC.IdOrden = O.idorden
where r.idestadoruta='3'
--AND EOC.IdOrden IS NULL 
--and o.idcliente IN  (1038)
AND o.IdOrden ='1511382'


--select * from EXO_Ordenes_Confirmadas where IdOrden = 1511382
--delete  EXO_Ordenes_Confirmadas where IdOrden = 1511382