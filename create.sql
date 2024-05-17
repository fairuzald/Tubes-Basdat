CREATE TABLE Menu (
    idMenu VARCHAR(36) PRIMARY KEY DEFAULT UUID(),
    nama VARCHAR(255) NOT NULL,
    harga INT NOT NULL CHECK (harga >= 0),
    rating INT CHECK (rating >= 0 AND rating <= 5),
    deskripsi VARCHAR(255) DEFAULT 'Deskripsi Menu Belum Tersedia',
    tipe VARCHAR(255) NOT NULL CHECK (tipe IN ('Makanan', 'Minuman'))
);

CREATE TABLE PenyediaBahan (
    email VARCHAR(255) PRIMARY KEY CHECK (POSITION('@' IN email) > 0),
    nama VARCHAR(255) NOT NULL,
    nomorTelepon VARCHAR(13) CHECK (nomorTelepon REGEXP '^\\+?[0-9]+$' AND LENGTH(nomorTelepon) <= 13)
);

CREATE TABLE Bahan (
    idBahan VARCHAR(36) PRIMARY KEY DEFAULT UUID(),
    nama VARCHAR(255) NOT NULL,
    stok INT DEFAULT 0 CHECK (stok >= 0)
);

CREATE TABLE Pegawai (
    NIKPegawai VARCHAR(255) PRIMARY KEY CHECK (LENGTH(NIKPegawai) = 16),
    nama VARCHAR(255) NOT NULL,
    alamat VARCHAR(255),
    nomorTelepon VARCHAR(13) CHECK (nomorTelepon REGEXP '^\\+?[0-9]+$' AND LENGTH(nomorTelepon) <= 13)
);

CREATE TABLE Pengunjung (
    email VARCHAR(255) PRIMARY KEY CHECK (POSITION('@' IN email) > 0),
    nama VARCHAR(255) NOT NULL,
    nomorTelepon VARCHAR(13) CHECK (nomorTelepon REGEXP '^\\+?[0-9]+$' AND LENGTH(nomorTelepon) <= 13)
);

CREATE TABLE Transaksi (
    nomorTransaksi VARCHAR(36) PRIMARY KEY DEFAULT UUID(),
    metodePembayaran VARCHAR(255) NOT NULL CHECK (metodePembayaran IN ('Tunai', 'Kartu Kredit', 'QRIS', 'Debit')),
    totalHarga INT NOT NULL CHECK (totalHarga >= 0),
    tanggalTransaksi DATETIME DEFAULT CURRENT_TIMESTAMP,
    emailPengunjung VARCHAR(255) NOT NULL,
    NIKPegawai VARCHAR(255) NOT NULL,
    FOREIGN KEY (emailPengunjung) REFERENCES Pengunjung(email) ON DELETE CASCADE,
    FOREIGN KEY (NIKPegawai) REFERENCES Pegawai(NIKPegawai) ON DELETE CASCADE
);

CREATE TABLE Makanan (
    idMenu VARCHAR(36) PRIMARY KEY,
    tingkatKepedasan INT DEFAULT 0 CHECK (tingkatKepedasan >= 0 AND tingkatKepedasan <= 5),
    FOREIGN KEY (idMenu) REFERENCES Menu(idMenu) ON DELETE CASCADE
);

CREATE TABLE Minuman (
    idMenu VARCHAR(36) PRIMARY KEY,
    isDingin BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (idMenu) REFERENCES Menu(idMenu) ON DELETE CASCADE
);

CREATE TABLE BahanMenu (
    idMenu VARCHAR(36),
    idBahan VARCHAR(36),
    jumlah INT NOT NULL CHECK (jumlah >= 0),
    PRIMARY KEY (idMenu, idBahan),
    FOREIGN KEY (idMenu) REFERENCES Menu(idMenu) ON DELETE CASCADE,
    FOREIGN KEY (idBahan) REFERENCES Bahan(idBahan) ON DELETE CASCADE
);

CREATE TABLE PembelianBahan (
    emailPenyedia VARCHAR(255),
    idBahan VARCHAR(36),
    harga INT NOT NULL CHECK (harga >= 0),
    jumlahPembelian INT NOT NULL CHECK (jumlahPembelian >= 0),
    tanggalPembelian DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (emailPenyedia, idBahan, tanggalPembelian),
    FOREIGN KEY (emailPenyedia) REFERENCES PenyediaBahan(email) ON DELETE CASCADE,
    FOREIGN KEY (idBahan) REFERENCES Bahan(idBahan) ON DELETE CASCADE
);

CREATE TABLE DetailTransaksi (
    nomorTransaksi VARCHAR(36) NOT NULL,
    idDetailTransaksi VARCHAR(36) DEFAULT UUID(),
    kuantitas INT NOT NULL CHECK (kuantitas >= 0),
    idMenu VARCHAR(36),
    PRIMARY KEY (idDetailTransaksi),
    FOREIGN KEY (nomorTransaksi) REFERENCES Transaksi(nomorTransaksi) ON DELETE CASCADE,
    FOREIGN KEY (idMenu) REFERENCES Menu(idMenu) ON DELETE CASCADE
);


CREATE TABLE Feedback(
    idFeedback VARCHAR(36) PRIMARY KEY NOT NULL,
    waktuFeedback DATETIME DEFAULT CURRENT_TIMESTAMP,
    ratingPelayanan INT CHECK (ratingPelayanan >= 1 AND ratingPelayanan <= 5),
    ratingKebersihan INT CHECK (ratingKebersihan >= 1 AND ratingKebersihan <= 5),
    komentar VARCHAR(255),
    ratingMenuOverall INT CHECK (ratingMenuOverall >= 1 AND ratingMenuOverall <= 5),
    FOREIGN KEY (idFeedback) REFERENCES Transaksi(nomorTransaksi) ON DELETE CASCADE
);

CREATE TABLE RatingMenu(
    idDetailTransaksi VARCHAR(36) NOT NULL, 
    idFeedback VARCHAR(36) NOT NULL, 
    nomorTransaksi VARCHAR(36), 
    rating INT CHECK (rating >= 0 AND rating <= 5), 
    PRIMARY KEY (idDetailTransaksi, idFeedback), 
    FOREIGN KEY (idDetailTransaksi) REFERENCES DetailTransaksi(idDetailTransaksi) ON DELETE CASCADE, 
    FOREIGN KEY (idFeedback) REFERENCES Feedback(idFeedback) ON DELETE CASCADE
);

-- ERROR MESSAGE TRIGGERS FOR EACH TABLE ON ATTRIBUTE CONSTRAINTS

-- Tigger Error in table menu rating
CREATE TRIGGER CheckRatingMenu BEFORE INSERT OR UPDATE ON Menu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating must be between 0 and 5';
    END IF;
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga must be greater than or equal to 0';
    END IF;
    IF NEW.tipe NOT IN ('Makanan', 'Minuman') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipe must be either Makanan or Minuman';
    END IF;
END;

-- Trigger Error in table PenyediaBahan
CREATE TRIGGER CheckPenyediaBahan BEFORE INSERT OR UPDATE ON PenyediaBahan
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon must be less than or equal to 13 characters';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email must contain @';
    END IF;
    IF nomorTelepon REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon must only contain numbers or start with +';
    END IF;
END;

-- Trigger Error in table Bahan
CREATE TRIGGER CheckBahan BEFORE INSERT OR UPDATE ON Bahan
FOR EACH ROW
BEGIN
    IF NEW.stok < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok must be greater than or equal to 0';
    END IF;
END;

-- Trigger Error in table Pegawai
CREATE TRIGGER CheckPegawai BEFORE INSERT OR UPDATE ON Pegawai
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.NIKPegawai) != 16 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai must be 16 characters long';
    END IF;
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon must be less than or equal to 13 characters';
    END IF;
    IF nomorTelepon REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon must only contain numbers or start with +';
    END IF;
END;

-- Trigger Error in table Pengunjung
CREATE TRIGGER CheckPengunjung BEFORE INSERT OR UPDATE ON Pengunjung
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon must be less than or equal to 13 characters';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email must contain @';
    END IF;
    IF nomorTelepon REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon must only contain numbers or start with +';
    END IF;
END;

-- Trigger Error in table Transaksi
CREATE TRIGGER CheckTransaksi BEFORE INSERT OR UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.totalHarga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total Harga must be greater than or equal to 0';
    END IF;
    IF NEW.metodePembayaran NOT IN ('Tunai', 'Kartu Kredit', 'QRIS', 'Debit') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Metode Pembayaran must be either Tunai, Kartu Kredit, QRIS, or Debit';
    END IF;
    IF emailPengunjung IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email Pengunjung cannot be NULL';
    END IF;
    IF NIKPegawai IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai cannot be NULL';
    END IF;
END;

-- Trigger Error in table Makanan
CREATE TRIGGER CheckMakanan BEFORE INSERT OR UPDATE ON Makanan
FOR EACH ROW
BEGIN
    IF NEW.tingkatKepedasan < 0 OR NEW.tingkatKepedasan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tingkat Kepedasan must be between 0 and 5';
    END IF;
END;

-- Trigger Error in table Minuman
CREATE TRIGGER CheckMinuman BEFORE INSERT OR UPDATE ON Minuman
FOR EACH ROW
BEGIN
    IF NEW.isDingin NOT IN (TRUE, FALSE) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'isDingin must be either TRUE or FALSE';
    END IF;
END;

-- Trigger Error in table BahanMenu
CREATE TRIGGER CheckBahanMenu BEFORE INSERT OR UPDATE ON BahanMenu
FOR EACH ROW
BEGIN
    IF NEW.jumlah < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah must be greater than or equal to 0';
    END IF;
END;

-- Trigger Error in table PembelianBahan
CREATE TRIGGER CheckPembelianBahan BEFORE INSERT OR UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga must be greater than or equal to 0';
    END IF;
    IF NEW.jumlahPembelian < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah Pembelian must be greater than or equal to 0';
    END IF;
END;

-- Trigger Error in table DetailTransaksi
CREATE TRIGGER CheckDetailTransaksi BEFORE INSERT OR UPDATE ON DetailTransaksi
FOR EACH ROW
BEGIN
    IF NEW.kuantitas < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Kuantitas must be greater than or equal to 0';
    END IF;
END;

-- Trigger Error in table Feedback
CREATE TRIGGER CheckFeedback BEFORE INSERT OR UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan < 0 OR NEW.ratingPelayanan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan must be between 0 and 5';
    END IF;
    IF NEW.ratingKebersihan < 0 OR NEW.ratingKebersihan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Kebersihan must be between 0 and 5';
    END IF;
    IF NEW.ratingMenuOverall < 0 OR NEW.ratingMenuOverall > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Menu Overall must be between 0 and 5';
    END IF;
END;

-- Trigger Error in table RatingMenu
CREATE TRIGGER CheckRatingMenu BEFORE INSERT OR UPDATE ON RatingMenu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating must be between 0 and 5';
    END IF;
END;



-- Trigger to check and ensure 'Menu' references 'Makanan' or 'Minuman' correctly
CREATE TRIGGER EnsureMenuType AFTER INSERT ON Menu
FOR EACH ROW
BEGIN
    IF NEW.tipe = 'Makanan' THEN
        INSERT INTO Makanan (idMenu) VALUES (NEW.idMenu);
    IF NEW.tipe = 'Minuman' THEN
        INSERT INTO Minuman (idMenu) VALUES (NEW.idMenu);
    END IF;
END;

-- Trigger update isDingin or tingkatKepedasan when insert makanan or minuman already in menu and different value
CREATE TRIGGER UpdateMenuType AFTER INSERT ON Makanan
FOR EACH ROW
BEGIN
    IF NEW.tingkatKepedasan != OLD.tingkatKepedasan THEN
        UPDATE Menu SET tingkatKepedasan = NEW.tingkatKepedasan WHERE idMenu = NEW.idMenu;
    END IF;
END;

CREATE TRIGGER UpdateMenuType AFTER INSERT ON Minuman
FOR EACH ROW
BEGIN
    IF NEW.isDingin != OLD.isDingin THEN
        UPDATE Menu SET isDingin = NEW.isDingin WHERE idMenu = NEW.idMenu;
    END IF;
END;

-- Trigger to ensure 'totalHarga' matches the sum of 'DetailTransaksi'
CREATE TRIGGER CheckTotalHarga BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    DECLARE v_total INT;
    SELECT SUM(Menu.harga * DetailTransaksi.kuantitas)
    INTO v_total
    FROM DetailTransaksi
    JOIN Menu ON DetailTransaksi.idMenu = Menu.idMenu
    WHERE DetailTransaksi.nomorTransaksi = NEW.nomorTransaksi;
    
    IF NEW.totalHarga != v_total THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total harga does not match the sum of DetailTransaksi';
    END IF;
END;


-- Trigger to update 'totalHarga' on 'Transaksi' insert or update
CREATE TRIGGER UpdateTotalHarga AFTER INSERT OR UPDATE ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE v_total INT;
    SELECT SUM(Menu.harga * NEW.kuantitas)
    INTO v_total
    FROM Menu
    WHERE Menu.idMenu = NEW.idMenu;
    
    UPDATE Transaksi SET totalHarga = v_total WHERE nomorTransaksi = NEW.nomorTransaksi;
END;

-- MANDATORY
-- Trigger untuk validasi transaksi dan update stok bahan
CREATE TRIGGER CheckStockBahan BEFORE INSERT OR UPDATE ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE v_stock INT;
    DECLARE v_jumlah INT;

    -- Ambil stok dan jumlah dari bahan yang diperlukan untuk menu yang dipesan
    SELECT B.stok, BM.jumlah
    INTO v_stock, v_jumlah
    FROM Bahan B
    JOIN BahanMenu BM ON B.idBahan = BM.idBahan
    WHERE BM.idMenu = NEW.idMenu;

    -- Periksa apakah stok cukup untuk transaksi
    IF v_stock < NEW.kuantitas * v_jumlah THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough stock for this transaction';
    ELSE
        -- Kurangi stok bahan
        UPDATE Bahan
        SET stok = stok - (NEW.kuantitas * v_jumlah)
        WHERE idBahan = (SELECT idBahan FROM BahanMenu WHERE idMenu = NEW.idMenu);
    END IF;
END;


-- Trigger to update Bahan stok on PembelianBahan insert
CREATE TRIGGER UpdateStokBahan AFTER INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    UPDATE Bahan
    SET stok = stok + NEW.jumlahPembelian
    WHERE idBahan = NEW.idBahan;
END

--Update rating on menu when RatingMenu is inserted
CREATE TRIGGER UpdateRatingMenu AFTER INSERT ON RatingMenu
FOR EACH ROW
BEGIN
    DECLARE v_rating INT;
    SELECT AVG(RatingMenu.rating)
    INTO v_rating
    FROM RatingMenu
    WHERE RatingMenu.idMenu = NEW.idMenu;
    
    UPDATE Menu SET rating = v_rating WHERE idMenu = NEW.idMenu;
END;


-- RELATION CONSTRAINT
-- Trigger untuk validasi rating
CREATE TRIGGER CheckRating BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan == 5 AND NEW.ratingKebersihan == 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
END;

-- Trigger untuk validasi total harga dan metode pembayaran
CREATE TRIGGER CheckMetodePembayaran BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    -- Periksa aturan khusus
    IF (
        (NEW.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000)
    ) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
    END IF;
END;


-- DATABASE CONSTRAINT
-- Trigger untuk membatasi pembelian bahan agar tidak melebihi 500
CREATE TRIGGER BatasiPembelianStok BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_stokBahan INT;

    -- Ambil stok bahan yang akan dibeli
    SELECT stok INTO v_stokBahan
    FROM Bahan
    WHERE idBahan = NEW.idBahan;

    -- Periksa apakah stok bahan melebihi 500
    IF v_stokBahan > 500 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok bahan melebihi 500, pembelian tidak diizinkan.';
    END IF;
END;

-- Trigger untuk membatasi harga pembelian bahan agar tidak lebih mahal dari harga menu
CREATE TRIGGER BatasiPembelianMenuHarga BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaBahanMenu INT;

    -- Ambil harga bahan minimal dari menu yang dibeli
    SELECT MIN(M.harga) INTO v_hargaBahanMenu
    FROM BahanMenu BM
    JOIN Menu M ON BM.idMenu = M.idMenu
    WHERE BM.idBahan = NEW.idBahan;

    -- Periksa apakah harga menu lebih mahal dari harga bahan yang dibelinya
    IF NEW.harga < v_hargaBahanMenu THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga menu lebih mahal dari harga salah satu bahan yang dibelinya.';
    END IF;
END;

-- Trigger untuk membatasi pembelian bahan jika lebih mahal dari top 10 bahan termurah
CREATE TRIGGER BatasiPembelianBahanTermurah BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaBahanTerendah INT;

    -- BArang termurah keseuluh
    SELECT MAX(harga) INTO v_hargaBahanTerendah
    FROM (
        SELECT harga
        FROM Bahan
        ORDER BY harga
        LIMIT 10
    ) AS top10;

    -- Periksa apakah harga bahan yang akan dibeli lebih mahal dari top 10 bahan termurah
    IF NEW.harga > v_hargaBahanTerendah THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga bahan lebih mahal dari top 10 bahan termurah.';
    END IF;
END;


-- TRANSITION CONSTRAINT

-- Trigger untuk Transaksi
CREATE TRIGGER prevent_invalid_update_transaksi
BEFORE UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.tanggalTransaksi < OLD.tanggalTransaksi THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal transaksi ke tanggal sebelumnya.';
    END IF;
    IF NEW.tanggalTransaksi >= OLD.tanggalTransaksi THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal transaksi ke tanggal sebelumnya.';
    END IF;
END;

-- Trigger untuk PembelianBahan
CREATE TRIGGER prevent_invalid_update_pembelian_bahan
BEFORE UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.tanggalPembelian < OLD.tanggalPembelian THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal pembelian ke tanggal sebelumnya.';
    END IF;
    IF NEW.tanggalPembelian >= OLD.tanggalPembelian THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal pembelian ke tanggal sebelumnya.';
    END IF;
END;

CREATE TRIGGER prevent_invalid_update_feedback
BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.waktuFeedback < OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback ke waktu sebelumnya.';
    END IF;
    IF NEW.waktuFeedback >= OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback ke waktu sebelumnya.';
    END IF;
END;


-- Trigger untuk membatasi pembelian bahan yang sangat murah (all-time low)
CREATE TRIGGER BatasiPembelianBahanMurah BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaTerendah INT;
    DECLARE length_data INT;

    -- Ambil harga terendah yang pernah ada untuk bahan yang akan dibeli
    SELECT MIN(harga) INTO v_hargaTerendah
    FROM PembelianBahan
    WHERE idBahan = NEW.idBahan;


    -- Hitung jumlah data pembelian bahan dengan harga terendah
    SELECT COUNT(*) INTO length_data
    FROM PembelianBahan
    WHERE idBahan = NEW.idBahan
    ORDER BY harga ASC
    LIMIT 10;

    -- Periksa apakah harga pembelian bahan baru lebih murah dari harga terendah yang pernah ada
    IF NEW.harga < v_hargaTerendah AND length_data>=10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga pembelian bahan baru lebih murah dari harga terendah yang pernah ada.';
    END IF;
END;
