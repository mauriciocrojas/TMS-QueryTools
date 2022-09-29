select ID_DELIVERYADDRESS1, ID_DELIVERYADDRESS2, * from [3PL_POOL].dbo.PL_ORDERS where EXTERNORDERKEY = '0081143192'

select * from Viaje

select * from EXO_VW_Interior_con_Expreso where (Grupo like '%puma%' or Grupo like '%ph%' or N_Cliente like '%ph%' or N_Cliente like '%austr%') and Provincia = 'Mendoza'