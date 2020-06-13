CREATE TABLE login (
nama_petugas VARCHAR(50) NOT NULL,
username VARCHAR(50) NOT NULL, 
passwordd VARCHAR(50) NOT NULL);


INSERT INTO login(nama_petugas, username, passwordd) VALUES ('Grace Panjaitan', 'grace.pjtn', 'grace1990');
INSERT INTO login(nama_petugas, username, passwordd) VALUES ('Pemarkir DJOR', 'djorrr', '123456789');
SELECT * FROM login WHERE username='grace.pjtn';



CREATE TABLE transaksi(
nomor_transaksi INT PRIMARY KEY,
tgl_parkir DATE, 
waktu_mulai TIME, 
waktu_selesai TIME,
lama_parkir INT,
biaya_parkir INT,
jeniskendaraan INT,
nomorslot INT,
slot_parkir CHAR,

CONSTRAINT fk_jenis_transaksi
	FOREIGN KEY (jeniskendaraan) REFERENCES jenis_kendaraan(jenis)
	ON DELETE CASCADE
	ON UPDATE RESTRICT,

CONSTRAINT fk_transaksi_lokasi
	FOREIGN KEY (nomorslot) REFERENCES lokasi_parkir(nomor_slot)
	ON DELETE CASCADE
	ON UPDATE RESTRICT
)

CREATE TABLE ParkirMasuk
no_polisi INT PRIMARY KEY,
jenis_kendaraan SET, 
lokasi_parkir CHAR,

DROP TABLE ParkirMasuk

CREATE TABLE jenis_kendaraan( 
jenis INT PRIMARY KEY,
nama_kendaraan VARCHAR(30)) 

DROP TABLE jenis_kendaraan

CREATE TABLE lokasi_parkir(
nomor_slot INT,
status_slot BOOLEAN,
PRIMARY KEY (nomor_slot));
DROP TABLE jenis_kendaraan

DROP TABLE lokasi_parkir
