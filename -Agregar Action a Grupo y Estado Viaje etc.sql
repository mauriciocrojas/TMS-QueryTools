select * from GrupoAction where Name like '%tramo%'
select * from EstadoViajeAction where ActionName like '%tramo%' 

insert into GrupoAction VALUES(
'Editar_Tramos', 1, 'Fleet_Viajes'
)

insert into EstadoViajeAction (IdEstadoViaje, ActionName, ActionForm)
VALUES (1, 'Editar_Tramos', 'Fleet_Viajes');

insert into EstadoViajeAction (IdEstadoViaje, ActionName, ActionForm)
VALUES (2, 'Editar_Tramos', 'Fleet_Viajes');
