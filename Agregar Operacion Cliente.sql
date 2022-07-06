select * from UsuarioCliente where Login in ('paguero', 'jaldecoa')
select * from UsuarioDeposito where Login in ('paguero', 'jaldecoa')
select * from UsuarioOperacion where Login in ('paguero', 'jaldecoa', 'ngonzalez')

--insert into UsuarioOperacion
select IdOperacion, 'jaldecoa', 0 from UsuarioOperacion where Login = 'paguero' and IdOperacion = 1027