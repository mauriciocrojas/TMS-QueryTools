--Estado Pedido:
--1 Ingresado
--4 Preparado
--5 No entrega M. Cliente
--6 No entrega M. Exo
--7 Replanificado
--8 Entregado
--9 Cancelado
--1001 En Viaje
--1004 Retira cliente
--1005 En Prep Viaje
--1013 Pendiente de remito
--1014 Entregado a expreso
--1020 No Preparado 
--1021 Retirado



--Estado Orden:
--1 Ingresada
--3 En Viaje
--4 Entregada
--5 No entrega M. Cliente
--6 No entrega M. Exo
--7 Cancelada
--1000 Preparada
--1002 En Prep Viaje
--1012 Retira cliente
--1014 Replanificada
--1018 Aprobada
--1020 Entregada a expreso
--1023 No preparada
--1025 Retirado


--select * from EstadoPedido
--select * from EstadoOrden


   DECLARE @IdEstadoPedidoNew int = 1, @IdEstadoOrdenNew int = 1012;

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
   where o.IdOrden in (1382305)
		    
 
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
  
  
  