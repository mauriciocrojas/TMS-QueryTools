select * from Deposito where Calle like '%Alberti%' --10010
select * from Deposito where IdDeposito = 10006 --10010


select * from UsuarioDeposito where Login = 'jmedinas'

insert into UsuarioDeposito VALUES
(10010, 'jmedinas', 0)

select * from GrupoDivisionPolitica where Descripcion like '%Zarate%' or ReferenciaExterna like '%Chasco%'
--Agregar Depósito CARRIER(1004, 1007) a Chascomús

--insert into GrupoDivisionPolitica VALUES
('Chascomus', 'Chascomus', 1004, null, 0),
('Chascomus', 'Chascomus', 1007, null, 0)


select * from Tarifa

select * from Orden where IdOrden in ('1347451','1347450','1347449')