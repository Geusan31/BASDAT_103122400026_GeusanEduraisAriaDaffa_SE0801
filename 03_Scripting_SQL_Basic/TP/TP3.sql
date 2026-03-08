CREATE TABLE mahasiswa (
  id NUMBER PRIMARY KEY,
  nama VARCHAR2(100),
  tempat_lahir VARCHAR2(50),
  tanggal_lahir date,
  nomor_hp VARCHAR2(15),
  email VARCHAR2(100),
  tinggi_badan NUMBER,
  berat_badan NUMBER
);

INSERT ALL 
    INTO mahasiswa VALUES (1, 'Geusan Edurais', 'Solo', TO_DATE('2005-04-14','YYYY-MM-DD'), '08123456789', 'geusan@gmail.com', 170, 60)
    INTO mahasiswa VALUES (2, 'John Doe', 'Jakarta', TO_DATE('2004-12-05','YYYY-MM-DD'), '08134567890', 'john.doe@gmail.com', 175, 68)
    INTO mahasiswa VALUES (3, 'Dea Ananda', 'Purwokerto', TO_DATE('2005-01-20','YYYY-MM-DD'), '08145678901', 'deaananda@yahoo.com', 160, 50)
    INTO mahasiswa VALUES (4, 'Budi Setiadi', 'Bandung', TO_DATE('2004-08-15','YYYY-MM-DD'), '08156789012', 'budiset@gmail.com', 168, 65)
    INTO mahasiswa VALUES (5, 'Siti Aminah', 'Surabaya', TO_DATE('2005-03-22','YYYY-MM-DD'), '08167890123', 'sitiaminah@gmail.com', 158, 48)
    INTO mahasiswa VALUES (6, 'Andi Wijaya', 'Semarang', TO_DATE('2004-11-11','YYYY-MM-DD'), '08178901234', 'andiwijaya@gmail.com', 180, 75)
    INTO mahasiswa VALUES (7, 'Rina Permata', 'Yogyakarta', TO_DATE('2005-07-30','YYYY-MM-DD'), '08189012345', 'rinapermata@gmail.com', 162, 52)
    INTO mahasiswa VALUES (8, 'Fajar Ramadhan', 'Malang', TO_DATE('2004-10-05','YYYY-MM-DD'), '08190123456', 'fajarama@gmail.com', 172, 70)
    INTO mahasiswa VALUES (9, 'Larasati Putri', 'Bali', TO_DATE('2005-02-14','YYYY-MM-DD'), '08121234345', 'larasputri@gmail.com', 165, 55)
    INTO mahasiswa VALUES (10, 'Eko Prasetyo', 'Medan', TO_DATE('2004-06-25','YYYY-MM-DD'), '08132345456', 'ekopras@gmail.com', 178, 80)
    INTO mahasiswa VALUES (11, 'Maya Sari', 'Palembang', TO_DATE('2005-09-12','YYYY-MM-DD'), '08143456567', 'mayasari@gmail.com', 155, 45)
    INTO mahasiswa VALUES (12, 'Dimas Anggara', 'Makassar', TO_DATE('2004-05-05','YYYY-MM-DD'), '08154567678', 'dimasang@gmail.com', 173, 63)
    INTO mahasiswa VALUES (13, 'Nadia Utami', 'Banjarmasin', TO_DATE('2005-11-28','YYYY-MM-DD'), '08165678789', 'nadiaut@gmail.com', 160, 54)
    INTO mahasiswa VALUES (14, 'Rizky Pratama', 'Balikpapan', TO_DATE('2004-03-18','YYYY-MM-DD'), '08176789890', 'rizkyprat@gmail.com', 170, 66)
    INTO mahasiswa VALUES (15, 'Aulia Rahman', 'Bogor', TO_DATE('2005-12-01','YYYY-MM-DD'), '08187890901', 'auliarahman@gmail.com', 167, 58)
SELECT * FROM DUAL;

SELECT 
    UPPER(nama) AS Nama_Kapital, 
    LOWER(email) AS Email_Kecil,
    INITCAP(tempat_lahir) AS Format_Tempat,
    CONCAT(nama, ' - RPL') AS Identitas,
    LENGTH(nama) AS Panjang_Nama,
    SUBSTR(nama, 1, 6) AS Lima_Huruf_Pertama,
    LPAD(id, 5, '0') AS ID_Padding,
    REPLACE(nomor_hp, '08', '+62') AS Format_WA
FROM mahasiswa;

SELECT 
    nama,
    TO_CHAR(tanggal_lahir, 'DD-MONTH-YYYY') AS Format_Lengkap,
    SYSDATE AS Tanggal_Hari_Ini,
    LAST_DAY(tanggal_lahir) AS Akhir_Bulan_Lahir,
    MONTHS_BETWEEN(SYSDATE, tanggal_lahir) AS Usia_Bulan,
    ADD_MONTHS(tanggal_lahir, 6) AS Enam_Bulan_Setelah_Lahir
FROM mahasiswa;

SELECT 
    TO_CHAR(tanggal_lahir, 'DAY, DD MON YYYY HH24:MI:SS AM') AS Tanggal_Teks,
    TO_CHAR(tinggi_badan, '999.99') AS Tinggi_String,
    TO_DATE('2026-03-05', 'YYYY-MM-DD') AS String_Ke_Date
FROM mahasiswa;

SELECT 
    nama,
    MOD(tinggi_badan, 10) AS Sisa_Bagi_Tinggi,
    FLOOR(berat_badan) AS Berat_Lantai,
    CEIL(berat_badan) AS Berat_Atap,
    ROUND(berat_badan / 3, 2) AS Berat_Bagi_Tiga,
    POWER(2, 3) AS Contoh_Pangkat
FROM mahasiswa;