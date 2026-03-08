-- 1
CREATE TABLE Film (
    id_film NUMBER PRIMARY KEY,
    judul VARCHAR2(100),
    sinopsis VARCHAR2(250),
    tahun NUMBER(4),
    durasi NUMBER
);

CREATE TABLE Theater (
    id_theater NUMBER PRIMARY KEY,
    harga NUMBER(10),
    kapasitas NUMBER(3),
    kelas VARCHAR2(20)
);

CREATE TABLE Member (
    id_member NUMBER PRIMARY KEY,
    nama VARCHAR2(100),
    no_hp VARCHAR2(15),
    tgl_lahir DATE,
    email VARCHAR2(50)
);

CREATE TABLE Jadwal (
    id_jadwal NUMBER PRIMARY KEY,
    id_film NUMBER,
    id_theater NUMBER,
    periode_start TIMESTAMP,
    periode_end TIMESTAMP,
    CONSTRAINT fk_jadwal_film FOREIGN KEY (id_film) REFERENCES Film(id_film),
    CONSTRAINT fk_jadwal_theater FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
);

CREATE TABLE Inventaris (
    id_inventaris NUMBER PRIMARY KEY,
    id_theater NUMBER,
    nomor_kursi VARCHAR2(5),
    CONSTRAINT fk_inv_theater FOREIGN KEY (id_theater) REFERENCES Theater(id_theater)
);

CREATE TABLE Transaksi (
    kode_pemesanan VARCHAR2(10) PRIMARY KEY,
    id_jadwal NUMBER,
    id_member NUMBER,
    status VARCHAR2(20),
    tanggal DATE,
    total_harga NUMBER(10),
    CONSTRAINT fk_trans_jadwal FOREIGN KEY (id_jadwal) REFERENCES Jadwal(id_jadwal),
    CONSTRAINT fk_trans_member FOREIGN KEY (id_member) REFERENCES Member(id_member)
);

-- 2
INSERT INTO Film VALUES (1, 'Avengers', 'Superhero fight', 2019, 180);
INSERT INTO Film VALUES (2, 'Interstellar', 'Luar angkasa', 2014, 169);
INSERT INTO Film VALUES (3, 'John Wick', 'Action killer', 2014, 101);

SELECT * FROM Film;

INSERT INTO Theater VALUES (1, 50000, 50, 'Reguler');
INSERT INTO Theater VALUES (2, 75000, 30, 'VIP');
INSERT INTO Theater VALUES (3, 100000, 20, 'VVIP');

SELECT * FROM Theater;

INSERT INTO Member VALUES (1, 'Geusan', '08123', TO_DATE('2005-06-04','YYYY-MM-DD'), 'geusan@mail.com');
INSERT INTO Member VALUES (2, 'Rasyid', '08567', TO_DATE('2002-04-14','YYYY-MM-DD'), 'rasyid@mail.com');
INSERT INTO Member VALUES (3, 'Humaid', '08999', TO_DATE('2000-12-12','YYYY-MM-DD'), 'humaid@mail.com');

SELECT * FROM Member;

INSERT INTO jadwal VALUES ( 
    1,
    1,
    1,
    TO_TIMESTAMP('2024-05-20 13:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-05-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO jadwal VALUES ( 2,
    2,
    2,
    TO_TIMESTAMP('2024-05-21 19:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-05-21 21:50:00', 'YYYY-MM-DD HH24:MI:SS')
);

INSERT INTO jadwal VALUES ( 3,
    3,
    3,
    TO_TIMESTAMP('2024-05-22 21:00:00', 'YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2024-05-22 22:45:00', 'YYYY-MM-DD HH24:MI:SS')
);

SELECT * FROM Jadwal;

INSERT INTO Transaksi VALUES (1, 1, 1, 'Lunas', SYSDATE, 50000);
INSERT INTO Transaksi VALUES (2, 2, 2, 'Lunas', SYSDATE, 75000);
INSERT INTO Transaksi VALUES (3, 3, 3, 'Belum Bayar', SYSDATE, 100000);

SELECT * FROM Transaksi;

INSERT INTO Inventaris VALUES (1, 1, 'A1');
INSERT INTO Inventaris VALUES (2, 2, 'B1');
INSERT INTO Inventaris VALUES (3, 3, 'C1');

SELECT * FROM Inventaris;


-- 3

UPDATE Theater SET harga = 60000 WHERE id_theater = 1;
UPDATE Theater SET kapasitas = 45 WHERE id_theater = 1;

SELECT * FROM Theater;

UPDATE Film SET durasi = 185 WHERE id_film = 1;

SELECT * FROM Film;

UPDATE Member SET no_hp = '08238247234' WHERE id_member = 1;

SELECT * FROM Member;

UPDATE Transaksi SET status = 'Selesai' WHERE kode_pemesanan = 1;

SELECT * FROM Transaksi;


-- 4
DELETE FROM Inventaris WHERE id_inventaris = 1;

SELECT * FROM Inventaris;

DELETE FROM Transaksi WHERE kode_pemesanan = 1;

SELECT * FROM Transaksi;