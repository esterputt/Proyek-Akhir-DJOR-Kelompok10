CREATE DATABASE DJOR;

CREATE TABLE login_petugas (
username VARCHAR(50) NOT NULL,
passwordd VARCHAR(50) NOT NULL);

CREATE TABLE transaksi(
nomor_transaksi INT PRIMARY KEY,
tgl_parkir DATE,
waktu_mulai TIME,
waktu_selesai TIME,
lama_parkir INT,
biaya_parkir LONG INT,
jenis INT,
nomorslot INT,
slot CHAR,
CONSTRAINT transaksi_pk PRIMARY KEY(jenis_, nomorslot, slot_),
CONSTRAINT 'fk_jenis_transaksi'
	FOREIGN KEY (jenis_) REFERENCES jenis_kendaraan(jenis)
	ON DELETE CASCADE
	ON UPDATE RESTRICT
	
CONSTRAINT 'fk_transaksi_lokasi'
	FOREIGN KEY (nomorslot) REFERENCE lokasi_parkir(nomor_slot)
	ON DELETE CASCADE
	ON UPDATE RESTRICT

CONSTRAINT 'fk_transaksi_lokasi'
	FOREIGN KEY (slot_) REFERENCE lokasi parkir(slot)
	ON DELETE CASCADE
	ON UPDATE RESTRICT
)

CREATE TABLE jenis_kendaraan( 
jenis INT PRIMARY KEY,
nama_kendaraan VARCHAR(30)) 

DROP TABLE jenis_kendaraan

CREATE TABLE lokasi_parkir(
slot CHAR,
nomor_slot INT,
status_ BOOLEAN,
CONSTRAINT lokasi_parkir_pk PRIMARY KEY (slot, nomor_slot));
