--Estado Orden
--1000 Preparada
--4 Entregado
--5 NO ENTREGA x CLIENTE
--1002 En Prep Viaje
--3 En Viaje
--6 No Entrega Exo
--1023 No Preparado
--7 cancelada
--1012 Retira cliente


--Estado Pedido
--4 Preparado
--8 Entregado
--5 NO ENTREG. M-CLIENTE
--1005 En Prep Viaje
--1001 En Viaje
--6 No Entrega Exo
--7 Re-Planificado
--No Preparado 1020
--1 Ingresado
--1013 Pendiente de remito
--9 cancelado
--1004 retira cliente

--select * from EstadoPedido
--select * from EstadoOrden

   DECLARE @IdEstadoPedidoNew int = 8 , @IdEstadoOrdenNew int = 4;

   DECLARE @PedidoTurno AS TABLE (IdPedido int, IdOrden int,
   IdEstadoPedidoOld int, idEstadoPedidoNEW int,
   IdEstadoOrdenOld int, idEstadoOrdenNEW int,
   EstadoPedidoOld varchar(50),  EstadoPedido varchar (50),
   EstadoOrdenOld varchar(50),  EstadoOrden varchar (50)); 
  
  --Obtiene los pedidos con cambios de estado por turno pendientes
	 INSERT into @PedidoTurno 
   select p.IdPedido, o.IdOrden, p.IdEstadoPedido, @IdEstadoPedidoNew , o.IdEstadoOrden,@IdEstadoOrdenNew ,
   epo.Descripcion, ep.Descripcion, eoo.Descripcion, eo.Descripcion
   from Pedido p
   inner join Orden o on o.IdPedido = p.IdPedido and o.Eliminado = 0
   inner join EstadoPedido epo on epo.IdEstadoPedido = p.IdEstadoPedido
   inner join EstadoOrden eoo on eoo.IdEstadoOrden = o.IdEstadoOrden
   inner join EstadoPedido ep on ep.IdEstadoPedido = @IdEstadoPedidoNew
   inner join EstadoOrden eo on eo.IdEstadoOrden = @IdEstadoOrdenNew
   where o.IdOrden in (1065826)
		    
 ---Bloque de pedido---
        --Carga registro cambio de estado en bitácora
        insert into BitacoraPedido (IdPedido,bitacora,fecha,login) 
        (
        select IdPedido,concat('PRC: CAMBIO DE ESTADO: Estado anterior: ',EstadoPedidoOld,' - Estado nuevo: ',EstadoPedido), DATEADD(hh,3,getdate()),'system' from @PedidoTurno 
        )
        
    
    --Carga registro cambio de estado en TraceEstado para actualizacion de destado en portal
        insert into PedidoTraceEstado (IdPedido, IdEstadoPedidoOrigen, IdEstadoPedidoDestino ,login,fecha, FechaCreacion, Observaciones ) 
        (
        select IdPedido, IdEstadoPedidoOld, IdEstadoPedidoNew, 'system', DATEADD(hh,3,getdate()), DATEADD(hh,3,getdate()), 'Ajuste de estado por procedure' from @PedidoTurno
        )
    
  --Marca como eliminado turnos que se generan duplicados
  update Pedido set IdEstadoPedido = @IdEstadoPedidoNew
  where idpedido in (select IdPedido from @PedidoTurno)
    --------
    
 
   ---- Parte orden ----
     --Carga registro cambio de estado en bitácora
        insert into BitacoraOrden (IdOrden,bitacora,fecha,login) 
        (
        select IdOrden,concat('PRC: CAMBIO DE ESTADO: Estado anterior: ',EstadoPedidoOld,' - Estado nuevo: ',EstadoPedido), DATEADD(hh,3,getdate()),'system' from @PedidoTurno 
        )
        
    
    --Carga registro cambio de estado en TraceEstado para actualizacion de destado en portal
        insert into OrdenTraceEstado (IdOrden, IdEstadoOrdenOrigen, IdEstadoOrdenDestino ,login,fecha, FechaCreacion, Observaciones ) 
        (
        select IdOrden, IdEstadoOrdenOld, IdEstadoOrdenNew, 'system', DATEADD(hh,3,getdate()), DATEADD(hh,3,getdate()), 'Ajuste de estado por procedure' from @PedidoTurno
        )
    
  --Marca como eliminado turnos que se generan duplicados
  update Orden set IdEstadoOrden = @IdEstadoOrdenNew
  where idOrden in (select IdOrden from @PedidoTurno)

  update Pedido set IdEstadoPedido = 1 where ReferenciaExterna = '0710767691'
-------


  --agregado
  --select IdEstadoPedido, * from Pedido where ReferenciaExterna = '0710767691'





/*
MERGE [3pl_pool].dbo.PL_ORDERSHISTORY D
	USING (
    select p.ReferenciaExterna, bp.Fecha  from BitacoraPedido  bp
    inner join Pedido p on p.IdPedido = bp.IdPedido
    where bp.IdPedido in (333258,333259,333260,333261,335409,335410,335411,329564,
                                                    329565,329566,329568,329569,329570,329572,329573,329574)
                                                    and substring(bp.Bitacora,1,300) like '%Estado nuevo: ENTREGADO A EXPRESO'
	) O
	ON D.ORDERKEY = O.ReferenciaExterna and d.idstatus = 11
	WHEN MATCHED THEN
	UPDATE 
	SET 
	D.adddate = convert(date,O.Fecha);
  */
  
  
  