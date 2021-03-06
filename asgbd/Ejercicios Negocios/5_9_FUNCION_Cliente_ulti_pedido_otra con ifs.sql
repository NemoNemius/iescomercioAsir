USE negocios2011
GO
alter FUNCTION dbo.ultimopedidoanio2(@ANIO INT) 
RETURNS @T TABLE (IDCLI CHAR(5),NOMCLI VARCHAR(30))
AS
BEGIN
declare @maxdate as date

select @maxdate=MAX(fechapedido)
from ventas.pedidoscabe
where YEAR (fechapedido)=@ANIO
insert into @T 
select distinct c.idcliente, c.NOMBRECIA
from ventas.clientes c join ventas.pedidoscabe pc on c.idcliente = pc.idcliente
where pc.fechapedido = @maxdate
--Elegir una forma
IF @@ROWCOUNT = 0
--insert into @T VALUES (0,'No existe');
if not exists(select * from @T )
	insert into @T VALUES (0,'No existe3');
if (select count(*) from @T ) = 0 -- seria 0 pero he ñadido antes
	insert into @T VALUES (0,'No existe2');
RETURN

END
GO

SELECT * FROM dbo.ultimopedidoanio2(2012)
GO