--CREATE DATABASE InventoryDb
USE [InventoryDb]
GO
/****** Object:  Table [dbo].[Kota]    Script Date: 16-May-23 02:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kota](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode] [char](5) NOT NULL,
	[KodeProvinsi] [char](5) NOT NULL,
	[Nama] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Kota] PRIMARY KEY CLUSTERED 
(
	[Kode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Outlet]    Script Date: 16-May-23 02:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outlet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode] [char](5) NOT NULL,
	[KodeKota] [char](5) NOT NULL,
	[Nama] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Outlet] PRIMARY KEY CLUSTERED 
(
	[Kode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16-May-23 02:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode] [char](5) NOT NULL,
	[Nama] [varchar](30) NOT NULL,
	[Harga] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Kode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinsi]    Script Date: 16-May-23 02:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinsi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode] [char](5) NOT NULL,
	[Nama] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Provinsi] PRIMARY KEY CLUSTERED 
(
	[Kode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Selling]    Script Date: 16-May-23 02:45:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Selling](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Referensi] [char](10) NOT NULL,
	[SellingDate] [datetime] NOT NULL,
	[KodeProduct] [char](5) NOT NULL,
	[Quantity] [decimal](18, 4) NOT NULL,
	[KodeOutlet] [char](5) NOT NULL,
 CONSTRAINT [PK_Selling] PRIMARY KEY CLUSTERED 
(
	[Referensi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kota] ON 

INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (1, N'K1001', N'P0001', N'Jakarta Pusat')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (2, N'K1002', N'P0001', N'Jakarta Barat')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (3, N'K1003', N'P0001', N'Jakarta Selatan')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (4, N'K1004', N'P0001', N'Jakarta Timur')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (5, N'K1005', N'P0001', N'Jakarta Utara')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (6, N'K2001', N'P0002', N'Tangerang Selatan')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (7, N'K2002', N'P0002', N'Tangerang Kota')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (8, N'K3001', N'P0003', N'Bekasi Kota')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (9, N'K3002', N'P0003', N'Bekasi')
INSERT [dbo].[Kota] ([Id], [Kode], [KodeProvinsi], [Nama]) VALUES (10, N'K3003', N'P0003', N'Cikarang')
SET IDENTITY_INSERT [dbo].[Kota] OFF
GO
SET IDENTITY_INSERT [dbo].[Outlet] ON 

INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (1, N'O001 ', N'K1003', N'Jaktim Jaya')
INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (2, N'O002 ', N'K3001', N'Bek Kota Jaya')
INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (3, N'O003 ', N'K3003', N'Cikarang Jaya')
INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (4, N'O004 ', N'K2001', N'TangSel Jaya')
INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (5, N'O005 ', N'K1001', N'JakPus Jaya')
INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (6, N'O006 ', N'K3002', N'Bekasi Jaya')
INSERT [dbo].[Outlet] ([Id], [Kode], [KodeKota], [Nama]) VALUES (8, N'O007 ', N'K3003', N'Citayam Jaya')
SET IDENTITY_INSERT [dbo].[Outlet] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (2, N'P0112', N'Sabun', CAST(25500.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (1, N'P0192', N'Roti', CAST(12500.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (4, N'P0928', N'Sandal', CAST(17000.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (3, N'P1022', N'Sampoo', CAST(22750.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (5, N'P2312', N'Kaos kaki', CAST(16550.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (7, N'P2998', N'Tissue', CAST(35500.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (6, N'P9289', N'Pasta gigi', CAST(8900.0000 AS Decimal(18, 4)))
INSERT [dbo].[Product] ([Id], [Kode], [Nama], [Harga]) VALUES (8, N'P9830', N'Seblak', CAST(15000.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Provinsi] ON 

INSERT [dbo].[Provinsi] ([Id], [Kode], [Nama]) VALUES (1, N'P0001', N'DKI Jakarta')
INSERT [dbo].[Provinsi] ([Id], [Kode], [Nama]) VALUES (2, N'P0002', N'Banten')
INSERT [dbo].[Provinsi] ([Id], [Kode], [Nama]) VALUES (3, N'P0003', N'Jawa Barat')
SET IDENTITY_INSERT [dbo].[Provinsi] OFF
GO
SET IDENTITY_INSERT [dbo].[Selling] ON 

INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (1, N'SLS2111001', CAST(N'2021-11-22T00:00:00.000' AS DateTime), N'P1022', CAST(3.0000 AS Decimal(18, 4)), N'O001 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (2, N'SLS2111002', CAST(N'2021-11-23T00:00:00.000' AS DateTime), N'P0192', CAST(10.0000 AS Decimal(18, 4)), N'O002 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (3, N'SLS2112001', CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'P2312', CAST(12.0000 AS Decimal(18, 4)), N'O003 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (4, N'SLS2112002', CAST(N'2021-12-11T00:00:00.000' AS DateTime), N'P2998', CAST(1.0000 AS Decimal(18, 4)), N'O004 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (5, N'SLS2201001', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'P0192', CAST(9.0000 AS Decimal(18, 4)), N'O005 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (6, N'SLS2201002', CAST(N'2022-01-03T00:00:00.000' AS DateTime), N'P1022', CAST(2.0000 AS Decimal(18, 4)), N'O006 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (7, N'SLS2202001', CAST(N'2022-02-11T00:00:00.000' AS DateTime), N'P0928', CAST(7.0000 AS Decimal(18, 4)), N'O001 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (8, N'SLS2203001', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'P2998', CAST(8.0000 AS Decimal(18, 4)), N'O001 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (9, N'SLS2203002', CAST(N'2022-03-03T00:00:00.000' AS DateTime), N'P0192', CAST(3.0000 AS Decimal(18, 4)), N'O005 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (10, N'SLS2203003', CAST(N'2022-04-11T00:00:00.000' AS DateTime), N'P9289', CAST(10.0000 AS Decimal(18, 4)), N'O006 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (11, N'SLS2203004', CAST(N'2022-04-12T00:00:00.000' AS DateTime), N'P1022', CAST(3.0000 AS Decimal(18, 4)), N'O002 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (12, N'SLS2204005', CAST(N'2022-04-12T00:00:00.000' AS DateTime), N'P0192', CAST(2.0000 AS Decimal(18, 4)), N'O002 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (13, N'SLS2205001', CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'P0928', CAST(1.0000 AS Decimal(18, 4)), N'O003 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (14, N'SLS2205002', CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'P2312', CAST(19.0000 AS Decimal(18, 4)), N'O004 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (15, N'SLS2205008', CAST(N'2022-05-12T00:00:00.000' AS DateTime), N'P0112', CAST(20.0000 AS Decimal(18, 4)), N'O005 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (16, N'SLS2206001', CAST(N'2022-05-13T00:00:00.000' AS DateTime), N'P0112', CAST(2.0000 AS Decimal(18, 4)), N'O001 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (17, N'SLS2206009', CAST(N'2022-05-13T00:00:00.000' AS DateTime), N'P0928', CAST(1.0000 AS Decimal(18, 4)), N'O002 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (18, N'SLS2206011', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'P9289', CAST(4.0000 AS Decimal(18, 4)), N'O005 ')
INSERT [dbo].[Selling] ([Id], [Referensi], [SellingDate], [KodeProduct], [Quantity], [KodeOutlet]) VALUES (19, N'SLS2206012', CAST(N'2022-06-12T00:00:00.000' AS DateTime), N'P1022', CAST(2.0000 AS Decimal(18, 4)), N'O003 ')
SET IDENTITY_INSERT [dbo].[Selling] OFF
GO
ALTER TABLE [dbo].[Kota]  WITH CHECK ADD  CONSTRAINT [FK_Kota_Provinsi] FOREIGN KEY([KodeProvinsi])
REFERENCES [dbo].[Provinsi] ([Kode])
GO
ALTER TABLE [dbo].[Kota] CHECK CONSTRAINT [FK_Kota_Provinsi]
GO
ALTER TABLE [dbo].[Outlet]  WITH CHECK ADD  CONSTRAINT [FK_Outlet_Kota] FOREIGN KEY([KodeKota])
REFERENCES [dbo].[Kota] ([Kode])
GO
ALTER TABLE [dbo].[Outlet] CHECK CONSTRAINT [FK_Outlet_Kota]
GO
ALTER TABLE [dbo].[Selling]  WITH CHECK ADD  CONSTRAINT [FK_Outlet_Selling] FOREIGN KEY([KodeOutlet])
REFERENCES [dbo].[Outlet] ([Kode])
GO
ALTER TABLE [dbo].[Selling] CHECK CONSTRAINT [FK_Outlet_Selling]
GO
ALTER TABLE [dbo].[Selling]  WITH CHECK ADD  CONSTRAINT [FK_Product_Selling] FOREIGN KEY([KodeProduct])
REFERENCES [dbo].[Product] ([Kode])
GO
ALTER TABLE [dbo].[Selling] CHECK CONSTRAINT [FK_Product_Selling]
GO
