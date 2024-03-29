CREATE TABLE PROPERTI(
id VARCHAR(5),
nama VARCHAR(20),
alamat VARCHAR(100),
fasilitas VARCHAR(50),
harga INT,
deskripsi TEXT,
kontak VARCHAR(20),
PRIMARY KEY(id)
);

CREATE TABLE USER(
id VARCHAR(5),
nama VARCHAR(20),
email VARCHAR(20),
telepon VARCHAR(12),
username VARCHAR(20),
password VARCHAR(20),
PRIMARY KEY(id)
);

INSERT INTO USER VALUES 
('U001','user', 'user@gmail.com', '082728829', 'user', 'user');

CREATE TABLE PENJUALAN(
noTransaksi VARCHAR(20),
tanggal VARCHAR(20),
idCustomer VARCHAR(20),
total INT,
PRIMARY KEY(noTransaksi),
FOREIGN KEY(idCustomer) REFERENCES USER(id)
);