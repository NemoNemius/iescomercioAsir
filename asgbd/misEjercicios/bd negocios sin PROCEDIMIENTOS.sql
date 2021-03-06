USE [negocios2011]
GO
/****** Object:  User [Prueba]    Script Date: 01/29/2014 21:58:13 ******/
CREATE USER [Prueba] FOR LOGIN [01-CC\Vespertino] WITH DEFAULT_SCHEMA=[db_datareader]
GO
/****** Object:  User [NT AUTHORITY\SYSTEM]    Script Date: 01/29/2014 21:58:13 ******/
CREATE USER [NT AUTHORITY\SYSTEM] FOR LOGIN [NT AUTHORITY\SYSTEM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [C6PROF\ProfNocturno]    Script Date: 01/29/2014 21:58:13 ******/
CREATE USER [C6PROF\ProfNocturno] FOR LOGIN [C6PROF\ProfNocturno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [C6PROF\ProfDiurno]    Script Date: 01/29/2014 21:58:13 ******/
CREATE USER [C6PROF\ProfDiurno] FOR LOGIN [C6PROF\ProfDiurno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [VENTAS]    Script Date: 01/29/2014 21:58:13 ******/
CREATE SCHEMA [VENTAS] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [RRHH]    Script Date: 01/29/2014 21:58:13 ******/
CREATE SCHEMA [RRHH] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [COMPRAS]    Script Date: 01/29/2014 21:58:13 ******/
CREATE SCHEMA [COMPRAS] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categorias](
	[idcategoria] [int] NOT NULL,
	[nombre_categoria] [varchar](40) NOT NULL,
	[descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (3, N'Confections', N'Desserts, candies, and sweet breads')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (4, N'Dairy Products', N'Cheeses')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (6, N'Meat/Poultry', N'Prepared meats')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (7, N'Produce', N'Dried fruit and bean curd')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (8, N'Seafood', N'Seaweed and fish')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (17, N'Lácteos', N'Productos derivados de la leche')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (25, N'Verduras', N'Productos provenientes del campo')
INSERT [dbo].[categorias] ([idcategoria], [nombre_categoria], [descripcion]) VALUES (46, N'Cárnicos', N'Productos derivados de la carne')
/****** Object:  Table [dbo].[cargos]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cargos](
	[idcargo] [int] NOT NULL,
	[descargo] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idcargo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cargos] ([idcargo], [descargo]) VALUES (16, N'Auxiliar adm. RRHH')
INSERT [dbo].[cargos] ([idcargo], [descargo]) VALUES (49, N'Almanero, técnico en almacen')
INSERT [dbo].[cargos] ([idcargo], [descargo]) VALUES (91, N'Director de ventas, encargado')
/****** Object:  Table [dbo].[distritos]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[distritos](
	[iddistrito] [int] NOT NULL,
	[nomdistrito] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iddistrito] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[distritos] ([iddistrito], [nomdistrito]) VALUES (2, N'Polígono Cantabria')
INSERT [dbo].[distritos] ([iddistrito], [nomdistrito]) VALUES (12, N'La Cava')
INSERT [dbo].[distritos] ([iddistrito], [nomdistrito]) VALUES (34, N'Valdegastea')
/****** Object:  Table [VENTAS].[paises]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [VENTAS].[paises](
	[idpais] [char](3) NOT NULL,
	[NOMBREPAIS] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpais] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [VENTAS].[paises] ([idpais], [NOMBREPAIS]) VALUES (N'99 ', N'ESPAÑA')
INSERT [VENTAS].[paises] ([idpais], [NOMBREPAIS]) VALUES (N'esp', N'España')
INSERT [VENTAS].[paises] ([idpais], [NOMBREPAIS]) VALUES (N'fra', N'Francia')
INSERT [VENTAS].[paises] ([idpais], [NOMBREPAIS]) VALUES (N'ing', N'Inglaterra')
INSERT [VENTAS].[paises] ([idpais], [NOMBREPAIS]) VALUES (N'usa', N'Estados Unidos')
/****** Object:  Table [COMPRAS].[proveedores]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [COMPRAS].[proveedores](
	[idproveedor] [int] NOT NULL,
	[nomproveedor] [varchar](80) NOT NULL,
	[dirproveedor] [varchar](100) NOT NULL,
	[nomcontacto] [varchar](80) NOT NULL,
	[cargocontacto] [varchar](50) NOT NULL,
	[idpais] [char](3) NOT NULL,
	[fonoproveedor] [varchar](15) NOT NULL,
	[faxproveedor] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idproveedor] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [COMPRAS].[proveedores] ([idproveedor], [nomproveedor], [dirproveedor], [nomcontacto], [cargocontacto], [idpais], [fonoproveedor], [faxproveedor]) VALUES (26, N'Logistica Faxrapid, S.C', N'C/ General Ugarte, nº 14', N'Maria', N'Auxiliar administrativo', N'esp', N'654123987', N'912456987')
INSERT [COMPRAS].[proveedores] ([idproveedor], [nomproveedor], [dirproveedor], [nomcontacto], [cargocontacto], [idpais], [fonoproveedor], [faxproveedor]) VALUES (67, N'Mensajería Serur, S.A', N'Avda. de la Paz, nº 12', N'Tomas', N'Director de ventas', N'usa', N'621458741', N'941258545')
INSERT [COMPRAS].[proveedores] ([idproveedor], [nomproveedor], [dirproveedor], [nomcontacto], [cargocontacto], [idpais], [fonoproveedor], [faxproveedor]) VALUES (97, N'Distribuciones Garcia, SL.', N'C/ Santa Ana, nº 11', N'Enrique', N'Almacenero', N'ing', N'698741230', N'948751235')
/****** Object:  Table [RRHH].[empleados]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [RRHH].[empleados](
	[idempleado] [int] NOT NULL,
	[nomempleado] [varchar](50) NOT NULL,
	[apeempleado] [varchar](50) NOT NULL,
	[fecnac] [datetime] NOT NULL,
	[dirempleado] [varchar](100) NOT NULL,
	[iddistrito] [int] NOT NULL,
	[fonoempleado] [varchar](15) NULL,
	[idcargo] [int] NOT NULL,
	[feccontrata] [datetime] NOT NULL,
	[fotoempleado] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[idempleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [RRHH].[empleados] ([idempleado], [nomempleado], [apeempleado], [fecnac], [dirempleado], [iddistrito], [fonoempleado], [idcargo], [feccontrata], [fotoempleado]) VALUES (1, N'Marcos', N'Gutierrez', CAST(0x00006F1C00000000 AS DateTime), N'C/ Tricio, nº 12', 34, N'654120754', 49, CAST(0x00009CC400000000 AS DateTime), NULL)
INSERT [RRHH].[empleados] ([idempleado], [nomempleado], [apeempleado], [fecnac], [dirempleado], [iddistrito], [fonoempleado], [idcargo], [feccontrata], [fotoempleado]) VALUES (2, N'Alfredo', N'Martín', CAST(0x00009CC400000000 AS DateTime), N'Avda. Colon, nº 18', 12, N'602102302', 91, CAST(0x00009CC400000000 AS DateTime), NULL)
INSERT [RRHH].[empleados] ([idempleado], [nomempleado], [apeempleado], [fecnac], [dirempleado], [iddistrito], [fonoempleado], [idcargo], [feccontrata], [fotoempleado]) VALUES (3, N'Pablo', N'Gomez', CAST(0x00009CC400000000 AS DateTime), N'C/ General Ugarte, nº 67', 12, N'658951412', 16, CAST(0x00009CC400000000 AS DateTime), NULL)
/****** Object:  Table [VENTAS].[clientes]    Script Date: 01/29/2014 21:58:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [VENTAS].[clientes](
	[idcliente] [char](5) NOT NULL,
	[NOMBRECIA] [varchar](40) NOT NULL,
	[DIRECCION] [varchar](80) NOT NULL,
	[idpais] [char](3) NOT NULL,
	[fonocliente] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [VENTAS].[clientes] ([idcliente], [NOMBRECIA], [DIRECCION], [idpais], [fonocliente]) VALUES (N'HCKPK', N'Fernando', N'C/ Sepulveda, nº 17', N'esp', N'698753120')
INSERT [VENTAS].[clientes] ([idcliente], [NOMBRECIA], [DIRECCION], [idpais], [fonocliente]) VALUES (N'HGWIK', N'Bartolomé', N'C/ Alcalá, nº 137', N'usa', N'610214589')
INSERT [VENTAS].[clientes] ([idcliente], [NOMBRECIA], [DIRECCION], [idpais], [fonocliente]) VALUES (N'NCBCK', N'Isabel', N'C/ Marques de Murrieta, nº 43', N'esp', N'654123012')
/****** Object:  UserDefinedFunction [dbo].[CLIENTES]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CLIENTES]()
RETURNS TABLE
AS
RETURN (SELECT IDCLIENTE AS 'CODIGO',
NOMBRECIA AS 'CLIENTE',
DIRECCION,
NOMBREPAIS AS 'PAIS'
FROM VENTAS.CLIENTES C JOIN VENTAS.PAISES P
ON C.IDPAIS = P.IDPAIS)
GO
/****** Object:  Table [VENTAS].[pedidoscabe]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [VENTAS].[pedidoscabe](
	[idpedido] [int] NOT NULL,
	[idcliente] [char](5) NOT NULL,
	[idempleado] [int] NOT NULL,
	[fechapedido] [datetime] NOT NULL,
	[fechaentrega] [datetime] NOT NULL,
	[fechaenvio] [datetime] NOT NULL,
	[enviopedido] [char](1) NOT NULL,
	[destinatario] [varchar](60) NOT NULL,
	[dirdestinatario] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idpedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [VENTAS].[pedidoscabe] ([idpedido], [idcliente], [idempleado], [fechapedido], [fechaentrega], [fechaenvio], [enviopedido], [destinatario], [dirdestinatario]) VALUES (1, N'NCBCK', 1, CAST(0x0000A0C800000000 AS DateTime), CAST(0x0000A21600000000 AS DateTime), CAST(0x0000A1F400000000 AS DateTime), N'N', N'Isabel', N'C/ Marqués de Murrieta, nº 43')
INSERT [VENTAS].[pedidoscabe] ([idpedido], [idcliente], [idempleado], [fechapedido], [fechaentrega], [fechaenvio], [enviopedido], [destinatario], [dirdestinatario]) VALUES (2, N'NCBCK', 2, CAST(0x0000A25400000000 AS DateTime), CAST(0x0000A2A900000000 AS DateTime), CAST(0x0000A29200000000 AS DateTime), N'S', N'Isabel', N'C/ Marqués de Murrieta, nº 43')
INSERT [VENTAS].[pedidoscabe] ([idpedido], [idcliente], [idempleado], [fechapedido], [fechaentrega], [fechaenvio], [enviopedido], [destinatario], [dirdestinatario]) VALUES (3, N'HGWIK', 2, CAST(0x0000A1D000000000 AS DateTime), CAST(0x0000A1F900000000 AS DateTime), CAST(0x0000A1DE00000000 AS DateTime), N'S', N'Bartolomé', N'C/ Alcalá, nº 137')
INSERT [VENTAS].[pedidoscabe] ([idpedido], [idcliente], [idempleado], [fechapedido], [fechaentrega], [fechaenvio], [enviopedido], [destinatario], [dirdestinatario]) VALUES (4, N'HGWIK', 2, CAST(0x0000A1D000000000 AS DateTime), CAST(0x0000A1F900000000 AS DateTime), CAST(0x0000A1DE00000000 AS DateTime), N'S', N'Bartolomé', N'C/ Alcalá, nº 137')
/****** Object:  Table [COMPRAS].[productos]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [COMPRAS].[productos](
	[idproducto] [int] NOT NULL,
	[NOMBREPRODUCTO] [varchar](80) NOT NULL,
	[idproveedor] [int] NOT NULL,
	[idcategoria] [int] NOT NULL,
	[cantxunidad] [varchar](50) NOT NULL,
	[preciounidad] [decimal](10, 2) NOT NULL,
	[unidadesenexistencia] [smallint] NOT NULL,
	[unienpedido] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idproducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [COMPRAS].[productos] ([idproducto], [NOMBREPRODUCTO], [idproveedor], [idcategoria], [cantxunidad], [preciounidad], [unidadesenexistencia], [unienpedido]) VALUES (1, N'leche', 67, 17, N'12', CAST(97.20 AS Decimal(10, 2)), 59, 26)
INSERT [COMPRAS].[productos] ([idproducto], [NOMBREPRODUCTO], [idproveedor], [idcategoria], [cantxunidad], [preciounidad], [unidadesenexistencia], [unienpedido]) VALUES (2, N'lechuga', 67, 25, N'15', CAST(23.45 AS Decimal(10, 2)), 77, 17)
INSERT [COMPRAS].[productos] ([idproducto], [NOMBREPRODUCTO], [idproveedor], [idcategoria], [cantxunidad], [preciounidad], [unidadesenexistencia], [unienpedido]) VALUES (3, N'pollo', 26, 46, N'1', CAST(5.72 AS Decimal(10, 2)), 78, 15)
/****** Object:  UserDefinedFunction [dbo].[PRECIOPROMEDIO]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[PRECIOPROMEDIO]() RETURNS DECIMAL(10,2)
AS
BEGIN
DECLARE @PROM DECIMAL(10,2)
SELECT @PROM=AVG(PRECIOUNIDAD)
FROM COMPRAS.PRODUCTOS
RETURN @PROM
END
GO
/****** Object:  UserDefinedFunction [dbo].[PEDIDOSEMPLEADO]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[PEDIDOSEMPLEADO](@ID INT) RETURNS int
AS
BEGIN
DECLARE @Q int=0
SELECT @Q=COUNT(*)
FROM VENTAS.PEDIDOSCABE
WHERE YEAR(FECHAPEDIDO)=YEAR(GETDATE())-1 AND IDEMPLEADO=@ID
IF @Q IS NULL
SET @Q=0
RETURN @Q
END
GO
/****** Object:  Table [VENTAS].[pedidosdeta]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VENTAS].[pedidosdeta](
	[idpedido] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[preciounidad] [decimal](10, 2) NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[descuento] [decimal](10, 2) NOT NULL
) ON [PRIMARY]
GO
INSERT [VENTAS].[pedidosdeta] ([idpedido], [idproducto], [preciounidad], [cantidad], [descuento]) VALUES (1, 1, CAST(10.00 AS Decimal(10, 2)), 20, CAST(0.00 AS Decimal(10, 2)))
INSERT [VENTAS].[pedidosdeta] ([idpedido], [idproducto], [preciounidad], [cantidad], [descuento]) VALUES (1, 2, CAST(20.00 AS Decimal(10, 2)), 10, CAST(0.00 AS Decimal(10, 2)))
/****** Object:  UserDefinedFunction [dbo].[ULTIMOMUMEROPEDIDO]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ULTIMOMUMEROPEDIDO](@ID INT) RETURNS INT
AS
BEGIN
DECLARE @UP DECIMAL=0
SELECT @UP=MAX(idpedido)
FROM RRHH.EMPLEADOS E JOIN VENTAS.PEDIDOSCABE P
ON E.IDEMPLEADO = P.IDEMPLEADO
WHERE E.IDEMPLEADO=149
GROUP BY E.IDEMPLEADO
RETURN @UP
END
GO
/****** Object:  UserDefinedFunction [dbo].[productos_empleado]    Script Date: 01/29/2014 21:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[productos_empleado](@emp INT)
RETURNS TABLE
AS
RETURN (SELECT TOP 10 P.IDPRODUCTO AS 'ID_PROD',
NOMBREPRODUCTO,
CANTIDAD
FROM VENTAS.PEDIDOSCABE PC
JOIN VENTAS.PEDIDOSDETA PD ON PC.IDPEDIDO=PD.IDPEDIDO
JOIN COMPRAS.PRODUCTOS P ON PD.IDPRODUCTO=P.IDPRODUCTO
JOIN RRHH.EMPLEADOS EM ON PC.IDEMPLEADO=EM.IDEMPLEADO
WHERE PC.IDEMPLEADO=@EMP)
GO
/****** Object:  ForeignKey [FK_idpais_prov]    Script Date: 01/29/2014 21:58:14 ******/
ALTER TABLE [COMPRAS].[proveedores]  WITH CHECK ADD  CONSTRAINT [FK_idpais_prov] FOREIGN KEY([idpais])
REFERENCES [VENTAS].[paises] ([idpais])
GO
ALTER TABLE [COMPRAS].[proveedores] CHECK CONSTRAINT [FK_idpais_prov]
GO
/****** Object:  ForeignKey [FK_idprov_prod]    Script Date: 01/29/2014 21:58:14 ******/
ALTER TABLE [COMPRAS].[proveedores]  WITH CHECK ADD  CONSTRAINT [FK_idprov_prod] FOREIGN KEY([idproveedor])
REFERENCES [COMPRAS].[proveedores] ([idproveedor])
GO
ALTER TABLE [COMPRAS].[proveedores] CHECK CONSTRAINT [FK_idprov_prod]
GO
/****** Object:  ForeignKey [FK_idcargo_empleados]    Script Date: 01/29/2014 21:58:14 ******/
ALTER TABLE [RRHH].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_idcargo_empleados] FOREIGN KEY([idcargo])
REFERENCES [dbo].[cargos] ([idcargo])
GO
ALTER TABLE [RRHH].[empleados] CHECK CONSTRAINT [FK_idcargo_empleados]
GO
/****** Object:  ForeignKey [FK_iddis_empleados]    Script Date: 01/29/2014 21:58:14 ******/
ALTER TABLE [RRHH].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_iddis_empleados] FOREIGN KEY([iddistrito])
REFERENCES [dbo].[distritos] ([iddistrito])
GO
ALTER TABLE [RRHH].[empleados] CHECK CONSTRAINT [FK_iddis_empleados]
GO
/****** Object:  ForeignKey [FK_idpais]    Script Date: 01/29/2014 21:58:14 ******/
ALTER TABLE [VENTAS].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_idpais] FOREIGN KEY([idpais])
REFERENCES [VENTAS].[paises] ([idpais])
GO
ALTER TABLE [VENTAS].[clientes] CHECK CONSTRAINT [FK_idpais]
GO
/****** Object:  ForeignKey [FK_idcargo_pedcab]    Script Date: 01/29/2014 21:58:15 ******/
ALTER TABLE [VENTAS].[pedidoscabe]  WITH CHECK ADD  CONSTRAINT [FK_idcargo_pedcab] FOREIGN KEY([idcliente])
REFERENCES [VENTAS].[clientes] ([idcliente])
GO
ALTER TABLE [VENTAS].[pedidoscabe] CHECK CONSTRAINT [FK_idcargo_pedcab]
GO
/****** Object:  ForeignKey [FK_idempleado_pedcab]    Script Date: 01/29/2014 21:58:15 ******/
ALTER TABLE [VENTAS].[pedidoscabe]  WITH CHECK ADD  CONSTRAINT [FK_idempleado_pedcab] FOREIGN KEY([idempleado])
REFERENCES [RRHH].[empleados] ([idempleado])
ON UPDATE CASCADE
GO
ALTER TABLE [VENTAS].[pedidoscabe] CHECK CONSTRAINT [FK_idempleado_pedcab]
GO
/****** Object:  ForeignKey [FK_idcat_prod]    Script Date: 01/29/2014 21:58:15 ******/
ALTER TABLE [COMPRAS].[productos]  WITH CHECK ADD  CONSTRAINT [FK_idcat_prod] FOREIGN KEY([idcategoria])
REFERENCES [dbo].[categorias] ([idcategoria])
GO
ALTER TABLE [COMPRAS].[productos] CHECK CONSTRAINT [FK_idcat_prod]
GO
/****** Object:  ForeignKey [FK_idprovee_prod]    Script Date: 01/29/2014 21:58:15 ******/
ALTER TABLE [COMPRAS].[productos]  WITH CHECK ADD  CONSTRAINT [FK_idprovee_prod] FOREIGN KEY([idproveedor])
REFERENCES [COMPRAS].[proveedores] ([idproveedor])
GO
ALTER TABLE [COMPRAS].[productos] CHECK CONSTRAINT [FK_idprovee_prod]
GO
/****** Object:  ForeignKey [FK_idpedido_pedidosdeta]    Script Date: 01/29/2014 21:58:15 ******/
ALTER TABLE [VENTAS].[pedidosdeta]  WITH CHECK ADD  CONSTRAINT [FK_idpedido_pedidosdeta] FOREIGN KEY([idpedido])
REFERENCES [VENTAS].[pedidoscabe] ([idpedido])
ON UPDATE CASCADE
GO
ALTER TABLE [VENTAS].[pedidosdeta] CHECK CONSTRAINT [FK_idpedido_pedidosdeta]
GO
/****** Object:  ForeignKey [FK_idproducto_pedidosdeta]    Script Date: 01/29/2014 21:58:15 ******/
ALTER TABLE [VENTAS].[pedidosdeta]  WITH CHECK ADD  CONSTRAINT [FK_idproducto_pedidosdeta] FOREIGN KEY([idproducto])
REFERENCES [COMPRAS].[productos] ([idproducto])
ON UPDATE CASCADE
GO
ALTER TABLE [VENTAS].[pedidosdeta] CHECK CONSTRAINT [FK_idproducto_pedidosdeta]
GO
