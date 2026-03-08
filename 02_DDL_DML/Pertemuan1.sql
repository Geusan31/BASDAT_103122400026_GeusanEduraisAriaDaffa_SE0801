CREATE TABLE film (
    id_film CHAR(4),
    judul   VARCHAR2(250),
    tahun   CHAR(4),
    harga   NUMBER
);

INSERT INTO film (
    id_film,
    judul,
    tahun,
    harga
) VALUES ( '3784',
           'Spider-Man',
           2019,
           30000 );
           
INSERT INTO FILM VALUES ('2983', 'Anu', 2023, 10000);
           
UPDATE FILM SET HARGA = 1000000;

UPDATE FILM SET HARGA = 40000 WHERE id_film=2983;

DELETE FROM FILM WHERE judul = 'Anu';

INSERT all
INTO FILM VALUES ('3248','Anu ini',2024,1100)
INTO FILM VALUES ('3258','Ini Anu',2004,1000)
INTO FILM VALUES ('3548','Anunya ini',2024,50000)
INTO FILM VALUES ('3148','Ininya anu',2024,15000)
SELECT * FROM DUAL;

DESC FILM;

SELECT *
FROM
    film