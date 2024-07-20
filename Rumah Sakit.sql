-- Membuat tabel DOKTER
CREATE TABLE DOKTER (
    ID_DOKTER CHAR(3) PRIMARY KEY,
    NAMA_DOKTER VARCHAR(255) NOT NULL,
    TGL_LAHIR DATE NOT NULL,
    JENIS_KELAMIN CHAR(1) NOT NULL CHECK (JENIS_KELAMIN IN ('P', 'W')),
    SPESIALIS VARCHAR(255) NOT NULL,
    NO_TELP VARCHAR(20) NOT NULL
);

-- Membuat tabel PETUGAS_PENDAFTARAN
CREATE TABLE PETUGAS_PENDAFTARAN (
    ID_PETUGAS CHAR(3) PRIMARY KEY,
    NAMA_PETUGAS VARCHAR(255) NOT NULL,
    NO_TELP VARCHAR(20) NOT NULL
);

-- Membuat tabel PASIEN
CREATE TABLE PASIEN (
    ID_PASIEN INT PRIMARY KEY,
    NAMA_PASIEN VARCHAR2(255) NOT NULL,
    TANGGAL_LAHIR DATE NOT NULL,
    JENIS_KELAMIN CHAR(1) NOT NULL CHECK (JENIS_KELAMIN IN ('P', 'W')),
    ALAMAT VARCHAR2(4000) NOT NULL,
    GOLONGAN_DARAH CHAR(2) NOT NULL CHECK (GOLONGAN_DARAH IN ('A', 'B', 'AB', 'O')),
    NO_TELP VARCHAR2(20) NOT NULL,
    KELUHAN VARCHAR2(100) NOT NULL,
    ID_PETUGAS CHAR(3) NOT NULL,
    ID_DOKTER CHAR(3) NOT NULL,
    CONSTRAINT FK_ID_PETUGAS FOREIGN KEY (ID_PETUGAS) REFERENCES PETUGAS_PENDAFTARAN(ID_PETUGAS),
    CONSTRAINT FK_ID_DOKTER FOREIGN KEY (ID_DOKTER) REFERENCES DOKTER(ID_DOKTER)
);

-- Memasukan data pada tabel DOKTER
INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D1', 'Dr. Andi', TO_DATE('1986-03-02', 'YYYY-MM-DD'), 'P', 'Bedah', '085600034569');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D2', 'Dr. Budiono', TO_DATE('1984-09-13', 'YYYY-MM-DD'), 'P', 'Kardiologi', '085600034560');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D3', 'Dr. Citra', TO_DATE('1980-04-24', 'YYYY-MM-DD'), 'W', 'Anak', '085600034561');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D4', 'Dr. Dian', TO_DATE('1984-03-11', 'YYYY-MM-DD'), 'W', 'Gigi', '085600034562');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D5', 'Dr. Eka', TO_DATE('1983-02-16', 'YYYY-MM-DD'), 'P', 'Mata', '085600034563');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D6', 'Dr. Fajar', TO_DATE('1980-03-07', 'YYYY-MM-DD'), 'P', 'Kulit', '085600034564');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D7', 'Dr. Gunawan', TO_DATE('1981-12-08', 'YYYY-MM-DD'), 'P', 'Paru-paru', '085600034565');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D8', 'Dr. Hadi', TO_DATE('1982-10-19', 'YYYY-MM-DD'), 'P', 'Saraf', '085600034566');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D9', 'Dr. Hermanto', TO_DATE('1984-03-10', 'YYYY-MM-DD'), 'P', 'Penyakit Dalam', '085600034567');

INSERT INTO DOKTER (ID_DOKTER, NAMA_DOKTER, TGL_LAHIR, JENIS_KELAMIN, SPESIALIS, NO_TELP) VALUES
('D10', 'Dr. Joko', TO_DATE('1984-05-17', 'YYYY-MM-DD'), 'P', 'THT', '085600034568');

-- Memasukkan data pada tabel PETUGAS_PENDAFTARAN
INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P01', 'Ani Susanti', '08134567890');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P02', 'Budi Pratama', '08134567891');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P03', 'Rani Wijaya', '08134567892');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P04', 'Nancy Purnama', '08134567893');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P05', 'Eka Nurmasari', '08134567894');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P06', 'Fajar Nugraha', '08134567895');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P07', 'Gunawan Sugiarto', '08134567896');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P08', 'Hadi Santoso', '08134567897');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P09', 'Endang', '08134567898');

INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP) VALUES
('P10', 'Joko Wibowo', '08134567899');

-- Memasukkan data pada tabel PASIEN
INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(101, 'Rendi', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'P', 'Jl. Merdeka No. 123', 'A', '081234567890', 'Demam dan batuk', 'P01', 'D9');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(102, 'Cahyadi', TO_DATE('1992-09-20', 'YYYY-MM-DD'), 'P', 'Jl. Kenanga No. 45', 'B', '087654321098', 'Sakit perut', 'P02', 'D1');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(103, 'Rina', TO_DATE('1998-03-10', 'YYYY-MM-DD'), 'W', 'Jl. Mawar No. 8', 'AB', '085678912345', 'Pusing dan lemas', 'P03', 'D9');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(104, 'Melly', TO_DATE('1987-11-25', 'YYYY-MM-DD'), 'W', 'Jl. Anggrek No. 17', 'O', '089012345678', 'Nyeri punggung', 'P04', 'D4');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(105, 'Deviani', TO_DATE('2000-02-05', 'YYYY-MM-DD'), 'W', 'Jl. Dahlia No. 3', 'A', '082345678901', 'Sesak napas', 'P05', 'D7');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(106, 'Brian', TO_DATE('1995-07-12', 'YYYY-MM-DD'), 'P', 'Jl. Melati No. 27', 'B', '081234567890', 'Mata merah', 'P05', 'D7');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(107, 'Jenni', TO_DATE('1998-04-30', 'YYYY-MM-DD'), 'W', 'Jl. Cempaka No. 9', 'AB', '087654321098', 'Batuk berdahak', 'P09', 'D7');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(108, 'Rahmat', TO_DATE('1998-12-18', 'YYYY-MM-DD'), 'P', 'Jl. Kenari No. 21', 'O', '085678912345', 'Nyeri tenggorokan', 'P09', 'D8');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(109, 'Indah', TO_DATE('2002-08-08', 'YYYY-MM-DD'), 'W', 'Jl. Teratai No. 5', 'A', '089012345678', 'Demam tinggi', 'P02', 'D8');

INSERT INTO PASIEN (ID_PASIEN, NAMA_PASIEN, TANGGAL_LAHIR, JENIS_KELAMIN, ALAMAT, GOLONGAN_DARAH, NO_TELP, KELUHAN, ID_PETUGAS, ID_DOKTER) VALUES
(110, 'Dedi', TO_DATE('2001-06-19', 'YYYY-MM-DD'), 'P', 'Jl. Matahari No. 12', 'B', '087654321091', 'Batuk Pilek', 'P10', 'D10');

-- Menampilkan data nama dokter yg berakhiran huruf o dan mengurutkan data descending Z-A
SELECT *
FROM DOKTER
WHERE NAMA_DOKTER LIKE '%o'
ORDER BY NAMA_DOKTER DESC;

-- Menampilkan semua dokter yang berjenis kelamin P(Pria) dan di urutkan berdasarkan id_dokter secara Ascending A-Z
SELECT *
FROM DOKTER
WHERE JENIS_KELAMIN = 'P'
ORDER BY ID_DOKTER ASC;

-- Menampilkan data banyaknya dokter yg lahir di tahun 1984
SELECT COUNT(*) AS jumlah_dokter
FROM DOKTER
WHERE EXTRACT(YEAR FROM TGL_LAHIR) = 1984;

-- Menampilkan data pasien yang keluhannya Batuk dan nama dokter yang memeriksa pasien tersebut dan di urutkan berdasarkan Nama Dokternya secara Ascending A-Z
SELECT P.ID_PASIEN, P.NAMA_PASIEN, P.TANGGAL_LAHIR, P.JENIS_KELAMIN, P.ALAMAT, P.GOLONGAN_DARAH, P.NO_TELP, P.KELUHAN, D.NAMA_DOKTER
FROM PASIEN P
JOIN DOKTER D ON P.ID_DOKTER = D.ID_DOKTER
WHERE P.KELUHAN LIKE '%Batuk%'
ORDER BY D.NAMA_DOKTER ASC;

-- Menampilkan data pasien yang jenis kelamin W(Wanita) dan Golongan darah A
SELECT *
FROM PASIEN
WHERE JENIS_KELAMIN = 'W'
AND GOLONGAN_DARAH = 'A';

-- Menampilkan data pasien yang lahir di tahun >= 1997 dan tahun <= 2001
SELECT *
FROM PASIEN
WHERE TANGGAL_LAHIR BETWEEN DATE '1997-01-01' AND DATE '2001-12-31';

-- Menampilkan banyaknya pasien yang di periksa per dokter
SELECT D.ID_DOKTER, D.NAMA_DOKTER, COUNT(P.ID_PASIEN) AS jumlah_pasien
FROM DOKTER D
LEFT JOIN PASIEN P ON D.ID_DOKTER = P.ID_DOKTER
GROUP BY D.ID_DOKTER, D.NAMA_DOKTER
ORDER BY jumlah_pasien DESC;

-- Menghapus data petugas yang id petugas P06 dan P07, dengan menggunakan Stored Procedur
CREATE OR REPLACE PROCEDURE HAPUS_PETUGAS(
    p_id_petugas1 IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE,
    p_id_petugas2 IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE
) AS
BEGIN
    -- Menghapus data petugas dengan ID yang diberikan
    DELETE FROM PETUGAS_PENDAFTARAN
    WHERE ID_PETUGAS IN (p_id_petugas1, p_id_petugas2);
    
    -- Commit transaksi jika Anda ingin memastikan perubahan disimpan
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Data petugas dengan ID ' || p_id_petugas1 || ' dan ' || p_id_petugas2 || ' telah dihapus.');
EXCEPTION
    WHEN OTHERS THEN
        -- Menangani kesalahan jika ada
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Terjadi kesalahan: ' || SQLERRM);
END;
/
BEGIN
    HAPUS_PETUGAS('P06', 'P07');
END;
/

-- Membuat Stored Procedur untuk menghitung banyaknya pasien yang di catat oleh petugas. Sebagai parameter id_petugas
CREATE OR REPLACE PROCEDURE HITUNG_PASIEN_PER_PETUGAS(
    p_id_petugas IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE,
    p_jumlah_pasien OUT NUMBER
) AS
BEGIN
    -- Menghitung jumlah pasien yang dicatat oleh petugas dengan ID tertentu
    SELECT COUNT(*)
    INTO p_jumlah_pasien
    FROM PASIEN
    WHERE ID_PETUGAS = p_id_petugas;
    
    -- Menampilkan jumlah pasien (opsional, hanya untuk debug atau informasi)
    DBMS_OUTPUT.PUT_LINE('Jumlah pasien untuk petugas ID ' || p_id_petugas || ' adalah ' || p_jumlah_pasien);
EXCEPTION
    WHEN OTHERS THEN
        -- Menangani kesalahan jika ada
        p_jumlah_pasien := NULL;
        DBMS_OUTPUT.PUT_LINE('Terjadi kesalahan: ' || SQLERRM);
END;
/
DECLARE
    v_id_petugas PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE := 'P01'; -- Ganti dengan ID petugas yang sesuai
    v_jumlah_pasien NUMBER;
BEGIN
    HITUNG_PASIEN_PER_PETUGAS(v_id_petugas, v_jumlah_pasien);
    DBMS_OUTPUT.PUT_LINE('Jumlah pasien untuk petugas ID ' || v_id_petugas || ' adalah ' || v_jumlah_pasien);
END;
/

-- Buatlah perintah PL/SQL untuk mencetak setiap data pasien yang jenis_kelamin P, maka akan tercetak Pria sedangkan jenis_kelamin W, akan tercetak Wanita
-- Menggunakan Decision Making
DECLARE
    CURSOR pasien_cursor IS
        SELECT ID_PASIEN, NAMA_PASIEN, JENIS_KELAMIN
        FROM PASIEN;

    v_id_pasien PASIEN.ID_PASIEN%TYPE;
    v_nama_pasien PASIEN.NAMA_PASIEN%TYPE;
    v_jenis_kelamin PASIEN.JENIS_KELAMIN%TYPE;
BEGIN
    -- Membuka cursor untuk iterasi melalui setiap pasien
    OPEN pasien_cursor;

    LOOP
        -- Mengambil data pasien satu per satu dari cursor
        FETCH pasien_cursor INTO v_id_pasien, v_nama_pasien, v_jenis_kelamin;
        
        -- Keluar dari loop jika tidak ada lagi data pasien
        EXIT WHEN pasien_cursor%NOTFOUND;

        -- Decision Making untuk mencetak jenis kelamin
        IF v_jenis_kelamin = 'P' THEN
            DBMS_OUTPUT.PUT_LINE('ID Pasien: ' || v_id_pasien || ', Nama: ' || v_nama_pasien || ', Jenis Kelamin: Pria');
        ELSIF v_jenis_kelamin = 'W' THEN
            DBMS_OUTPUT.PUT_LINE('ID Pasien: ' || v_id_pasien || ', Nama: ' || v_nama_pasien || ', Jenis Kelamin: Wanita');
        ELSE
            DBMS_OUTPUT.PUT_LINE('ID Pasien: ' || v_id_pasien || ', Nama: ' || v_nama_pasien || ', Jenis Kelamin: Tidak Dikenal');
        END IF;
    END LOOP;

    -- Menutup cursor setelah selesai
    CLOSE pasien_cursor;
END;
/

-- Membuat package untuk insert dan delete tabel petugas pendaftaran
CREATE OR REPLACE PACKAGE PETUGAS_PENDAFTARAN_PKG AS
    -- Prosedur untuk menambah data petugas
    PROCEDURE INSERT_PETUGAS (
        p_id_petugas IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE,
        p_nama_petugas IN PETUGAS_PENDAFTARAN.NAMA_PETUGAS%TYPE,
        p_no_telp IN PETUGAS_PENDAFTARAN.NO_TELP%TYPE
    );

    -- Prosedur untuk menghapus data petugas
    PROCEDURE DELETE_PETUGAS (
        p_id_petugas IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE
    );
END PETUGAS_PENDAFTARAN_PKG;
/

CREATE OR REPLACE PACKAGE BODY PETUGAS_PENDAFTARAN_PKG AS

    -- Implementasi prosedur untuk menambah data petugas
    PROCEDURE INSERT_PETUGAS (
        p_id_petugas IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE,
        p_nama_petugas IN PETUGAS_PENDAFTARAN.NAMA_PETUGAS%TYPE,
        p_no_telp IN PETUGAS_PENDAFTARAN.NO_TELP%TYPE
    ) IS
    BEGIN
        INSERT INTO PETUGAS_PENDAFTARAN (ID_PETUGAS, NAMA_PETUGAS, NO_TELP)
        VALUES (p_id_petugas, p_nama_petugas, p_no_telp);
        
        COMMIT;  -- Simpan perubahan ke database
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX THEN
            DBMS_OUTPUT.PUT_LINE('Error: ID Petugas sudah ada.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Terjadi kesalahan: ' || SQLERRM);
    END INSERT_PETUGAS;

    -- Implementasi prosedur untuk menghapus data petugas
    PROCEDURE DELETE_PETUGAS (
        p_id_petugas IN PETUGAS_PENDAFTARAN.ID_PETUGAS%TYPE
    ) IS
    BEGIN
        DELETE FROM PETUGAS_PENDAFTARAN
        WHERE ID_PETUGAS = p_id_petugas;
        
        COMMIT;  -- Simpan perubahan ke database
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Error: ID Petugas tidak ditemukan.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Terjadi kesalahan: ' || SQLERRM);
    END DELETE_PETUGAS;

END PETUGAS_PENDAFTARAN_PKG;
/




