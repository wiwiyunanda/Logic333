CREATE DATABASE  DBPenerbit

USE DBPenerbit

CREATE TABLE [dbo].tblPengarang(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kd_Pengarang] [Varchar] (7) NOT NULL,
	[Nama] [Varchar] (30) NOT NULL,
	[Alamat] [Varchar] (80) NOT NULL,
	[Kota] [Varchar] (15) NOT NULL,
	[Kelamin] [Varchar] (1) NOT NULL,
	CONSTRAINT [PK_tblPengarang] PRIMARY KEY CLUSTERED (
		[Kd_Pengarang] ASC
	)
) ON [PRIMARY]


INSERT INTO [dbo].[tblPengarang]
           ([Kd_Pengarang]
           ,[Nama]
           ,[Alamat]
           ,[Kota]
           ,[Kelamin])
     VALUES
		('P0002', 'Rian', 'Jl. Solo 123', 'Yogya', 'P'),
		('P0003', 'Suwadi', 'Jl. Semangka 13', 'Bandung', 'P'),
		('P0004', 'Siti', 'Jl. Durian 15', 'Solo', 'W'),
		('P0005', 'Amir', 'Jl. Gajah 33', 'Kudus', 'P'),
		('P0006', 'Suparman', 'Jl. Harimau 25', 'Jakarta', 'P'),
		('P0007', 'Jaja', 'Jl. Singa 7', 'Bandung', 'P'),
		('P0008', 'Saman', 'Jl. Naga 12', 'Yogya', 'P'),
		('P0009', 'Anwar', 'Jl. Tidar 6A', 'Magelang', 'P'),
		('P0010', 'Fatmawati', 'Jl. Renjana 4', 'Bogor', 'W')
           
SELECT * FROM tblPengarang

CREATE TABLE [dbo].tblGaji(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Kd_Pengarang] [Varchar] (7) NOT NULL,
	[Gaji] [Decimal] (18,4) NOT NULL,
)
-- Menghubungkan antara tblGaji & tblPengarang
ALTER TABLE [dbo].tblGaji WITH CHECK ADD CONSTRAINT [FK_tblGaji_tblPengarang] FOREIGN 
KEY([Kd_Pengarang]) REFERENCES [dbo].[tblPengarang]([Kd_Pengarang])

INSERT INTO tblGaji ([Kd_Pengarang], [Gaji])
VALUES
('P0005','700000'),
('P0004', '500000'),
('P0003', '1000000'),
('P0010', '600000'),
('P0008', '750000')

SELECT * FROM tblPengarang
SELECT * FROM tblGaji

--Soal 02 Buatlah view untuk attribute Kd_Pengarang, Nama, Kota dengan nama vwPengarang

CREATE VIEW vwPengarang
AS
SELECT Kd_Pengarang, Nama, Kota FROM tblPengarang

SELECT * FROM vwPengarang

--Soal 3a Tampilkan ‘Kd_Pengarang, nama’ yang dikelompokan atas nama

SELECT Kd_Pengarang, nama FROM tblPengarang
ORDER BY Nama

--Soal 3b Tampilkan ‘Kd_Pengarang, nama’ yang dikelompokan atas kota
SELECT kota, Kd_Pengarang, nama FROM tblPengarang
ORDER BY Kota

--Soal 3c. hitung dan tampilkan jumlah pengarang
SELECT COUNT(ID) Jumlah FROM tblPengarang

--Soal 3d. tampilkan record kota dan jumlah kotanya
SELECT Kota, COUNT(ID) Jumlah FROM tblPengarang
GROUP BY Kota

--Soal 3e. Tampilkan record kota diatas 1 kota
SELECT Kota, COUNT(ID) Jumlah FROM tblPengarang
GROUP BY Kota
HAVING COUNT(ID) > 1

--Soal 3f. Tampilkan Kd_Pengarang yang terbesar dan terkecil
SELECT Max(Kd_Pengarang) Kd_Pengarang_Terbesar, MIN(Kd_Pengarang) Kd_Pengarang_Terkecil FROM tblPengarang 

--Soal 5a. Tampilkan gaji tertinggi dan terendah
SELECT MAX(Gaji) Gaji_terbesar, MIN(Gaji) Gaji_terendah FROM tblGaji

--5b. Tampilkan gaji diatas 600k
SELECT Gaji FROM tblGaji
WHERE Gaji > 600000
ORDER BY Gaji

SELECT* FROM tblGaji

--5c. Tampilkan jumlah gaji
SELECT SUM(Gaji) FROM tblGaji

--5d. Tampilkan jumlah gaji berdasarkan kota
SELECT tblGaji.Gaji, tblPengarang.Kota
FROM tblGaji
inner join tblPengarang on tblGaji.ID =tblPengarang.ID
ORDER BY Kota

--5e. Tampilkan seluruh record pengarang antara P0001-P0006 dari tabel pengarang.SELECT Kd_Pengarang FROM tblPengarangWHERE Kd_Pengarang BETWEEN 'P0001' and 'P0006'--5f. Tampilkan seluruh data yogya, solo, dan magelang dari tabel pengarang.SELECT * FROM tblPengarangWHERE Kota IN ('yogya', 'solo', 'magelang')ORDER BY Kota--5G. Tampilkan seluruh data yang bukan yogya dari tabel pengarang.SELECT * FROM tblPengarangWHERE kota != 'Yogya'ORDER BY Kota