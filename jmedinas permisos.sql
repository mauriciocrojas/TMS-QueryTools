
select status, * from [3PL_POOL].dbo.PL_ORDERS where externorderkey = '1102208078' 

select * from [3PL_POOL].dbo.PL_STATus where IdCustomer = 64 

select * from [3PL_POOL].dbo.PL_LIBERATION_LOG where externorderkey = '1102208078'
--

select * from Action where Descripcion like '%bitacora%' and Form like '%pedido%' -- Agregar_Bitacora_Pedido / Editar_Pedido_Bitacoras

select * from GrupoAction where (Name like '%Agregar_Bitacora_Pedido%' or Name like '%Editar_Pedido_Bitacoras%') and Form like '%Pedido%' and IdGrupo = 5

select * from GrupoUsuario where Login = 'jmedinas' -- 17 Operacion_Responsable (tiene actions) / 34 Operacion_Tarifa_Venta
select * from GrupoUsuario where Login = 'mvgarcia' -- 5 Operacion_Administrativo
select * from GrupoUsuario where Login = 'adavid' -- 11 Operacion_Supervisor, 34 


select * from Grupo where IdGrupo in (17, 34, 5, 11)

insert into GrupoUsuario VALUES
(17, 'mvgarcia')

select * from TipoBitacoraEvento where Descripcion like '%cambio%' -- 28 Cambio Fecha Prevista Entrega -> Pedido

select * from GrupoTipoBitacoraEvento where IdGrupo = 11

--insert into GrupoTipoBitacoraEvento
VALUES(5, 28, 1, 1)

select * from Action where Descripcion like '%coss%'

select * from EstadoViajeTransicion where IdEstadoViajeOrigen = 16 and IdEstadoViajeDestino = 7 --40 de fsc a rendido

select * from GrupoEstadoViajeTransicion where IdEstadoViajeTransicion = 40

select * from EstadoViaje where Descripcion like '%coss%' --16 fsc --15 Activo Sin Coss --7 Rendido