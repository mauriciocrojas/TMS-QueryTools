select * from GrupoReporteExterno where IdReporteExterno = 39

select * from ReporteExterno where Descripcion like '%LV%'--39

insert into GrupoReporteExterno
values (5, 39)

select * from GrupoUsuario where Login = 'jaldecoa'--5 y 43

select * from Grupo where IdGrupo in (5, 43)