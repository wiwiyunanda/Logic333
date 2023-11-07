INSERT INTO Jurusan (Kode_Jurusan, Nama_Jurusan, Status_Jurusan)
VALUES
('J001', 'Teknik Informatika',	'Aktif'),
('J002', 'Management Informatika',	'Aktif'),
('J003', 'Sistem Informasi', 'Non Aktif'),
('J004', 'Sistem Komputer',	'Aktif'),
('J005', 'Komputer Akuntansi', 'Non Aktif')

SELECT * FROM Jurusan

INSERT INTO Agama (Kode_Agama, Deskripsi)
VALUES
('A001', 'Islam'),
('A002', 'Kristen'),
('A003', 'Katolik'),
('A004', 'Hindu'),
('A005', 'Budha')

SELECT * FROM Agama

INSERT INTO Mahasiswa (Kode_Mahasiswa, Nama_Mahasiswa, Alamat, Kode_Agama, Kode_Jurusan)
VALUES
('M001', 'Budi Gunawan', 'Jl. Mawar No 3 RT 05 Cicalengka, Bandung', 'A001', 'J001'),
('M002', 'Rinto Raharjo', 'Jl. Kebagusan No. 33 RT04 RW06 Bandung',	'A002',	'J002'),
('M003', 'Asep Saepudin', 'Jl. Sumatera No. 12 RT02 RW01, Ciamis',	'A001',	'J003'),
('M004', 'M. Hafif Isbullah', 'Jl. Jawa No 01 RT01 RW01, Jakarta Pusat', 'A001', 'J001'),
('M005', 'Cahyono',	'Jl. Niagara No. 54 RT01 RW09, Surabaya',	'A003',	'J002')

SELECT * FROM Mahasiswa 

INSERT INTO Type_Dosen (Kode_Type_Dosen, Deskripsi)
VALUES
('T001', 'Tetap'),
('T002', 'Honorer'),
('T003', 'Expertise')

SELECT * FROM Type_Dosen

INSERT INTO Dosen (Kode_Dosen, Nama_Dosen, Kode_Jurusan, Kode_Type_Dosen)
VALUES
('D001', 'Prof. Dr. Retno Wahyuningsih', 'J001', 'T002'),
('D002', 'Prof. Roy M. Sutikno', 'J002', 'T001'),
('D003', 'Prof. Hendri A. Verburgh', 'J003', 'T002'),
('D004', 'Prof. Risma Suparwata', 'J004', 'T002'),
('D005', 'Prof. Amir Sjarifuddin Madjid, MM, MA', 'J005', 'T001')

SELECT * FROM Dosen

INSERT INTO UJIAN (Kode_Ujian, Nama_Ujian, Status_Ujian)
VALUES
('U001', 'Algoritma', 'Aktif'),
('U002', 'Aljabar',	'Aktif'),
('U003', 'Statistika', 'Non Aktif'),
('U004', 'Etika Profesi', 'Non Aktif'),
('U005', 'Bahasa Inggris', 'Aktif')

SELECT * FROM UJIAN

INSERT INTO NILAI (Kode_Mahasiswa, Kode_Ujian, Nilai)
VALUES
('M004', 'U001', '90'),
('M001', 'U001', '80'),
('M002', 'U003', '85'),
('M004', 'U002', '95'),
('M005', 'U005', '70')

SELECT * FROM NILAI 

---Soal no 2. Buatlah query untuk mengubah column Nama_Dosen dengan type data VarChar dengan panjang 200 pada table Dosen
ALTER TABLE DOSEN ALTER COLUMN Nama_Dosen varchar(200)

-- soal no 3. Buatlah query untuk menampilkan data berikut:			
--Kode_Mahasiswa		Nama_Mahasiswa		Nama_Jurusan				Agama
--M001					Budi Gunawan		Teknik Informatika			Islam
SELECT Kode_Mahasiswa, Nama_Mahasiswa, jurusan.Nama_Jurusan, Agama.deskripsi as Agama
FROM Mahasiswa
inner join Jurusan on Jurusan.Kode_Jurusan = Mahasiswa.Kode_Jurusan
inner join Agama on Agama.Kode_Agama = Mahasiswa.Kode_Agama
WHERE Kode_Mahasiswa ='M001'

--Soal no 4. Buatlah query untuk menampilkan data mahasiswa yang mengambil jurusan dengan Status Jurusan = Non Aktif
SELECT * ,Jurusan.Status_Jurusan as status_
FROM Mahasiswa
inner join Jurusan on Jurusan.Kode_Jurusan = Mahasiswa.Kode_Jurusan
WHERE Status_Jurusan = 'Non Aktif'

--soal 5. Buatlah query untuk menampilkan data mahasiswa dengan nilai diatas 80 untuk ujian dengan Status Ujian = Aktif
SELECT Mahasiswa.* , Nilai.Nilai, Ujian.Status_Ujian
FROM Nilai
inner join Mahasiswa on Nilai.Kode_Mahasiswa = Mahasiswa.Kode_Mahasiswa
inner join Ujian on Ujian.Kode_Ujian = Nilai.Kode_Ujian
WHERE Status_Ujian = 'Aktif' AND Nilai > 80

--soal6. Buatlah query untuk menampilkan data jurusan yang mengandung kata 'sistem'.
-- '%sistem' -> belakang aja ada sistem
--'%sistem% -> dimanapun ada sistem
SELECT * FROM Jurusan
WHERE Nama_Jurusan LIKE 'sistem%'

--soal7. Buatlah query untuk menampilkan mahasiswa yang mengambil ujian lebih dari 1.
 SELECT mhs.Kode_Mahasiswa, mhs.Nama_Mahasiswa, COUNT(uji.Id) Jumlah 
 FROM Mahasiswa mhs
 JOIN Nilai nil ON
	mhs.Kode_Mahasiswa = nil.Kode_Mahasiswa
 JOIN Ujian uji ON
	nil.Kode_Ujian = uji.Kode_Ujian
GROUP BY mhs.Kode_Mahasiswa, mhs.Nama_Mahasiswa
HAVING COUNT(uji.Id) > 1

--soal8. Buatlah query untuk menampilkan data seperti berikut:
--Kode_Mahasiswa	Nama_Mahasiswa	Nama_Jurusan			Agama		Nama_Dosen						Status_Jurusan		Deskripsi
--M001				Budi Gunawan	Teknik Informatika		Islam		Prof. Dr. Retno Wahyuningsih	Aktif				Honorer
SELECT Mahasiswa.Kode_Mahasiswa, Mahasiswa.Nama_Mahasiswa, Jurusan.Nama_Jurusan, Agama.deskripsi as Agama, Dosen.Nama_Dosen, Jurusan.Status_Jurusan, Type_Dosen.Deskripsi
FROM Mahasiswa
inner join Jurusan on Mahasiswa.Kode_Jurusan = Jurusan.Kode_Jurusan
inner join Agama on Mahasiswa.Kode_Agama = Agama.Kode_Agama
inner join Dosen on Jurusan.Kode_Jurusan = Dosen.Kode_Jurusan
inner join Type_Dosen on Dosen.Kode_Type_Dosen = Type_Dosen.Kode_Type_Dosen
WHERE Kode_Mahasiswa ='M001'

--Soal9. Buatlah query untuk create view dengan menggunakan data pada no. 8, beserta query untuk mengeksekusi view tersebut.
CREATE VIEW vwsoal8
as
SELECT Mahasiswa.Kode_Mahasiswa, Mahasiswa.Nama_Mahasiswa, Jurusan.Nama_Jurusan, Agama.deskripsi as Agama, Dosen.Nama_Dosen, Jurusan.Status_Jurusan, Type_Dosen.Deskripsi
FROM Mahasiswa
inner join Jurusan on Mahasiswa.Kode_Jurusan = Jurusan.Kode_Jurusan
inner join Agama on Mahasiswa.Kode_Agama = Agama.Kode_Agama
inner join Dosen on Jurusan.Kode_Jurusan = Dosen.Kode_Jurusan
inner join Type_Dosen on Dosen.Kode_Type_Dosen = Type_Dosen.Kode_Type_Dosen
WHERE Kode_Mahasiswa ='M001'

SELECT * FROM vwsoal8

--soal10. Buatlah query untuk menampilkan data mahasiswa beserta nilainya (mahasiswa yang tidak punya nilai juga ditampilkan).
SELECT *
FROM Mahasiswa mhs
LEFT JOIN Nilai nil on Mhs.Kode_Mahasiswa = nil.Kode_Mahasiswa

--soal11. Buatlah query untuk menampilkan data mahasiswa beserta nilainya yang memiliki nilai: minimum, maksimum, diatas rata-rata, dibawah rata-rata
--a. minimum
SELECT mhs.Kode_Mahasiswa, mhs.Nama_Mahasiswa, nil.Nilai Minimum
FROM Mahasiswa mhs
	JOIN Nilai nil on 
	Mhs.Kode_Mahasiswa = nil.Kode_Mahasiswa
WHERE nil.Nilai = (SELECT MIN(Nilai) FROM Nilai)

--b. Maksimum
SELECT mhs.Kode_Mahasiswa, mhs.Nama_Mahasiswa, nil.Nilai Maksimum
FROM Mahasiswa mhs
	JOIN Nilai nil on 
	Mhs.Kode_Mahasiswa = nil.Kode_Mahasiswa
WHERE nil.Nilai = (SELECT MAX(Nilai) FROM Nilai)

--c. diatas rata-rata
SELECT mhs.Kode_Mahasiswa, mhs.Nama_Mahasiswa, nil.Nilai Minimum
FROM Mahasiswa mhs
	JOIN Nilai nil on 
	Mhs.Kode_Mahasiswa = nil.Kode_Mahasiswa
WHERE nil.Nilai > (SELECT AVG (Nilai) FROM Nilai)

--d. dibawah rata-rata
SELECT mhs.Kode_Mahasiswa, mhs.Nama_Mahasiswa, nil.Nilai Minimum
FROM Mahasiswa mhs
	JOIN Nilai nil on 
	Mhs.Kode_Mahasiswa = nil.Kode_Mahasiswa
WHERE nil.Nilai < (SELECT AVG (Nilai) FROM Nilai)

--soal12. Tambahkan kolom Biaya dengan type data Money/Number/Decimal 18,4 pada table Jurusan
ALTER TABLE Jurusan
ADD Biaya Decimal (18,4)

--Soal13. Tambahkan nilai kolom Biaya pada table Jurusan sebagai berikut:
--Teknik Informatika		1.500.000
--Management Informatika	1.550.000
--Sistem Informasi			1.475.000
--Sistem Komputer			1.350.000
--Komputer Akuntansi		1.535.000

UPDATE Jurusan SET Biaya = 1500000 WHERE Kode_Jurusan = 'J001'
UPDATE Jurusan SET Biaya = 1550000 WHERE Kode_Jurusan = 'J002'
UPDATE Jurusan SET Biaya = 1475000 WHERE Kode_Jurusan = 'J003'
UPDATE Jurusan SET Biaya = 1350000 WHERE Kode_Jurusan = 'J004'
UPDATE Jurusan SET Biaya = 1535000 WHERE Kode_Jurusan = 'J005'
SELECT * FROM Jurusan