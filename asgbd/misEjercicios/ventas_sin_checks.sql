USE [master]
GO
/****** Object:  Database [ventas]    Script Date: 10/04/2014 17:43:20 ******/

CREATE DATABASE [ventas] 
GO
ALTER DATABASE [ventas] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ventas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ventas] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ventas] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ventas] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ventas] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ventas] SET ARITHABORT OFF
GO
ALTER DATABASE [ventas] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ventas] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ventas] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ventas] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ventas] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ventas] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ventas] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ventas] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ventas] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ventas] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ventas] SET  DISABLE_BROKER
GO
ALTER DATABASE [ventas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ventas] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ventas] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ventas] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ventas] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ventas] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ventas] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ventas] SET  READ_WRITE
GO
ALTER DATABASE [ventas] SET RECOVERY FULL
GO
ALTER DATABASE [ventas] SET  MULTI_USER
GO
ALTER DATABASE [ventas] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ventas] SET DB_CHAINING OFF
GO
USE [ventas]
GO
/****** Object:  Table [dbo].[tipo_producto]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_producto](
	[cod_tipo_prod] [varchar](9) NOT NULL,
	[descrip_tipo_pro] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_tipo_prod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[distrito]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[distrito](
	[cod_dist] [char](5) NOT NULL,
	[descrip_dist] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_dist] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente_bak]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente_bak](
	[cod_cli] [int] IDENTITY(1,1) NOT NULL,
	[direccion_cli] [varchar](20) NOT NULL,
	[telefono_cli] [char](9) NOT NULL,
	[coddist_cli] [varchar](20) NOT NULL,
	[correo_e] [varchar](20) NULL,
	[web] [varchar](20) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[cod_cli] [varchar](9) NOT NULL,
	[direccion_cli] [varchar](20) NOT NULL,
	[telefono_cli] [char](9) NOT NULL,
	[coddist_cli] [char](5) NOT NULL,
	[correo_e] [varchar](20) NULL,
	[web] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cli] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[producto]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[producto](
	[cod_pro] [varchar](9) NOT NULL,
	[descrip_pro] [varchar](20) NOT NULL,
	[precio_pro] [decimal](6, 2) NOT NULL,
	[stock_act_pro] [bigint] NOT NULL,
	[stock_min_pro] [bigint] NOT NULL,
	[cod_tipo_pro] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_pro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleado](
	[cod_emp] [varchar](9) NOT NULL,
	[nombres_emp] [varchar](20) NOT NULL,
	[ape_pater_emp] [varchar](20) NOT NULL,
	[ape_mater_emp] [varchar](20) NOT NULL,
	[fecha_nac_emp] [datetime] NOT NULL,
	[direccion_emp] [varchar](20) NOT NULL,
	[telefono] [char](9) NOT NULL,
	[coddist_emp] [char](5) NOT NULL,
	[correo_e_emp] [varchar](20) NULL,
	[fecha_ingreso_emp] [datetime] NOT NULL,
	[cod_supervisor] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_emp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente_per_natural]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente_per_natural](
	[cod_cli_na] [varchar](9) NOT NULL,
	[nombres_cli] [varchar](20) NOT NULL,
	[ape_pater_cli] [varchar](20) NOT NULL,
	[ape_mater_cli] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cli_na] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente_per_juridica]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente_per_juridica](
	[cod_cli_ju] [varchar](9) NOT NULL,
	[razonsocial_cli] [varchar](20) NOT NULL,
	[rdc_cli] [varchar](20) NOT NULL,
	[contacto_cli] [varchar](20) NOT NULL,
	[cod_cargo_cli] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_cli_ju] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[boleta]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[boleta](
	[cod_bol] [varchar](9) NOT NULL,
	[cod_emp] [varchar](9) NOT NULL,
	[fecha_bol] [datetime] NOT NULL,
	[cod_cli] [varchar](9) NOT NULL,
	[estado_bol] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_bol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalleboleta]    Script Date: 10/04/2014 17:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalleboleta](
	[cod_bol] [varchar](9) NOT NULL,
	[cod_pro] [varchar](9) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precioventa] [decimal](6, 2) NOT NULL,
 CONSTRAINT [pk_detalleboleta] PRIMARY KEY CLUSTERED 
(
	[cod_bol] ASC,
	[cod_pro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
