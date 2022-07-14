--Bateria de control loquidaciones
--Completo
exec PRC_Actualiza_Vigencia_Tarifa 
exec EXO_CrearItemSapNuevosExoItem 
exec EXO_PRC_ConceptosCompletos 
--Parcial
exec EXO_PRC_Liquidacion_Venta 
select * from EXO_VWLIQUIDACION_VENTA

exec Prc_PreCarga_Liquidaciones_Venta 

--Modulo de análisis
--------------------
select * from EXO_TB_CONTROL_LIQUIDACION_VENTA where IdLiquidacion = '539586'


select * from EXO_TB_Reporte_Control_Liquidacion_Venta with(nolock) where Liquidacion = '539586'


--Control tarifas en firma 2
Select stg_t.id,
t.ReferenciaExterna, concat(year(t.VigenciaDesde), RIGHT('00' + Ltrim(Rtrim(Month(t.VigenciaDesde))),2),RIGHT('00' + Ltrim(Rtrim(Day(t.VigenciaDesde))),2)),
concat('update stg_tarifas set fechaproceso = null where id = ',stg_t.id) Updated
from tarifa t
inner join LNK_A_ERP_EXOLOG200.ERP.dbo.stg_tarifas stg_t on stg_t.item = t.ReferenciaExterna 
            and concat(year(t.VigenciaDesde), RIGHT('00' + Ltrim(Rtrim(Month(t.VigenciaDesde))),2),RIGHT('00' + Ltrim(Rtrim(Day(t.VigenciaDesde))),2)) = stg_t.FechaVigenciaDesde
where t.idestadotarifa = 13 and t.eliminado = 0  


select * from CategoriaViaje

--Control tarifas en firma 2
Select max(stg_t.id) id,
t.ReferenciaExterna, concat(year(t.VigenciaDesde), RIGHT('00' + Ltrim(Rtrim(Month(t.VigenciaDesde))),2),RIGHT('00' + Ltrim(Rtrim(Day(t.VigenciaDesde))),2)),
concat('update stg_tarifas set fechaproceso = null where id = ',max(stg_t.id)) Updated
from tarifa t
inner join LNK_A_ERP_EXOLOG200.ERP.dbo.stg_tarifas stg_t on stg_t.item = t.ReferenciaExterna 
            and concat(year(t.VigenciaDesde), RIGHT('00' + Ltrim(Rtrim(Month(t.VigenciaDesde))),2),RIGHT('00' + Ltrim(Rtrim(Day(t.VigenciaDesde))),2)) = stg_t.FechaVigenciaDesde
where t.idestadotarifa = 13 and t.eliminado = 0  
group by t.ReferenciaExterna, concat(year(t.VigenciaDesde), RIGHT('00' + Ltrim(Rtrim(Month(t.VigenciaDesde))),2),RIGHT('00' + Ltrim(Rtrim(Day(t.VigenciaDesde))),2))

--Actualizar guia y estado liquidacion
--2(liquidable)guia  --1(inicial)liquidacion (estados para poder retarifar y trabajar sobre la liquidacion)
--
--update Guia set IdEstadoGuia = 4 where IdLiquidacion in ('539486', '539487') 
--update Liquidacion set IdEstadoLiquidacion = 3 where IdLiquidacion in ('539486', '539487')

select * from EXO_TB_CONTROL_LIQUIDACION_VENTA where IdLiquidacion in ('539472', '539586')


--select * from EXO_TB_Reporte_Control_Liquidacion_Venta where Liquidacion in ('539486', '539487')

select * from Guia where IdLiquidacion in ('539486', '539487') --4
