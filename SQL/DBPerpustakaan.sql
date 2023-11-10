create database DBPerpustakaan

INSERT INTO Member (Kode_Member, Nama, Tanggal_Join)
VALUES
    ('KM001', 'John Doe', '2023-01-01 08:00:00'),
    ('KM002', 'Jane Smith', '2023-02-15 10:30:00'),
    ('KM003', 'Bob Johnson', '2023-03-20 14:45:00'),
    ('KM004', 'Alice Williams', '2023-04-05 18:20:00'),
    ('KM005', 'Charlie Brown', '2023-05-10 22:10:00'),
    ('KM006', 'Eva Davis', '2023-06-15 09:15:00'),
    ('KM007', 'Frank White', '2023-07-22 12:40:00'),
    ('KM008', 'Grace Miller', '2023-08-30 16:55:00'),
    ('KM009', 'Henry Lee', '2023-09-12 20:25:00'),
    ('KM010', 'Ivy Chen', '2023-10-18 23:45:00')

INSERT INTO Buku (Kode_Buku, Judul_Buku, [Tahun _Terbit])
VALUES
('AB123',    'Becoming by Michelle Obama',    '2019'),
('SD987',    'Dear Tomorrow oleh Maudy Ayunda',    '2021'),
('INR34',    'Rich Dad Poor Dad by Robert',    '2015'),
('INT11',    'The 5 Level of Leadership by John C. Maxwell',    '2019'),
('TAL17',    'Algorithms to Live By: The Computer Science',    '2010')

INSERT INTO Kategori (Kode_Kategori,Kode_Buku, Nama_Kategori)
VALUES
('A001', 'AB123', 'autobiografi'),
('S002', 'SD987', 'self_love'),
('IN01', 'INR34', 'inspirational'),
('T003', 'INT11', 'technology'),
('L001', 'TAL17', 'Sains')

INSERT INTO peminjaman (Kode_Peminjaman, Kode_Member, Kode_Kategori, Tanggal_Peminjaman, Tanggal_Pengembalian, Kode_Denda)
VALUES
('AB123', 'KM001', 'A001', '2023-11-01', '2023-11-15', 'KD010'),
('SD987', 'KM002', 'S002', '2023-11-02', '2023-11-15', 'KD006'),
('INR34', 'KM003', 'IN01', '2023-11-03', '2023-11-15', 'KD009'),
('INT11', 'KM004', 'IN01', '2023-11-04', '2023-11-15', 'KD008'),
('TAL17', 'KM005', 'T003', '2023-11-05', '2023-11-15', 'KD005'),
('AB133', 'KM006', 'A001', '2023-11-06', '2023-11-18', 'KD004'),
('SD917', 'KM007', 'S002', '2023-11-07', '2023-11-09', null),
('TAL57', 'KM008', 'T003', '2023-11-08', '2023-11-10', null),
('INR14', 'KM009', 'IN01', '2023-11-09', '2023-11-11', null),
('INT31', 'KM010', 'IN01', '2023-11-10', '2023-11-12', null);

update Peminjaman set Kode_Denda = null where Kode_Member = 'KM007'
update Peminjaman set Kode_Denda = null where Kode_Member = 'KM008'
update Peminjaman set Kode_Denda = null where Kode_Member = 'KM009'
update Peminjaman set Kode_Denda = null where Kode_Member = 'KM010'

INSERT INTO peminjaman (Kode_Peminjaman, Kode_Member, Kode_Kategori, Tanggal_Peminjaman, Tanggal_Pengembalian, Kode_Denda)
VALUES
('AB134', 'KM001', 'A001', '2023-11-01', '2023-11-15', null)

INSERT INTO Denda(Kode_Denda, Denda_Perhari)
VALUES
    ('KD001', 10500), 
    ('KD002', 8750),
    ('KD003', 15200),
    ('KD004', 12000),
    ('KD005', 18300),
    ('KD006', 22500),
    ('KD007', 14750),
    ('KD008', 20000),
    ('KD009', 25800),
    ('KD010', 30250)

alter table Denda drop column Kode_Peminjaman
select * from Member
select * from Buku
select * from Kategori
select * from Denda
select * from Peminjaman

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
select mb.Nama, mb.Kode_Member , sum(DATEDIFF(DAY, pj.Tanggal_Peminjaman, pj.Tanggal_Pengembalian) * d.Denda_Perhari) as JumlahDenda
from Peminjaman pj
join Member mb on pj.Kode_Member = mb.Kode_Member
join Denda d on pj.Kode_Denda = d.Kode_Denda
group by mb.Nama, mb.Kode_Member


