USE [DBHospital]
GO
/****** Object:  Table [dbo].[Pasien]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kd_pasien] [char](10) NOT NULL,
	[kd_dokter] [char](10) NOT NULL,
	[nama_pasien] [varchar](30) NOT NULL,
	[alamat_pasien] [varchar](50) NOT NULL,
	[keluhan] [varchar](50) NOT NULL,
	[tanggal_datang] [datetime] NULL,
	[tanggal_pulang] [datetime] NULL,
 CONSTRAINT [PK_Pasien] PRIMARY KEY CLUSTERED 
(
	[kd_pasien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwNamaSama]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwNamaSama]
AS
SELECt nama_pasien FROM Pasien WHERE nama_pasien LIKE 's%'
GO
/****** Object:  Table [dbo].[Dokter]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dokter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kd_dokter] [char](10) NOT NULL,
	[nama_dokter] [varchar](100) NOT NULL,
	[alamat_dokter] [varchar](50) NOT NULL,
	[spesialisasi_dokter] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dokter] PRIMARY KEY CLUSTERED 
(
	[kd_dokter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pembayaran]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pembayaran](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kd_pembayaran] [char](10) NOT NULL,
	[kd_pasien] [char](10) NOT NULL,
	[kd_petugas] [char](10) NOT NULL,
	[jumlah_harga] [decimal](8, 4) NOT NULL,
 CONSTRAINT [PK_Pembayaran] PRIMARY KEY CLUSTERED 
(
	[kd_pembayaran] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Petugas]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Petugas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kd_petugas] [char](10) NOT NULL,
	[nama_petugas] [varchar](30) NOT NULL,
	[alamat_petugas] [varchar](50) NOT NULL,
	[jam_jaga] [char](15) NOT NULL,
 CONSTRAINT [PK_Petugas] PRIMARY KEY CLUSTERED 
(
	[kd_petugas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RawatInap]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawatInap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kd_rawat_inap] [char](10) NOT NULL,
	[nama_pasien] [varchar](30) NOT NULL,
	[kd_ruang] [char](10) NOT NULL,
	[kd_pasien] [char](10) NOT NULL,
 CONSTRAINT [PK_RawatInap] PRIMARY KEY CLUSTERED 
(
	[kd_rawat_inap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ruang]    Script Date: 11/9/2023 11:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[kd_ruang] [char](10) NOT NULL,
	[nama_ruang] [varchar](30) NOT NULL,
	[nama_gedung] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Ruang] PRIMARY KEY CLUSTERED 
(
	[kd_ruang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dokter] ON 

INSERT [dbo].[Dokter] ([Id], [kd_dokter], [nama_dokter], [alamat_dokter], [spesialisasi_dokter]) VALUES (1, N'DA1001    ', N'Dr. William Anderson Manurung Sp.N', N'Jl. Merdeka No.5', N'Neurologi')
INSERT [dbo].[Dokter] ([Id], [kd_dokter], [nama_dokter], [alamat_dokter], [spesialisasi_dokter]) VALUES (3, N'DD3002    ', N'Drg. Muhammad Asna Riwanda ', N'Jl. Brutus No.4', N'Gigi')
INSERT [dbo].[Dokter] ([Id], [kd_dokter], [nama_dokter], [alamat_dokter], [spesialisasi_dokter]) VALUES (5, N'DO9007    ', N'Dr. Elizabeth Andriyawati SP.M', N'Jl. Cut Dian No.13', N'Kesehatan Mata')
INSERT [dbo].[Dokter] ([Id], [kd_dokter], [nama_dokter], [alamat_dokter], [spesialisasi_dokter]) VALUES (6, N'DR5065    ', N'Dr. Malik Budi Jonathan', N'Jl. Sutantyo No.21', N'Umum)')
INSERT [dbo].[Dokter] ([Id], [kd_dokter], [nama_dokter], [alamat_dokter], [spesialisasi_dokter]) VALUES (4, N'DS1508    ', N'Dr. Janus Azerbain Mossadegh Sp.PD', N'Jl. Serawan No.41', N'Penyakit Dalam')
INSERT [dbo].[Dokter] ([Id], [kd_dokter], [nama_dokter], [alamat_dokter], [spesialisasi_dokter]) VALUES (2, N'DT1003    ', N'Dr. Retna Fatmawati Sp.THT', N'Jl. Bukit Duri No.9', N'Telinga, Hidung dan Tenggorokan')
SET IDENTITY_INSERT [dbo].[Dokter] OFF
GO
SET IDENTITY_INSERT [dbo].[Pasien] ON 

INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (1, N'P001      ', N'DA1001    ', N'Budi', N'Jl. Nuri 25', N'Ayan', CAST(N'2023-01-02T00:00:00.000' AS DateTime), CAST(N'2023-01-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (2, N'P002      ', N'DS1508    ', N'Asep', N'Jl. Solo 123', N'Asam Lambung', CAST(N'2023-04-22T00:00:00.000' AS DateTime), CAST(N'2023-04-29T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (3, N'P003      ', N'DT1003    ', N'Romi', N'Jl. Durian 15', N'Telinga bernanah', CAST(N'2023-04-23T00:00:00.000' AS DateTime), CAST(N'2023-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (4, N'P004      ', N'DD3002    ', N'Tono', N'Jl. Gajah 33', N'Sakit Gigi', CAST(N'2023-05-14T00:00:00.000' AS DateTime), CAST(N'2023-05-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (5, N'P005      ', N'DO9007    ', N'Sony', N'Jl. Harimau 25', N'Katarak', CAST(N'2023-08-09T00:00:00.000' AS DateTime), CAST(N'2023-08-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (6, N'P006      ', N'DR5065    ', N'Riko', N'Jl. Semangka 13', N'Demam', CAST(N'2023-03-22T00:00:00.000' AS DateTime), CAST(N'2023-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (7, N'P007      ', N'DR5065    ', N'Bagus', N'Jl. Kemanggisan 15', N'Demam', CAST(N'2023-03-23T00:00:00.000' AS DateTime), CAST(N'2023-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (12, N'P008      ', N'DS1508    ', N'Sati', N'Jl. Langsat 25', N'Usus Buntu', CAST(N'2023-06-09T00:00:00.000' AS DateTime), CAST(N'2023-09-13T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (13, N'P009      ', N'DA1001    ', N'Ratna', N'Jl. Gandaria 33', N'Stroke', CAST(N'2023-01-31T00:00:00.000' AS DateTime), CAST(N'2023-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (14, N'P010      ', N'DT1003    ', N'Mawar', N'Jl. Ahmad Dahlan 2', N'Otitis Interal', CAST(N'2023-11-05T00:00:00.000' AS DateTime), CAST(N'2023-11-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (15, N'P011      ', N'DA1001    ', N'Erika', N'Jl. Antasari 11', N'Ayan', CAST(N'2023-07-04T00:00:00.000' AS DateTime), CAST(N'2023-07-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Pasien] ([Id], [kd_pasien], [kd_dokter], [nama_pasien], [alamat_pasien], [keluhan], [tanggal_datang], [tanggal_pulang]) VALUES (16, N'P012      ', N'DD3002    ', N'Satya', N'Jl. Proklamasi 63', N'Gigi Palsu', CAST(N'2023-03-16T00:00:00.000' AS DateTime), CAST(N'2023-03-17T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Pasien] OFF
GO
SET IDENTITY_INSERT [dbo].[Pembayaran] ON 

INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (2, N'PB001     ', N'P001      ', N'F001      ', CAST(300.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (3, N'PB002     ', N'P002      ', N'F004      ', CAST(150.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (4, N'PB003     ', N'P003      ', N'F002      ', CAST(450.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (5, N'PB004     ', N'P004      ', N'F003      ', CAST(250.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (6, N'PB005     ', N'P005      ', N'F001      ', CAST(150.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (7, N'PB006     ', N'P006      ', N'F002      ', CAST(200.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (8, N'PB007     ', N'P007      ', N'F001      ', CAST(200.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (9, N'PB008     ', N'P008      ', N'F004      ', CAST(5000.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (10, N'PB009     ', N'P009      ', N'F001      ', CAST(3500.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (11, N'PB010     ', N'P010      ', N'F004      ', CAST(400.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (12, N'PB011     ', N'P011      ', N'F002      ', CAST(300.0000 AS Decimal(8, 4)))
INSERT [dbo].[Pembayaran] ([id], [kd_pembayaran], [kd_pasien], [kd_petugas], [jumlah_harga]) VALUES (13, N'PB012     ', N'P012      ', N'F003      ', CAST(500.0000 AS Decimal(8, 4)))
SET IDENTITY_INSERT [dbo].[Pembayaran] OFF
GO
SET IDENTITY_INSERT [dbo].[Petugas] ON 

INSERT [dbo].[Petugas] ([Id], [kd_petugas], [nama_petugas], [alamat_petugas], [jam_jaga]) VALUES (1, N'F001      ', N'Yasper', N'Jl.Margonda', N'6am-11pm       ')
INSERT [dbo].[Petugas] ([Id], [kd_petugas], [nama_petugas], [alamat_petugas], [jam_jaga]) VALUES (2, N'F002      ', N'Niko', N'Jl.Gandaria', N'12pm-5pm       ')
INSERT [dbo].[Petugas] ([Id], [kd_petugas], [nama_petugas], [alamat_petugas], [jam_jaga]) VALUES (3, N'F003      ', N'Dias', N'Jl.Merdeka', N'6pm-11pm       ')
INSERT [dbo].[Petugas] ([Id], [kd_petugas], [nama_petugas], [alamat_petugas], [jam_jaga]) VALUES (4, N'F004      ', N'Gio', N'Jl.Proklamasi', N'12am-5am       ')
SET IDENTITY_INSERT [dbo].[Petugas] OFF
GO
SET IDENTITY_INSERT [dbo].[RawatInap] ON 

INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (1, N'RI001     ', N'Budi', N'R001      ', N'P001      ')
INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (2, N'RI002     ', N'Asep', N'R002      ', N'P002      ')
INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (3, N'RI003     ', N'Romi', N'R003      ', N'P003      ')
INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (4, N'RI004     ', N'Tono', N'R004      ', N'P004      ')
INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (5, N'RI005     ', N'Sony', N'R005      ', N'P005      ')
INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (6, N'RI006     ', N'Sati', N'R008      ', N'P008      ')
INSERT [dbo].[RawatInap] ([Id], [kd_rawat_inap], [nama_pasien], [kd_ruang], [kd_pasien]) VALUES (7, N'RI007     ', N'Ratna', N'R010      ', N'P009      ')
SET IDENTITY_INSERT [dbo].[RawatInap] OFF
GO
SET IDENTITY_INSERT [dbo].[Ruang] ON 

INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (1, N'R001      ', N'Melati', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (2, N'R002      ', N'Anggrek', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (3, N'R003      ', N'LilI', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (4, N'R004      ', N'Flora', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (5, N'R005      ', N'Asoka', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (6, N'R006      ', N'Akasia', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (7, N'R007      ', N'Aster', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (8, N'R008      ', N'Matahari', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (9, N'R009      ', N'Dahlia', N'Bunga')
INSERT [dbo].[Ruang] ([Id], [kd_ruang], [nama_ruang], [nama_gedung]) VALUES (10, N'R010      ', N'Mawar', N'Bunga')
SET IDENTITY_INSERT [dbo].[Ruang] OFF
GO
ALTER TABLE [dbo].[Pasien]  WITH CHECK ADD  CONSTRAINT [FK_Pasien_Dokter] FOREIGN KEY([kd_dokter])
REFERENCES [dbo].[Dokter] ([kd_dokter])
GO
ALTER TABLE [dbo].[Pasien] CHECK CONSTRAINT [FK_Pasien_Dokter]
GO
ALTER TABLE [dbo].[Pembayaran]  WITH CHECK ADD  CONSTRAINT [FK_Pembayaran_Pasien] FOREIGN KEY([kd_pasien])
REFERENCES [dbo].[Pasien] ([kd_pasien])
GO
ALTER TABLE [dbo].[Pembayaran] CHECK CONSTRAINT [FK_Pembayaran_Pasien]
GO
ALTER TABLE [dbo].[Pembayaran]  WITH CHECK ADD  CONSTRAINT [FK_Pembayaran_Petugas] FOREIGN KEY([kd_petugas])
REFERENCES [dbo].[Petugas] ([kd_petugas])
GO
ALTER TABLE [dbo].[Pembayaran] CHECK CONSTRAINT [FK_Pembayaran_Petugas]
GO
ALTER TABLE [dbo].[RawatInap]  WITH CHECK ADD  CONSTRAINT [FK_RawatInap_Pasien] FOREIGN KEY([kd_pasien])
REFERENCES [dbo].[Pasien] ([kd_pasien])
GO
ALTER TABLE [dbo].[RawatInap] CHECK CONSTRAINT [FK_RawatInap_Pasien]
GO
ALTER TABLE [dbo].[RawatInap]  WITH CHECK ADD  CONSTRAINT [FK_RawatInap_Ruang] FOREIGN KEY([kd_ruang])
REFERENCES [dbo].[Ruang] ([kd_ruang])
GO
ALTER TABLE [dbo].[RawatInap] CHECK CONSTRAINT [FK_RawatInap_Ruang]
GO


--1. Ubahlah tipe data  tanggal datang pada tabel jadi datetime  (Alter table alter Colom)
ALTER TABLE Pasien ALTER COLUMN	tanggal_datang datetime

--2. Tambahkan kolom tanggal pulang dengan tipe data datetime
ALTER TABLE Pasien ADD tanggal_pulang datetime

--3. Carilah total pasien dengan keluhan yang sama(COUNT)
SELECT Keluhan, COUNT(keluhan) jumlahPasien
FROM Pasien
GROUP BY Keluhan

--4. Tampilkan pasien dengan pembayaran paling tinggi, paling rendah, dibawah rata2 dan diatas rata2
select ps.nama_pasien,pb.kd_pembayaran, max(pb.jumlah_harga) MaxPembayaran
from Pasien ps
join Pembayaran pb on ps.kd_pasien = pb.kd_pasien
where pb.jumlah_harga = (select max(jumlah_harga) from Pembayaran)
group by ps.nama_pasien,pb.kd_pembayaran


select ps.nama_pasien,pb.kd_pembayaran, min(pb.jumlah_harga) MaxPembayaran
from Pasien ps
join Pembayaran pb on ps.kd_pasien = pb.kd_pasien
where pb.jumlah_harga = (select min(jumlah_harga) from Pembayaran)
group by ps.nama_pasien,pb.kd_pembayaran


select ps.nama_pasien,pb.kd_pembayaran, avg(pb.jumlah_harga) MaxPembayaran
from Pasien ps
join Pembayaran pb on ps.kd_pasien = pb.kd_pasien
where pb.jumlah_harga > (select avg(jumlah_harga) from Pembayaran)
group by ps.nama_pasien,pb.kd_pembayaran

select ps.nama_pasien,pb.kd_pembayaran, min(pb.jumlah_harga) MaxPembayaran
from Pasien ps
join Pembayaran pb on ps.kd_pasien = pb.kd_pasien
where pb.jumlah_harga > (select min(jumlah_harga) from Pembayaran)
group by ps.nama_pasien,pb.kd_pembayaran

--5. Tampilkan nama ruang yang diawali dengan huruf M serta nama pasiennya
select ru.nama_ruang, ri.nama_pasien
from RawatInap ri
join Ruang ru on ri.kd_ruang = ru.kd_ruang
where nama_ruang like 'M%'


--6. Buatlah view dengan pasien yang memiliki inisial s
create view vwNamaPasien as
select * 
from Pasien
where nama_pasien like 'S%'

--7.  tampilkan record dokter yang mengobati pasien lebih satu (GROUP BY, HAVING)
select dr.nama_dokter, count(dr.nama_dokter) as jumlah
from Pasien ps
join Dokter dr on ps.kd_dokter = dr.kd_dokter
group by dr.nama_dokter
having count(dr.nama_dokter) > 1

--8. tampilkan nama pasien dan nama ruangan yang dirawat inap
select ri.nama_pasien, ru.nama_ruang
from RawatInap ri
join ruang ru on ri.kd_ruang = ru.kd_ruang

--9. Tampilkan pasien yang masuk mulai bulan april (ngitung bulan)
    --a masuk mulai bulan april (ngitung bulan)
    select * 
    from Pasien
    where MONTH(tanggal_datang) = '4'
    --b masuk antara bulan april dan bulan juni (ngitung bulan)
    select * 
    from Pasien
    where MONTH(tanggal_datang) between '4' and '6'

--10. Tampilkan dokter yang tidak memiliki spesialiasi serta nama pasien yang dirawatnya
select dr.nama_dokter, p.nama_pasien, dr.spesialisasi_dokter
from Pasien p
join Dokter dr on p.kd_dokter = dr.kd_dokter
where spesialisasi_dokter = 'umum)'

--11. Total penghasilan Hospital
select sum(jumlah_harga) as total_penghasilan
from Pembayaran
