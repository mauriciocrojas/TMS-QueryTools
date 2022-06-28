--1 3 costo es un tipo , 2 4 otra venta
SELECT
CASE
WHEN CONVERT(varchar(1000),Observaciones) like 'Error en el envío de Liquidación de venta a SAP: La posición%' THEN 'Error'
WHEN idtipoliquidacion IN (1,3) THEN 'Costo'
ELSE 'Venta' END Tipo,
count(1) Cantidad
FROM Liquidacion
WHERE IdEstadoLiquidacion = 3
GROUP BY CASE WHEN CONVERT(varchar(1000),Observaciones) like 'Error en el envío de Liquidación de venta a SAP: La posición%' THEN 'Error' WHEN idtipoliquidacion IN (1,3) THEN 'Costo' ELSE 'Venta' END

 

--Bateria de control loquidaciones
--Completo
exec PRC_Actualiza_Vigencia_Tarifa
exec EXO_CrearItemSapNuevosExoItem
exec EXO_PRC_ConceptosCompletos
--Parcial
exec EXO_PRC_Liquidacion_Venta
select * from EXO_VWLIQUIDACION_VENTA
select * from LA_LIQUIDACION_VENTA_ADICIONAL

select * from EstadoLiquidacion
select * from Liquidacion where IdLiquidacion = 538502
select * from EXO_TB_CONTROL_LIQUIDACION_VENTA where IdLiquidacion = 538502
select distinct item, * from EXO_TB_CONTROL_LIQUIDACION_VENTA where IdLiquidacion = 538502
--update Liquidacion set IdEstadoLiquidacion = 4, Observaciones = '2000086627' where IdLiquidacion = 538438