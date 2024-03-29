USE [DBMahasiswa]
GO
/****** Object:  Table [dbo].[Jurusan]    Script Date: 07/11/2023 17:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jurusan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Jurusan] [char](5) NOT NULL,
	[Nama_Jurusan] [varchar](50) NOT NULL,
	[Status_Jurusan] [varchar](10) NOT NULL,
	[Biaya] [decimal](18, 4) NULL,
 CONSTRAINT [PK_Jurusan] PRIMARY KEY CLUSTERED 
(
	[Kode_Jurusan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agama]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agama](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Agama] [char](5) NOT NULL,
	[Deskripsi] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Agama] PRIMARY KEY CLUSTERED 
(
	[Kode_Agama] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mahasiswa]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahasiswa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Mahasiswa] [char](5) NOT NULL,
	[Nama_Mahasiswa] [varchar](100) NOT NULL,
	[Alamat] [varchar](200) NOT NULL,
	[Kode_Agama] [char](5) NOT NULL,
	[Kode_Jurusan] [char](5) NOT NULL,
 CONSTRAINT [PK_Mahasiswa] PRIMARY KEY CLUSTERED 
(
	[Kode_Mahasiswa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type_Dosen]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type_Dosen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Type_Dosen] [char](5) NOT NULL,
	[Deskripsi] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Type_Dosen] PRIMARY KEY CLUSTERED 
(
	[Kode_Type_Dosen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dosen]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dosen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Dosen] [char](5) NOT NULL,
	[Nama_Dosen] [varchar](200) NULL,
	[Kode_Jurusan] [char](5) NOT NULL,
	[Kode_Type_Dosen] [char](5) NOT NULL,
 CONSTRAINT [PK_Dosen] PRIMARY KEY CLUSTERED 
(
	[Kode_Dosen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwsoal8]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwsoal8]
as
SELECT Mahasiswa.Kode_Mahasiswa, Mahasiswa.Nama_Mahasiswa, Jurusan.Nama_Jurusan, Agama.deskripsi as Agama, Dosen.Nama_Dosen, Jurusan.Status_Jurusan, Type_Dosen.Deskripsi
FROM Mahasiswa
inner join Jurusan on Mahasiswa.Kode_Jurusan = Jurusan.Kode_Jurusan
inner join Agama on Mahasiswa.Kode_Agama = Agama.Kode_Agama
inner join Dosen on Jurusan.Kode_Jurusan = Dosen.Kode_Jurusan
inner join Type_Dosen on Dosen.Kode_Type_Dosen = Type_Dosen.Kode_Type_Dosen
WHERE Kode_Mahasiswa ='M001'
GO
/****** Object:  Table [dbo].[Nilai]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nilai](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Mahasiswa] [char](5) NOT NULL,
	[Kode_Ujian] [char](5) NOT NULL,
	[Nilai] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_Nilai] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ujian]    Script Date: 07/11/2023 17:35:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ujian](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kode_Ujian] [char](5) NOT NULL,
	[Nama_Ujian] [varchar](50) NOT NULL,
	[Status_ujian] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Ujian] PRIMARY KEY CLUSTERED 
(
	[Kode_Ujian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agama] ON 

INSERT [dbo].[Agama] ([ID], [Kode_Agama], [Deskripsi]) VALUES (1, N'A001 ', N'Islam')
INSERT [dbo].[Agama] ([ID], [Kode_Agama], [Deskripsi]) VALUES (2, N'A002 ', N'Kristen')
INSERT [dbo].[Agama] ([ID], [Kode_Agama], [Deskripsi]) VALUES (3, N'A003 ', N'Katolik')
INSERT [dbo].[Agama] ([ID], [Kode_Agama], [Deskripsi]) VALUES (4, N'A004 ', N'Hindu')
INSERT [dbo].[Agama] ([ID], [Kode_Agama], [Deskripsi]) VALUES (5, N'A005 ', N'Budha')
SET IDENTITY_INSERT [dbo].[Agama] OFF
GO
SET IDENTITY_INSERT [dbo].[Dosen] ON 

INSERT [dbo].[Dosen] ([Id], [Kode_Dosen], [Nama_Dosen], [Kode_Jurusan], [Kode_Type_Dosen]) VALUES (1, N'D001 ', N'Prof. Dr. Retno Wahyuningsih', N'J001 ', N'T002 ')
INSERT [dbo].[Dosen] ([Id], [Kode_Dosen], [Nama_Dosen], [Kode_Jurusan], [Kode_Type_Dosen]) VALUES (2, N'D002 ', N'Prof. Roy M. Sutikno', N'J002 ', N'T001 ')
INSERT [dbo].[Dosen] ([Id], [Kode_Dosen], [Nama_Dosen], [Kode_Jurusan], [Kode_Type_Dosen]) VALUES (3, N'D003 ', N'Prof. Hendri A. Verburgh', N'J003 ', N'T002 ')
INSERT [dbo].[Dosen] ([Id], [Kode_Dosen], [Nama_Dosen], [Kode_Jurusan], [Kode_Type_Dosen]) VALUES (4, N'D004 ', N'Prof. Risma Suparwata', N'J004 ', N'T002 ')
INSERT [dbo].[Dosen] ([Id], [Kode_Dosen], [Nama_Dosen], [Kode_Jurusan], [Kode_Type_Dosen]) VALUES (5, N'D005 ', N'Prof. Amir Sjarifuddin Madjid, MM, MA', N'J005 ', N'T001 ')
SET IDENTITY_INSERT [dbo].[Dosen] OFF
GO
SET IDENTITY_INSERT [dbo].[Jurusan] ON 

INSERT [dbo].[Jurusan] ([ID], [Kode_Jurusan], [Nama_Jurusan], [Status_Jurusan], [Biaya]) VALUES (1, N'J001 ', N'Teknik Informatika', N'Aktif', CAST(1500000.0000 AS Decimal(18, 4)))
INSERT [dbo].[Jurusan] ([ID], [Kode_Jurusan], [Nama_Jurusan], [Status_Jurusan], [Biaya]) VALUES (2, N'J002 ', N'Management Informatika', N'Aktif', CAST(1550000.0000 AS Decimal(18, 4)))
INSERT [dbo].[Jurusan] ([ID], [Kode_Jurusan], [Nama_Jurusan], [Status_Jurusan], [Biaya]) VALUES (3, N'J003 ', N'Sistem Informasi', N'Non Aktif', CAST(1475000.0000 AS Decimal(18, 4)))
INSERT [dbo].[Jurusan] ([ID], [Kode_Jurusan], [Nama_Jurusan], [Status_Jurusan], [Biaya]) VALUES (4, N'J004 ', N'Sistem Komputer', N'Aktif', CAST(1350000.0000 AS Decimal(18, 4)))
INSERT [dbo].[Jurusan] ([ID], [Kode_Jurusan], [Nama_Jurusan], [Status_Jurusan], [Biaya]) VALUES (5, N'J005 ', N'Komputer Akuntansi', N'Non Aktif', CAST(1535000.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[Jurusan] OFF
GO
SET IDENTITY_INSERT [dbo].[Mahasiswa] ON 

INSERT [dbo].[Mahasiswa] ([Id], [Kode_Mahasiswa], [Nama_Mahasiswa], [Alamat], [Kode_Agama], [Kode_Jurusan]) VALUES (1, N'M001 ', N'Budi Gunawan', N'Jl. Mawar No 3 RT 05 Cicalengka, Bandung', N'A001 ', N'J001 ')
INSERT [dbo].[Mahasiswa] ([Id], [Kode_Mahasiswa], [Nama_Mahasiswa], [Alamat], [Kode_Agama], [Kode_Jurusan]) VALUES (2, N'M002 ', N'Rinto Raharjo', N'Jl. Kebagusan No. 33 RT04 RW06 Bandung', N'A002 ', N'J002 ')
INSERT [dbo].[Mahasiswa] ([Id], [Kode_Mahasiswa], [Nama_Mahasiswa], [Alamat], [Kode_Agama], [Kode_Jurusan]) VALUES (3, N'M003 ', N'Asep Saepudin', N'Jl. Sumatera No. 12 RT02 RW01, Ciamis', N'A001 ', N'J003 ')
INSERT [dbo].[Mahasiswa] ([Id], [Kode_Mahasiswa], [Nama_Mahasiswa], [Alamat], [Kode_Agama], [Kode_Jurusan]) VALUES (4, N'M004 ', N'M. Hafif Isbullah', N'Jl. Jawa No 01 RT01 RW01, Jakarta Pusat', N'A001 ', N'J001 ')
INSERT [dbo].[Mahasiswa] ([Id], [Kode_Mahasiswa], [Nama_Mahasiswa], [Alamat], [Kode_Agama], [Kode_Jurusan]) VALUES (5, N'M005 ', N'Cahyono', N'Jl. Niagara No. 54 RT01 RW09, Surabaya', N'A003 ', N'J002 ')
SET IDENTITY_INSERT [dbo].[Mahasiswa] OFF
GO
SET IDENTITY_INSERT [dbo].[Nilai] ON 

INSERT [dbo].[Nilai] ([Id], [Kode_Mahasiswa], [Kode_Ujian], [Nilai]) VALUES (1, N'M004 ', N'U001 ', CAST(90.00 AS Decimal(8, 2)))
INSERT [dbo].[Nilai] ([Id], [Kode_Mahasiswa], [Kode_Ujian], [Nilai]) VALUES (2, N'M001 ', N'U001 ', CAST(80.00 AS Decimal(8, 2)))
INSERT [dbo].[Nilai] ([Id], [Kode_Mahasiswa], [Kode_Ujian], [Nilai]) VALUES (3, N'M002 ', N'U003 ', CAST(85.00 AS Decimal(8, 2)))
INSERT [dbo].[Nilai] ([Id], [Kode_Mahasiswa], [Kode_Ujian], [Nilai]) VALUES (4, N'M004 ', N'U002 ', CAST(95.00 AS Decimal(8, 2)))
INSERT [dbo].[Nilai] ([Id], [Kode_Mahasiswa], [Kode_Ujian], [Nilai]) VALUES (5, N'M005 ', N'U005 ', CAST(70.00 AS Decimal(8, 2)))
SET IDENTITY_INSERT [dbo].[Nilai] OFF
GO
SET IDENTITY_INSERT [dbo].[Type_Dosen] ON 

INSERT [dbo].[Type_Dosen] ([Id], [Kode_Type_Dosen], [Deskripsi]) VALUES (1, N'T001 ', N'Tetap')
INSERT [dbo].[Type_Dosen] ([Id], [Kode_Type_Dosen], [Deskripsi]) VALUES (2, N'T002 ', N'Honorer')
INSERT [dbo].[Type_Dosen] ([Id], [Kode_Type_Dosen], [Deskripsi]) VALUES (3, N'T003 ', N'Expertise')
SET IDENTITY_INSERT [dbo].[Type_Dosen] OFF
GO
SET IDENTITY_INSERT [dbo].[Ujian] ON 

INSERT [dbo].[Ujian] ([Id], [Kode_Ujian], [Nama_Ujian], [Status_ujian]) VALUES (1, N'U001 ', N'Algoritma', N'Aktif')
INSERT [dbo].[Ujian] ([Id], [Kode_Ujian], [Nama_Ujian], [Status_ujian]) VALUES (2, N'U002 ', N'Aljabar', N'Aktif')
INSERT [dbo].[Ujian] ([Id], [Kode_Ujian], [Nama_Ujian], [Status_ujian]) VALUES (3, N'U003 ', N'Statistika', N'Non Aktif')
INSERT [dbo].[Ujian] ([Id], [Kode_Ujian], [Nama_Ujian], [Status_ujian]) VALUES (4, N'U004 ', N'Etika Profesi', N'Non Aktif')
INSERT [dbo].[Ujian] ([Id], [Kode_Ujian], [Nama_Ujian], [Status_ujian]) VALUES (5, N'U005 ', N'Bahasa Inggris', N'Aktif')
SET IDENTITY_INSERT [dbo].[Ujian] OFF
GO
ALTER TABLE [dbo].[Dosen]  WITH CHECK ADD  CONSTRAINT [FK_Dosen_Jurusan] FOREIGN KEY([Kode_Jurusan])
REFERENCES [dbo].[Jurusan] ([Kode_Jurusan])
GO
ALTER TABLE [dbo].[Dosen] CHECK CONSTRAINT [FK_Dosen_Jurusan]
GO
ALTER TABLE [dbo].[Dosen]  WITH CHECK ADD  CONSTRAINT [FK_Dosen_Type_Dosen] FOREIGN KEY([Kode_Type_Dosen])
REFERENCES [dbo].[Type_Dosen] ([Kode_Type_Dosen])
GO
ALTER TABLE [dbo].[Dosen] CHECK CONSTRAINT [FK_Dosen_Type_Dosen]
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_Mahasiswa_Agama] FOREIGN KEY([Kode_Agama])
REFERENCES [dbo].[Agama] ([Kode_Agama])
GO
ALTER TABLE [dbo].[Mahasiswa] CHECK CONSTRAINT [FK_Mahasiswa_Agama]
GO
ALTER TABLE [dbo].[Mahasiswa]  WITH CHECK ADD  CONSTRAINT [FK_Mahasiswa_Jurusan] FOREIGN KEY([Kode_Jurusan])
REFERENCES [dbo].[Jurusan] ([Kode_Jurusan])
GO
ALTER TABLE [dbo].[Mahasiswa] CHECK CONSTRAINT [FK_Mahasiswa_Jurusan]
GO
ALTER TABLE [dbo].[Nilai]  WITH CHECK ADD  CONSTRAINT [FK_Nilai_Ujian] FOREIGN KEY([Kode_Mahasiswa])
REFERENCES [dbo].[Mahasiswa] ([Kode_Mahasiswa])
GO
ALTER TABLE [dbo].[Nilai] CHECK CONSTRAINT [FK_Nilai_Ujian]
GO
ALTER TABLE [dbo].[Nilai]  WITH CHECK ADD  CONSTRAINT [FK_Nilai_Ujian1] FOREIGN KEY([Kode_Ujian])
REFERENCES [dbo].[Ujian] ([Kode_Ujian])
GO
ALTER TABLE [dbo].[Nilai] CHECK CONSTRAINT [FK_Nilai_Ujian1]
GO
ALTER TABLE [dbo].[Type_Dosen]  WITH CHECK ADD  CONSTRAINT [FK_Type_Dosen_Type_Dosen] FOREIGN KEY([Kode_Type_Dosen])
REFERENCES [dbo].[Type_Dosen] ([Kode_Type_Dosen])
GO
ALTER TABLE [dbo].[Type_Dosen] CHECK CONSTRAINT [FK_Type_Dosen_Type_Dosen]
GO
