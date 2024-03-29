USE [DBPerpustakaan]
GO
/****** Object:  Table [dbo].[Buku]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buku](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Buku] [char](5) NOT NULL,
	[Judul_Buku] [varchar](50) NOT NULL,
	[Tahun _Terbit] [int] NOT NULL,
 CONSTRAINT [PK_Buku] PRIMARY KEY CLUSTERED 
(
	[Kode_Buku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Kategori] [char](5) NOT NULL,
	[Kode_Buku] [char](5) NOT NULL,
	[Nama_Kategori] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Kode_Kategori] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peminjaman]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peminjaman](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Peminjaman] [char](5) NOT NULL,
	[Kode_Member] [char](5) NOT NULL,
	[Kode_Kategori] [char](5) NOT NULL,
	[Tanggal_Peminjaman] [datetime] NOT NULL,
	[Tanggal_Pengembalian] [datetime] NOT NULL,
	[Kode_Denda] [char](5) NULL,
	[Kode_Buku] [char](5) NULL,
 CONSTRAINT [PK_Peminjaman] PRIMARY KEY CLUSTERED 
(
	[Kode_Peminjaman] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwTotalKategori]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[vwTotalKategori] as
select kt.Nama_Kategori ,pj.Kode_Kategori,count(pj.Kode_Kategori) Jumlah
from Peminjaman pj
join Kategori kt on pj.Kode_Kategori = kt.Kode_Kategori
join Buku bk on kt.Kode_Buku = bk.Kode_Buku
group by kt.Nama_Kategori ,pj.Kode_Kategori
GO
/****** Object:  View [dbo].[vwTotalBuku]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwTotalBuku] as
select bk.Judul_Buku ,bk.Kode_Buku,count(bk.Kode_Buku) Jumlah
from Peminjaman pj
join Kategori kt on pj.Kode_Kategori = kt.Kode_Kategori
join Buku bk on kt.Kode_Buku = bk.Kode_Buku
group by bk.Judul_Buku ,bk.Kode_Buku
GO
/****** Object:  Table [dbo].[Member]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Member] [char](5) NOT NULL,
	[Nama] [varchar](50) NOT NULL,
	[Tanggal_Join] [datetime] NOT NULL,
	[Alamat] [varchar](100) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[Kode_Member] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Denda]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Denda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Denda] [char](5) NOT NULL,
	[Denda_Perhari] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Denda] PRIMARY KEY CLUSTERED 
(
	[Kode_Denda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDendaHari]    Script Date: 11/9/2023 1:01:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vwDendaHari] as
select mb.Nama, mb.Kode_Member , DATEDIFF(DAY, pj.Tanggal_Peminjaman, pj.Tanggal_Pengembalian) jumlah_hari
from Peminjaman pj
join Member mb on pj.Kode_Member = mb.Kode_Member
join Denda d on pj.Kode_Denda = d.Kode_Denda
GO
SET IDENTITY_INSERT [dbo].[Buku] ON 

INSERT [dbo].[Buku] ([ID], [Kode_Buku], [Judul_Buku], [Tahun _Terbit]) VALUES (2, N'AB123', N'Becoming by Michelle Obama', 2019)
INSERT [dbo].[Buku] ([ID], [Kode_Buku], [Judul_Buku], [Tahun _Terbit]) VALUES (4, N'INR34', N'Rich Dad Poor Dad by Robert', 2015)
INSERT [dbo].[Buku] ([ID], [Kode_Buku], [Judul_Buku], [Tahun _Terbit]) VALUES (5, N'INT11', N'The 5 Level of Leadership by John C. Maxwell', 2019)
INSERT [dbo].[Buku] ([ID], [Kode_Buku], [Judul_Buku], [Tahun _Terbit]) VALUES (3, N'SD987', N'Dear Tomorrow oleh Maudy Ayunda', 2021)
INSERT [dbo].[Buku] ([ID], [Kode_Buku], [Judul_Buku], [Tahun _Terbit]) VALUES (6, N'TAL17', N'Algorithms to Live By: The Computer Science', 2010)
SET IDENTITY_INSERT [dbo].[Buku] OFF
GO
SET IDENTITY_INSERT [dbo].[Denda] ON 

INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (18, N'KD001', CAST(10500.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (19, N'KD002', CAST(8750.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (20, N'KD003', CAST(15200.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (21, N'KD004', CAST(12000.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (22, N'KD005', CAST(18300.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (23, N'KD006', CAST(22500.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (24, N'KD007', CAST(14750.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (25, N'KD008', CAST(20000.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (26, N'KD009', CAST(25800.00 AS Decimal(8, 2)))
INSERT [dbo].[Denda] ([ID], [Kode_Denda], [Denda_Perhari]) VALUES (27, N'KD010', CAST(30250.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Denda] OFF
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([ID], [Kode_Kategori], [Kode_Buku], [Nama_Kategori]) VALUES (2, N'A001 ', N'AB123', N'autobiografi')
INSERT [dbo].[Kategori] ([ID], [Kode_Kategori], [Kode_Buku], [Nama_Kategori]) VALUES (4, N'IN01 ', N'INR34', N'inspirational')
INSERT [dbo].[Kategori] ([ID], [Kode_Kategori], [Kode_Buku], [Nama_Kategori]) VALUES (6, N'L001 ', N'TAL17', N'Sains')
INSERT [dbo].[Kategori] ([ID], [Kode_Kategori], [Kode_Buku], [Nama_Kategori]) VALUES (3, N'S002 ', N'SD987', N'self_love')
INSERT [dbo].[Kategori] ([ID], [Kode_Kategori], [Kode_Buku], [Nama_Kategori]) VALUES (5, N'T003 ', N'INT11', N'technology')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (1, N'KM001', N'John Doe', CAST(N'2023-01-01T08:00:00.000' AS DateTime), N'Jln Langsat no 13')
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (2, N'KM002', N'Jane Smith', CAST(N'2023-02-15T10:30:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (3, N'KM003', N'Bob Johnson', CAST(N'2023-03-20T14:45:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (4, N'KM004', N'Alice Williams', CAST(N'2023-04-05T18:20:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (5, N'KM005', N'Charlie Brown', CAST(N'2023-05-10T22:10:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (6, N'KM006', N'Eva Davis', CAST(N'2023-06-15T09:15:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (7, N'KM007', N'Frank White', CAST(N'2023-07-22T12:40:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (8, N'KM008', N'Grace Miller', CAST(N'2023-08-30T16:55:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (9, N'KM009', N'Henry Lee', CAST(N'2023-09-12T20:25:00.000' AS DateTime), NULL)
INSERT [dbo].[Member] ([ID], [Kode_Member], [Nama], [Tanggal_Join], [Alamat]) VALUES (10, N'KM010', N'Ivy Chen', CAST(N'2023-10-18T23:45:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Member] OFF
GO
SET IDENTITY_INSERT [dbo].[Peminjaman] ON 

INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (36, N'AB123', N'KM001', N'A001 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), N'KD010', N'AB123')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (41, N'AB133', N'KM006', N'A001 ', CAST(N'2023-11-06T00:00:00.000' AS DateTime), CAST(N'2023-11-18T00:00:00.000' AS DateTime), N'KD004', N'AB123')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (48, N'AB134', N'KM001', N'A001 ', CAST(N'2023-11-01T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), NULL, N'AB123')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (44, N'INR14', N'KM009', N'IN01 ', CAST(N'2023-11-09T00:00:00.000' AS DateTime), CAST(N'2023-11-11T00:00:00.000' AS DateTime), NULL, N'INR34')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (38, N'INR34', N'KM003', N'IN01 ', CAST(N'2023-11-03T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), N'KD009', N'INR34')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (39, N'INT11', N'KM004', N'IN01 ', CAST(N'2023-11-04T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), N'KD008', N'INR34')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (45, N'INT31', N'KM010', N'IN01 ', CAST(N'2023-11-10T00:00:00.000' AS DateTime), CAST(N'2023-11-12T00:00:00.000' AS DateTime), NULL, N'INR34')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (42, N'SD917', N'KM007', N'S002 ', CAST(N'2023-11-07T00:00:00.000' AS DateTime), CAST(N'2023-11-09T00:00:00.000' AS DateTime), NULL, N'SD987')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (37, N'SD987', N'KM002', N'S002 ', CAST(N'2023-11-02T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), N'KD006', N'INT11')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (40, N'TAL17', N'KM005', N'T003 ', CAST(N'2023-11-05T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), N'KD005', N'TAL17')
INSERT [dbo].[Peminjaman] ([ID], [Kode_Peminjaman], [Kode_Member], [Kode_Kategori], [Tanggal_Peminjaman], [Tanggal_Pengembalian], [Kode_Denda], [Kode_Buku]) VALUES (43, N'TAL57', N'KM008', N'T003 ', CAST(N'2023-11-08T00:00:00.000' AS DateTime), CAST(N'2023-11-10T00:00:00.000' AS DateTime), NULL, N'TAL17')
SET IDENTITY_INSERT [dbo].[Peminjaman] OFF
GO
ALTER TABLE [dbo].[Denda]  WITH CHECK ADD  CONSTRAINT [FK_Denda_Denda] FOREIGN KEY([Kode_Denda])
REFERENCES [dbo].[Denda] ([Kode_Denda])
GO
ALTER TABLE [dbo].[Denda] CHECK CONSTRAINT [FK_Denda_Denda]
GO
ALTER TABLE [dbo].[Kategori]  WITH CHECK ADD  CONSTRAINT [FK_Kategori_Buku] FOREIGN KEY([Kode_Buku])
REFERENCES [dbo].[Buku] ([Kode_Buku])
GO
ALTER TABLE [dbo].[Kategori] CHECK CONSTRAINT [FK_Kategori_Buku]
GO
ALTER TABLE [dbo].[Peminjaman]  WITH CHECK ADD  CONSTRAINT [FK_Peminjaman_Buku] FOREIGN KEY([Kode_Buku])
REFERENCES [dbo].[Buku] ([Kode_Buku])
GO
ALTER TABLE [dbo].[Peminjaman] CHECK CONSTRAINT [FK_Peminjaman_Buku]
GO
ALTER TABLE [dbo].[Peminjaman]  WITH CHECK ADD  CONSTRAINT [FK_Peminjaman_Denda] FOREIGN KEY([Kode_Denda])
REFERENCES [dbo].[Denda] ([Kode_Denda])
GO
ALTER TABLE [dbo].[Peminjaman] CHECK CONSTRAINT [FK_Peminjaman_Denda]
GO
ALTER TABLE [dbo].[Peminjaman]  WITH CHECK ADD  CONSTRAINT [FK_Peminjaman_Kategori] FOREIGN KEY([Kode_Kategori])
REFERENCES [dbo].[Kategori] ([Kode_Kategori])
GO
ALTER TABLE [dbo].[Peminjaman] CHECK CONSTRAINT [FK_Peminjaman_Kategori]
GO
ALTER TABLE [dbo].[Peminjaman]  WITH CHECK ADD  CONSTRAINT [FK_Peminjaman_Member] FOREIGN KEY([Kode_Member])
REFERENCES [dbo].[Member] ([Kode_Member])
GO
ALTER TABLE [dbo].[Peminjaman] CHECK CONSTRAINT [FK_Peminjaman_Member]
GO
