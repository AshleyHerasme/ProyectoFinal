USE [master]
GO
/****** Ashley Herasme Matricula: 19-EIIT-1-056 Seccion: 0541******/
/****** Cindiledys Rosario Matricula: 19-EIIT-1-024 Seccion: 0541 ******/
/****** Victalia Heredia Matricula: 19-EIIT-1-012 Seccion: 0541 ******/

/****** Object:  Database [OrganicHouseSAC]    Script Date: 2/9/20 7:40:02 p. m. ******/
CREATE DATABASE [OrganicHouseSAC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OrganicHouseSAC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OrganicHouseSAC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OrganicHouseSAC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OrganicHouseSAC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OrganicHouseSAC] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OrganicHouseSAC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OrganicHouseSAC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET ARITHABORT OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OrganicHouseSAC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OrganicHouseSAC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OrganicHouseSAC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OrganicHouseSAC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OrganicHouseSAC] SET  MULTI_USER 
GO
ALTER DATABASE [OrganicHouseSAC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OrganicHouseSAC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OrganicHouseSAC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OrganicHouseSAC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OrganicHouseSAC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OrganicHouseSAC] SET QUERY_STORE = OFF
GO
USE [OrganicHouseSAC]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 2/9/20 7:40:03 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClientesId] [int] NOT NULL,
	[Nombre] [varchar](70) NULL,
	[Telefono] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Direccion] [varchar](100) NULL,
	[ProductoId] [int] NULL,
	[Cantidad] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClientesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 2/9/20 7:40:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[CompraId] [int] NOT NULL,
	[ClienteId] [int] NULL,
	[Cantidad] [varchar](50) NULL,
	[ProductoId] [int] NULL,
	[FechaPedido] [smalldatetime] NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[CompraId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 2/9/20 7:40:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[EmpleadoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Cargo] [varchar](50) NULL,
	[Telefono] [varchar](15) NULL,
	[Direccion] [varchar](100) NULL,
	[Sexo] [char](1) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[EmpleadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 2/9/20 7:40:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoId] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[PrecioCosto] [smallmoney] NULL,
	[PrecioVenta] [smallmoney] NULL,
	[ProveedorId] [varchar](50) NULL,
	[Cantidad] [nchar](10) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 2/9/20 7:40:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[ProveedorId] [int] NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Telefono] [varchar](15) NULL,
	[Email] [varchar](30) NULL,
	[Direccion] [varchar](80) NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[ProveedorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 2/9/20 7:40:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[VentaId] [int] NOT NULL,
	[ProductoId] [int] NULL,
	[Cantidad] [varchar](50) NULL,
	[Descuento] [float] NULL,
	[ClienteId] [int] NULL,
	[FechaFactura] [smalldatetime] NULL,
	[EmpleadoId] [int] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[VentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (1, N'GreenBowl', N'849-335-2694', N'greenbowl@gmail.com', N'Aut. 30 de Mayo', 2, N'20 unidades')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (2, N'VitaFit', N'809-860-4737', N'vitafoodfit@gmail.com', N'Av. Independencia no. 100', 5, N'15 unidades')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (3, N'El rincon de Lu', N'829-674-4737', N'lurincon@gmail.com', N'Av. John F. Kennedy no. 34', 1, N'20 libras')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (4, N'Pietro Food', N'809-504-0915', N'foofpietro@gmail.com', N'Juan de Morfa no.10', 18, N'10 libras')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (5, N'Organic Market', N'849-806-7251', N'organicmarket@gmail.com', N'Av. Romulo Betancour 1420, Bella Vista', 8, N'30 libras')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (6, N'MiniMarket', N'829-492-1251', N'minimarket@gmail.com', N'Centro de los Heroes', 8, N'25 libras')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (7, N'BodegaRH', N'809-674-5411', N'bodegarh123@gmail.com', N'Av. Alexander Fleming, Esq. Jos[e Ortega y Gasset', 4, N'10 libras')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (8, N'Kiko Sushi', N'809-002-2011', N'sushikiko@gmail.com', N'Ensanche Naco no. 15-B', 17, N'50 unidades')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (9, N'Jumbo', N'809-511-1023', N'jumbo564@gmail.com', N'Av. San Vicente de Paul', 4, N'50 cajas')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (10, N'La Sirena', N'809-299-4444', N'sirenala@gmail.com', N'Av. Venezuea 104', 1, N'10 libras')
INSERT [dbo].[Clientes] ([ClientesId], [Nombre], [Telefono], [Email], [Direccion], [ProductoId], [Cantidad]) VALUES (11, N'Indian Food', N'849-879-2087', N'indianfood@gmail.com', N'Av. Barcelo', 6, N'2 cajas')
GO
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (1, 4, N'5 litros', 3, CAST(N'2020-07-30T09:00:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (2, 2, N'10 unidades', 5, CAST(N'2020-07-30T10:00:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (3, 6, N'2 cajas', 6, CAST(N'2020-07-30T11:30:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (4, 5, N'15 libras', 8, CAST(N'2020-07-30T11:40:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (5, 10, N'3 libras', 10, CAST(N'2020-07-30T12:00:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (6, 3, N'20 litros', 14, CAST(N'2020-07-30T13:00:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (7, 8, N'15 unidades', 2, CAST(N'2020-07-30T13:10:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (8, 1, N'30 cajas', 4, CAST(N'2020-07-30T13:20:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (9, 7, N'5 cajas', 7, CAST(N'2020-07-30T14:00:00' AS SmallDateTime))
INSERT [dbo].[Compra] ([CompraId], [ClienteId], [Cantidad], [ProductoId], [FechaPedido]) VALUES (10, 9, N'13 unidades', 16, CAST(N'2020-07-30T15:50:00' AS SmallDateTime))
GO
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (1, N'Maria Contreras', N'Cajera', N'809-453-1274', N'Calle Miraflores no. 8', N'F', N'Maria95@hotmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (2, N'Sofia Reyes', N'Cajera', N'829-3686362', N'Herrera, C/4 esq, El Cafe', N'F', N'sofir@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (3, N'Julio Martinez', N'Almacen', N'829-004-9241', N'Av. Independencia Km. 7', N'M', N'martinezJ@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (4, N'Mauricio Garcia', N'Vendedor', N'849-321-0865', N'La Isabelita calle 12', N'M', N'MauricioG@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (5, N'Alberto Perez', N'Contador', N'809-147-9632', N'Calle los Gigantes no. 3, Haina', N'M', N'Albertoperez@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (6, N'Fernando Castillo', N'Chofer', N'806-654-7893', N'San Isidro calle 3', N'M', N'fercastillo@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (7, N'Luis Rosario', N'Chofer', N'809-159-9635', N'Los mameyes no. 15-B', N'M', N'rosarioluis@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (8, N'Talia Peralta', N'Limpieza', N'829-780-2880', N'Av. Independencia no 3', N'F', N'taliaperalta@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (9, N'Anna De Leon', N'Vendedor', N'809-370-8800', N'Zona Colonial no. 102', N'F', N'anna_28@gmail.com')
INSERT [dbo].[Empleados] ([EmpleadoId], [Nombre], [Cargo], [Telefono], [Direccion], [Sexo], [Email]) VALUES (10, N'Juan Mora', N'Almacen', N'809-606-0000', N'Invivienda calle 2', N'M', N'juanmora31@hotmail.com')
GO
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (1, N'Cafe', 150.0000, 350.0000, N'1', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (2, N'Brocoli', 65.0000, 150.0000, N'3', N'2 unidades')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (3, N'Miel natural', 200.0000, 400.0000, N'10', N'10 litros ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (4, N'Leche ', 75.0000, 130.0000, N'5', N'1 unidad  ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (5, N'Espinacas', 40.0000, 100.0000, N'3', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (6, N'Fresas', 150.0000, 300.0000, N'2', N'1 caja    ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (7, N'Tomates', 15.0000, 30.0000, N'3', N'2 unidades')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (8, N'Habichuelas', 60.0000, 120.0000, N'6', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (9, N'Lechuga', 25.0000, 50.0000, N'4', N'1 unidad  ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (10, N'Chia', 105.0000, 200.0000, N'8', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (11, N'Pimienta', 45.0000, 100.0000, N'8', N'15 gramos ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (12, N'Oregano', 15.0000, 25.0000, N'8', N'15 gramos ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (13, N'Laurel', 20.0000, 40.0000, N'8', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (14, N'Mermelada', 200.0000, 400.0000, N'10', N'15 litros ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (15, N'Almendras', 100.0000, 200.0000, N'7', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (16, N'Apio', 25.0000, 50.0000, N'7', N'La unidad ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (17, N'Maiz', 25.0000, 50.0000, N'3', N'2 unidades')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (18, N'Carne de pollo', 45.0000, 120.0000, N'9', N'1 libra   ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (19, N'Huevos', 100.0000, 200.0000, N'9', N'Carton    ')
INSERT [dbo].[Productos] ([ProductoId], [Nombre], [PrecioCosto], [PrecioVenta], [ProveedorId], [Cantidad]) VALUES (20, N'Salmon', 250.0000, 650.0000, N'9', N'1 libra   ')
GO
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (1, N'Q Coffee SRL', N'809-521-3409', N'Caffeq@gmail.com', N'30 de Marzo, Santo Domingo.')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (2, N'A M Frutas Y Vegetales, CxA', N'809-555-2087', N'FrurasAM@gmail.ocm', N'Gral. Cabrera, Santiago.')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (3, N'Agrogreen MC, SRL', N'849-087-1435', N'agrogreen@gmail.com', N'Eduardo Vicioso no. 1')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (4, N'Agroindustrial Amece', N'809-473-2018', N'agroidustrial@gmail.com', N'J Contreras 65-B, Santo Domingo')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (5, N'Vegetales Leomary', N'829-535-0914', N'leomaryvegetales@gmail.com', N'Aut. Las Amerias Km 13')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (6, N'Distribuidora Quezada Suriel, SRL', N'829-867-3021', N'quezadadistribuidora@gmail.com', N'Km 12 Carretera Sanchez')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (7, N'Mercafrun', N'809-399=0010', N'mercafrun98@gmail.com', N'Escodio Bani, Carretera Sanches Km. 21')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (8, N'Frudep', N'809-674-4509', N'frudep@gmail.com', N'Capotillo 5, San Cristobal')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (9, N'Maguana Tropical', N'809-200-3333', N'tropical_maguana@gmail.com', N'Libertad 36 Jarabacoa, Rep. Dom.')
INSERT [dbo].[Proveedor] ([ProveedorId], [Nombre], [Telefono], [Email], [Direccion]) VALUES (10, N'Ready JT', N'849-909-2376', N'jtready@gmail.com', N'Imbert 30, Puerto Plata')
GO
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (1, 15, N'20 litros', 0, 3, CAST(N'2020-08-02T09:50:00' AS SmallDateTime), 1)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (2, 11, N'15 unidades', 0, 9, CAST(N'2020-08-02T10:00:00' AS SmallDateTime), 4)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (3, 3, N'30 litros', 0, 7, CAST(N'2020-08-03T12:30:00' AS SmallDateTime), 9)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (4, 6, N'10 cajas', 0, 2, CAST(N'2020-08-03T13:05:00' AS SmallDateTime), 2)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (5, 12, N'5 libras', 0, 5, CAST(N'2020-08-05T08:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (6, 13, N'5 libras', 0, 1, CAST(N'2020-08-10T09:15:00' AS SmallDateTime), 1)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (7, 16, N'25 unidades', 0, 8, CAST(N'2020-08-12T15:00:00' AS SmallDateTime), 9)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (8, 17, N'40 unidades', 0, 6, CAST(N'2020-08-12T16:45:00' AS SmallDateTime), 2)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (9, 8, N'25 libras', 0, 4, CAST(N'2020-08-13T08:00:00' AS SmallDateTime), 2)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (10, 2, N'30 unidades', 0, 2, CAST(N'2020-08-20T11:30:00' AS SmallDateTime), 4)
INSERT [dbo].[Venta] ([VentaId], [ProductoId], [Cantidad], [Descuento], [ClienteId], [FechaFactura], [EmpleadoId]) VALUES (11, 7, N'100 unidades', 0, 10, CAST(N'2020-08-21T12:00:00' AS SmallDateTime), 2)
GO
USE [master]
GO
ALTER DATABASE [OrganicHouseSAC] SET  READ_WRITE 
GO