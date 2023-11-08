SELECT * FROM Outlet
SELECT * FROM Product
SELECT * FROM Selling
SELECT * FROM Kota
SELECT * FROM Provinsi

01. Tampilkan jumlah semua outlet:
	a. Dikelompokan berdasarkan Kota
	b. Dikelompokan berdasarkan Provinsi
02. Tampilkan total penjualan
	a. per outlet tanpa batas waktu.
	b. per Kota di periode April 2022
--	c. per provinsi tanpa batas waktu
03. Tampilkan barang
	a. Terlaris
	b. Tidak laris
	c. tidak terjual
--04. Tampilkan barang terlaris berdasarkan kota
--05. Tampilkan outlet dengan punjualan:
--	a. Terlaris
--	b. Sedikit laris
--06. Tampilkan barang dengan total penjualan:
--	a. Diatas rata-rata
--	b. Dibawah rata-rata
--07. Buatlah view dengan nama ViewPenjualan dengan penggabungan semua table.
--08. Tambahkan Kolum Diskon decimal (8,4) pada Selling
--09. Ubah diskon menjadi 0.15 pada bulan February
--10. Tampilkan total penjualan (duit) bulan February:
	--a. dengan potongan diskon per outlet
	--b. tanpa potongan diskon per outlet

--jawaban
--no 1a.
SELECT Outlet.KodeKota, Kota.Nama, COUNT(Kota.ID) as totalKota
FROM Outlet
 JOIN kota on Outlet.KodeKota = Kota.Kode
GROUP BY Outlet.KodeKota, Kota.Nama

--no 1b. 
SELECT Provinsi.Nama, COUNT(Provinsi.ID) as totalProvinsi
FROM Outlet
 JOIN Kota on Outlet.KodeKota = Kota.Kode
 JOIN Provinsi on Kota.KodeProvinsi = Provinsi.Kode
GROUP BY Provinsi.Nama

--No2a. Tampilkan total penjualan (duit) per outlet tanpa batas waktu.
SELECT ot.Nama, SUM (sl.Quantity * pd.Harga) as total
FROM Selling sl
JOIN Outlet ot on sl.KodeOutlet = ot.Kode
JOIN Product pd on sl.KodeProduct = pd.Kode
GROUP BY ot.Nama

--2b. Tampilkan total penjualan perkota di periode April 2022
SELECT kt.Nama, sl.SellingDate, SUM (sl.Quantity * pd.Harga) as total
FROM Selling sl
JOIN Outlet ot on sl.KodeOutlet = ot.Kode
JOIN Product pd on sl.KodeProduct = pd.Kode
JOIN Kota kt on ot.KodeKota = kt.Kode
WHERE year(sl.SellingDate) = '2022' AND month(sl.SellingDate) = '4'
GROUP BY kt.Nama, sl.SellingDate

SELECT * FROM Selling sl
WHERE year(sl.SellingDate) = '2022' AND month(sl.SellingDate) = '4'


--2c. Tampilkan total penjualan per provinsi 
SELECT pv.Nama, SUM (sl.Quantity * pd.Harga) as total
FROM Selling sl
JOIN Outlet ot on sl.KodeOutlet = ot.Kode
JOIN Product pd on sl.KodeProduct = pd.Kode
JOIN Kota kt on ot.KodeKota = kt.Kode
JOIN Provinsi pv on kt.KodeProvinsi = pv.Kode
GROUP BY pv.Nama

--3a. Tampilkan barang terlaris
SELECT * FROM Selling

CREATE VIEW vwjumlahqty as
SELECT kodeproduct, Nama, SUM(sl.Quantity) as jumlahqty
FROM Selling sl
JOIN Product pd on sl.KodeProduct = pd.Kode
GROUP BY KodeProduct, Nama

SELECT * FROM vwjumlahqty
WHERE jumlahqty = 
(SELECT MAX(jumlahqty)  FROM vwjumlahqty)


--3b. Tampilkan barang tidak laris
SELECT * FROM vwjumlahqty
WHERE jumlahqty = 
(SELECT MIN(jumlahqty)  FROM vwjumlahqty)

--3c. tidak terjual
SELECT pd.nama, sl.Quantity
FROM product pd
LEFT JOIN selling sl on sl.KodeProduct =pd.Kode
WHERE sl.Quantity is null

--4. Tampilkan barang terlaris berdasarkan kota
ALTER VIEW vwKotaProdukJmlQty
AS
SELECT out.KodeKota, kot.Nama NamaKota, KodeProduct, prd.Nama NamaProduk, SUM(Quantity) JmlQty
FROM Selling sel
	JOIN Product prd ON
		sel.KodeProduct = prd.Kode
	JOIN Outlet out ON
		sel.KodeOutlet = out.Kode
	JOIN Kota kot ON
		out.KodeKota = kot.Kode
GROUP BY out.KodeKota, kot.Nama, KodeProduct, prd.Nama

SELECT * FROM vwKotaProdukJmlQty
as vw1
JOIN (SELECT KodeKota, MAX(JmlQty) as MaxJmlQty FROM vwKotaProdukJmlQty
GROUP BY KodeKota) vw2 on
vw1.KodeKota = vw2.KodeKota
WHERE vw1.JmlQty = vw2.MaxJmlQty


--5. a. Tampilkan outlet dengan penjualan: Terlaris
CREATE VIEW vwoutlaris as
SELECT out.Nama, SUM(Quantity *prd.Harga) as TotalPenjualan
FROM Selling sel
	JOIN Product prd ON
		sel.KodeProduct = prd.Kode
	JOIN Outlet out ON
		sel.KodeOutlet = out.Kode
GROUP BY out.Nama

SELECT * FROM vwoutlaris
WHERE TotalPenjualan = (SELECT MAX(TotalPenjualan) FROM vwoutlaris)

--5. b. Tampilkan outlet dengan penjualan: Kurang laris
SELECT * FROM vwoutlaris
WHERE TotalPenjualan = (SELECT MIN(TotalPenjualan) FROM vwoutlaris)

--6.a. Tampilkan barang dengan total penjualan: Diatas rata-rata
CREATE VIEW vwTotalSellingAvg as
SELECT pd.Nama, SUM (Sl.Quantity * Pd.Harga) TotalPenjualan
FROM Selling sl
JOIN Product pd on sl.KodeProduct = pd.Kode
GROUP BY pd.Nama

SELECT * FROM vwTotalSellingAvg
WHERE TotalPenjualan > (SELECT AVG(TotalPenjualan) FROM vwTotalSellingAvg)

--6.b. Tampilkan barang dengan total penjualan: dibawah rata-rata
SELECT * FROM vwTotalSellingAvg
WHERE TotalPenjualan < (SELECT AVG(TotalPenjualan) FROM vwTotalSellingAvg)

--07. Buatlah view dengan nama ViewPenjualan dengan penggabungan semua table.
CREATE VIEW ViewPenjualan as
SELECT sl.Id, sl.Referensi, Sl.SellingDate, sl.Quantity, sl.KodeProduct, pd.Nama as namaProduk,
pd.Harga, sl.KodeOutlet, ot.Nama namaOutlet, ot.KodeKota, kt.Nama NamaKota, kt.KodeProvinsi, pv.Nama namaProvinsi
FROM Selling sl
JOIN Product pd on sl.KodeProduct = pd.Kode
JOIN Outlet ot on sl.KodeOutlet = ot.Kode
JOIN Kota kt on ot.KodeKota = kt.Kode
JOIN Provinsi pv on kt.KodeProvinsi = pv.Kode

SELECT * FROM ViewPenjualan

--08. Tambahkan Kolum Diskon decimal (8,4) pada Selling
ALTER TABLE Selling ADD Diskon Decimal(8,4)

--09. Ubah diskon menjadi 0.15 pada bulan February
UPDATE SELLING SET Diskon = 0.15
WHERE MONTH(SellingDate) = '2'

SELECT * FROM Selling

--10. Tampilkan total penjualan (duit) bulan February:
--a. dengan potongan diskon per outlet
SELECT KodeOutlet, ot.Nama,  SUM(sl.Quantity * pd.Harga * (1-Diskon)) TotalPenjualan
FROM SELLING sl
JOIN Product pd on sl.KodeProduct = pd.Kode
JOIN Outlet ot on sl.KodeOutlet = ot.Kode
WHERE MONTH(sl.SellingDate) ='2'
GROUP BY KodeOutlet, ot.Nama

--b. tanpa potongan diskon per outlet
SELECT KodeOutlet, ot.Nama,  SUM(sl.Quantity * pd.Harga) TotalPenjualan
FROM SELLING sl
JOIN Product pd on sl.KodeProduct = pd.Kode
JOIN Outlet ot on sl.KodeOutlet = ot.Kode
WHERE MONTH(sl.SellingDate) ='2'
GROUP BY KodeOutlet, ot.Nama