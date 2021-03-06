USE negocios2011
GO
create FUNCTION dbo.ultimopedidoanio2(@ANIO INT) 
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

RETURN

END
GO

SELECT * FROM dbo.ultimopedidoanio2(2012)
GO