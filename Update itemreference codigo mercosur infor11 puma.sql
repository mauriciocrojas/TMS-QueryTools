--Puma infor 11 wmwhse2 SCMC1
select * from wmwhse2.sku where ITEMREFERENCE = '640411' and STORERKEY <> 'Samsonite'

--update wmwhse2.sku set ITEMREFERENCE = 640411 where SerialKey in (
302499,
302500,
302501,
302502,
302503,
302504,
302505
) and STORERKEY <> 'Samsonite' and ITEMREFERENCE = ''


--wmwhse2 puma
--wmwhse3 samsonite
--wmwhse1 converse