
select * from Viaje where IdViaje = 218816

--Cantidad de pallets a rendir de viajes rendidos o finalizados
select IdViaje, Cantidad from UbicacionRecurso where IdRecurso = 760 and IdViaje in (
select IdViaje from Viaje where IdDepositoSalida = 10006 and (Estado = 'Rendido' or Estado = 'Finalizado' or Estado = 'Finalizado sin coss')
) and Cantidad <> 0


select sum(Cantidad) from UbicacionRecurso where IdRecurso = 760 and IdViaje in (
select IdViaje from Viaje where IdDepositoSalida = 10006 and (Estado = 'Rendido' or Estado = 'Finalizado' or Estado = 'Finalizado sin coss')
) and Cantidad <> 0

--con Join
select v.IdViaje, ur.Cantidad, v.Estado from UbicacionRecurso ur inner join Viaje v on ur.IdViaje = v.IdViaje
where ur.IdRecurso = 760 and v.IdDepositoSalida = 10006 and (v.Estado = 'Rendido' or v.Estado = 'Finalizado' or v.Estado = 'Finalizado sin coss') and ur.Cantidad <> 0

select sum(ur.Cantidad) from UbicacionRecurso ur inner join Viaje v on ur.IdViaje = v.IdViaje
where ur.IdRecurso = 760 and v.IdDepositoSalida = 10006 and (v.Estado = 'Rendido' or v.Estado = 'Finalizado' or v.Estado = 'Finalizado sin coss') and ur.Cantidad <> 0


--Cantidad de pallets totales entre el depósito y los viajes (indiferentemente su estado)
select sum(Cantidad) from UbicacionRecurso where IdRecurso = 760 and (IdDeposito=10006 or IdViaje in
(select IdViaje from Viaje where IdDepositoSalida = 10006)
)and Cantidad <> 0

--Cantidad de pallets totales en viajes (indiferentemente su estado)
select sum(cantidad) from UbicacionRecurso where IdRecurso = 760 and IdViaje in  (
select IdViaje from Viaje where IdDepositoSalida = 10006 
)and Cantidad <> 0

--Cantidad de pallets en depósito
select sum(cantidad) from UbicacionRecurso where IdRecurso = 760 and IdDeposito = 10006


select sum(Cantidad) from UbicacionRecurso where IdRecurso = 760 and (IdDeposito=10006 or IdViaje in
(select IdViaje from Viaje where IdDepositoSalida = 10006))



select IdDepositoSalida, * from Viaje where IdViaje = 1224

select * from Deposito

select * from Recurso where Descripcion like '%pallet%' --760
