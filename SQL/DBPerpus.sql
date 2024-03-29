USE [DBPerpustakaan]
GO
/****** Object:  Table [dbo].[Buku]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  Table [dbo].[Kategori]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  Table [dbo].[Peminjaman]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  View [dbo].[vwTotalKategori]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  View [dbo].[vwTotalBuku]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  Table [dbo].[Member]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  Table [dbo].[Denda]    Script Date: 11/9/2023 11:51:18 AM ******/
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
/****** Object:  View [dbo].[vwDendaHari]    Script Date: 11/9/2023 11:51:18 AM ******/
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

--Soal 01 A
--Alter Table:Bagaimana cara menambahkan kolom 'Alamat' pada tabel Member?
ALTER TABLE Member
ADD Alamat VARCHAR(255);

--Soal 01 B
--Alter Table:Bagaimana cara mengupdate kolom 'Alamat' pada member bernama John Doe?
update Member set Alamat = 'Jln Langsat no 13' where Nama = 'John Doe'
select * from Member

--Soal 02
--Bagaimana cara mengubah tipe data kolom alamat pada tabel member menjadi varchar 100?
alter table member alter column Alamat varchar(100)

--Soal 03 A
--Agregat:Hitung rata-rata denda yang dikenakan pada semua peminjaman.
SELECT AVG(Denda_Perhari) AS Rata_rata_Denda
FROM Denda;

--Soal 03 B
--Agregat:Menampilkan member yang terkena denda.
select mb.Nama, count(pj.Kode_Denda) Denda
from Peminjaman pj
join Member mb on pj.Kode_Member = mb.Kode_Member
group by mb.Nama


--Soal 04
--Agregat: Jumlah hari keterlambatan
select pj.Kode_Member, mb.Nama,DATEDIFF(DAY, Tanggal_Peminjaman, Tanggal_Pengembalian) keterlambatan 
from Peminjaman pj
join Member mb on pj.Kode_Member = mb.Kode_Member
where DATEDIFF(DAY, Tanggal_Peminjaman, Tanggal_Pengembalian) > 7

--Soal 05
--Having, Select, Join, Where, Group By:Tampilkan nama member dan total denda yang mereka terima, hanya untuk member yang memiliki total denda di atas 15,000.
SELECT M.Nama, SUM(D.Denda_Perhari) AS Total_Denda
FROM Member M
JOIN Peminjaman P ON M.Kode_Member = P.Kode_Member
JOIN Denda D ON P.Kode_Denda = D.Kode_Denda
GROUP BY M.Kode_Member, M.Nama
HAVING SUM(D.Denda_Perhari) > 15000;

--Soal 06
--Subquery (tanpa menampilkan view):Tampilkan judul buku yang paling sering dipinjam.
SELECT B.Judul_buku
FROM Buku B
WHERE B.kode_buku = (
    SELECT TOP 1 Kode_Buku
    FROM Peminjaman
    GROUP BY Kode_Buku
    ORDER BY COUNT(*) DESC
);
--menambahkan kolom didalam tabel peminjaman
alter table Peminjaman 
Add Kode_Buku CHAR(5);
update Peminjaman set Kode_Buku = 'AB123' where Kode_Kategori = 'A001'
update Peminjaman set Kode_Buku = 'SD987' where Kode_Kategori = 'S002'
update Peminjaman set Kode_Buku = 'INT11' where Kode_Member = 'KM002'
update Peminjaman set Kode_Buku = 'INR34' where Kode_Kategori = 'IN01'
update Peminjaman set Kode_Buku = 'TAL17' where Kode_Kategori = 'T003'

select * from Peminjaman

--soal07
--Nampilkan jumlah buku yang dipinjam berdasarkan kategori
alter view vwTotalKategori as
select kt.Nama_Kategori ,pj.Kode_Kategori,count(pj.Kode_Kategori) Jumlah
from Peminjaman pj
join Kategori kt on pj.Kode_Kategori = kt.Kode_Kategori
join Buku bk on kt.Kode_Buku = bk.Kode_Buku
group by kt.Nama_Kategori ,pj.Kode_Kategori

--soal 08a
--Nampilkan jumlah buku yang paling sering dipinjam
select *
from vwTotalKategori
where Jumlah = (select max(Jumlah) from vwTotalKategori)

--8b
--Nampilkan jumlah buku yang paling sedikit dipinjam 
select *
from vwTotalKategori
where Jumlah = (select min(Jumlah) from vwTotalKategori)

--soal 9a
--manampilkan banyak buku di pinjam berdasarkan judul buku
create view vwTotalBuku as
select bk.Judul_Buku ,bk.Kode_Buku,count(bk.Kode_Buku) Jumlah
from Peminjaman pj
join Kategori kt on pj.Kode_Kategori = kt.Kode_Kategori
join Buku bk on kt.Kode_Buku = bk.Kode_Buku
group by bk.Judul_Buku ,bk.Kode_Buku

--10
--denda member
select mb.Nama, mb.Kode_Member , sum((DATEDIFF(DAY, pj.Tanggal_Peminjaman, pj.Tanggal_Pengembalian)-7) * d.Denda_Perhari) as JumlahDenda
from Peminjaman pj
join Member mb on pj.Kode_Member = mb.Kode_Member
join Denda d on pj.Kode_Denda = d.Kode_Denda
group by mb.Nama, mb.Kode_Member
