--960899
--851030


select * from OrdenItem_Dyn where IdOrdenItem in (
select IdOrdenItem from OrdenItem where IdOrden = 1494149
)

update OrdenItem_Dyn set CodigoMercosur= where IdOrdenItem in (
select IdOrdenItem from OrdenItem where IdOrden = 1494149
)