/****** NOMBRE: LUIS ENRIQUE PUELLO MATOS, MATRICULA: 19-MIIN-1-070, SECCION: 0541 ******/
/****** MATERIA: BASE DE DATOS, MAESTRO: STARLING GERMOSEN REYNOSO ******/

CREATE DATABASE [SERVICIOS_DE_MANTENIMIENTOS_LOGISTICOS_EN_REFIGERACION]
GO
USE [SERVICIOS_DE_MANTENIMIENTOS_LOGISTICOS_EN_REFIGERACION]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Categoria_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Categoria_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cliente_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ced_RNC] [nvarchar](50) NOT NULL,
	[Nombre_Completo] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cliente_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleado_ID] [int] IDENTITY(1,1) NOT NULL,
	[Primer_Nombre] [nvarchar](50) NOT NULL,
	[Primer_Apellido] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[telefono] [nvarchar](20) NOT NULL,
	
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Empleado_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicio_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
	[Precio_Unitario] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[Servicio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (1, N'001-1234567-7', N'Etoon ', N'las Paredes de Haina ', N'809-665-4885')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (2, N'002-2345678-8', N' Edward ', N'Sirena Luperon', N'809-988-9982')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (3, N'003-3456789-1', N'Bravo', N'Independencia ', N'809-779-8789')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (4, N'004-5678910-0', N'Grupo CCN', N'Av. Luperon #157', N'809-604-4545')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (5, N'005-6789101-4', N'Grupo Ramos ', N'AV. Independencies K12  ', N'809-880-2030')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (6, N'006-7890123-2', N'Ole ', N'Piedra Blanca ', N'809-363-9988')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (7, N'007-8910111-5', N'Restaurante el Meson ', N'Parque industrial Itabo ', N'809-871-1587')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (8, N'008-9101112-0', N'Laurenton ', N'Parque industrial Itabo', N'809-554-0025')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (9, N'009-3101112-9', N'Plaza Lama ', N'27 de febrero', N'809-334-2215')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (10,N'011-1101112-3', N'Andres Tropical', N'Nuñez de Caceres', N'839-124-3311')
INSERT [dbo].[Clientes] ([Cliente_ID], [Ced_RNC], [Nombre_Completo], [Direccion], [Telefono]) VALUES (11, N'012-7101112-1', N'Barra Pallan', N'Herrera', N'849-222-0143')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (1, N'Mateo ', N'Polanco', 37, CAST(N'1984-08-09' AS Date), N'si ', N'809-604-3339')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (2, N'Marino', N'Sancez', 25, CAST(N'1996-06-07' AS Date), N'si ', N'809-334-7878')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (3, N'Lelis', N'Figari', 40, CAST(N'1981-04-08' AS Date), N'si ', N'809-687-5456')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (4, N'Brauli', N'Astacio', 25, CAST(N'1996-05-08' AS Date), N'si ', N'809-323-4463')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (5, N'Josue', N'Acevedo', 45, CAST(N'1976-10-03' AS Date), N'si ', N'829-669-3215')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (6, N'Emely', N'Medrano', 28, CAST(N'1993-01-09' AS Date), N'si ', N'849-879-2583')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (7, N'Ricardo', N'Meran', 25, CAST(N'1996-02-10' AS Date), N'si  ', N'849-666-3366')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (8, N'Cristopher',N'Garabito', 26, CAST(N'1995-01-15' AS Date),N'si', N'849-333-3661')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (9, N'Alfredo Zapata', N'Meran', 36, CAST(N'1986-05-22' AS Date),N'si ', N'849-555-4422')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (10, N'Camil', N'Lopez', 25, CAST(N'1996-02-10' AS Date), N'si ', N'849-666-1111')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (11, N'Omar' , N'Pilar', 30, CAST(N'1992-03-15' AS Date), N'si ', N'849-643-3366')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (12, N'Gabriel', N'Almonte', 40, CAST(N'1982-03-11' AS Date), N'si', N'849-111-2222')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (13, N'Yamilet', N'Roman', 45, CAST(N'1977-06-08' AS Date), N'si', N'829-607-2266')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (14, N'Crismeri', N'Ramirez', 50, CAST(N'1972-07-11' AS Date), N'si ', N'849-204-3451')
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (15, N'Orance', N'Aquino', 27, CAST(N'1995-09-10' AS Date), N'si ', N'809-391-3114',)
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (16, N'Luisa', N'Perez', 25, CAST(N'1998-01-12' AS Date), N'si ', N'809-320-1414',)
INSERT [dbo].[Empleados] ([Empleado_ID], [Primer_Nombre], [Primer_Apellido], [Edad], [Fecha_Nacimiento], [Activo], [telefono]) VALUES (17, N'Oscar', N'Cabral', 29, CAST(N'1992-01-02' AS Date), N'si  ', N'829-216-1616')
SET IDENTITY_INSERT [dbo].[Empleados] OFF

GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (1, N'Mantenimiento Electrico A Equipos de Refigeracion', N'Mantenimiento', CAST(10000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (2, N'Mantenimiento Preventivo A Equipo De Refigeracion', N'Mantenimiento Preventivo', CAST(15000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (3, N'Mantenimiento  A las Unidades de Equipos Pesados', N'Mantenimiento de Unidades', CAST(25000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (4, N'Mantenimiento De Aires Acondicionados', N'Mantenimiento De Aires', CAST(10000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (5, N'Mantenimiento A Cuartos Frios', N'Mantenimiento', CAST(20000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (6, N'Mantenimiento Electrico A Aires Acondicionados', N'Mantenimiento Electrico De Aires', CAST(10850 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (7, N'Mantenimiento Electrico A Cuartos Frios', N'Mantenimiento Electrico', CAST(22000 AS Numeric(18, 0)))
INSERT [dbo].[Servicios] ([Servicio_ID], [Nombre], [Tipo], [Precio_Unitario]) VALUES (8, N'Mantenimiento Correctivo A Unidades de equipos Pesado', N'Mantenimiento De Aires', CAST(50000 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
