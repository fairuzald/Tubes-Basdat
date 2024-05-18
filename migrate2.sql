DELIMITER //

-- DATABASE CONSTRAINT
-- Trigger untuk membatasi pembelian bahan agar tidak melebihi 200
CREATE TRIGGER LimitStokPembelianBeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_stokBahan INT;

    -- Ambil stok bahan yang akan dibeli
    SELECT stok INTO v_stokBahan
    FROM Bahan
    WHERE idBahan = NEW.idBahan;

    -- Periksa apakah stok bahan melebihi 500
    IF v_stokBahan > 200 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok bahan melebihi 500, pembelian tidak diizinkan.';
    END IF;
END;


-- Trigger untuk membatasi harga pembelian bahan agar tidak lebih mahal dari harga menu
CREATE TRIGGER LimitMenuHargaPembelianBeforeInsert BEFORE INSERT ON PembelianBahan
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
CREATE TRIGGER LimitBahanTermurahPembelianBeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    DECLARE v_hargaBahanTerendah INT;

    -- Bahan termurah kesepuluh
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


CREATE TRIGGER EnsureMenuType AFTER INSERT ON Menu
FOR EACH ROW
BEGIN
    IF NEW.tipe = 'Makanan' THEN
        INSERT INTO Makanan (idMenu) VALUES (NEW.idMenu);
    ELSEIF NEW.tipe = 'Minuman' THEN
        INSERT INTO Minuman (idMenu) VALUES (NEW.idMenu);
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
CREATE TRIGGER UpdateTotalHarga AFTER INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE v_total INT;
    SELECT SUM(Menu.harga * NEW.kuantitas)
    INTO v_total
    FROM Menu
    WHERE Menu.idMenu = NEW.idMenu;
    
    UPDATE Transaksi SET totalHarga = v_total WHERE nomorTransaksi = NEW.nomorTransaksi;
END;

//
DELIMITER ;

DELIMITER //


CREATE TRIGGER CheckStockBahanEnough BEFORE INSERT ON DetailTransaksi
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
END;


CREATE TRIGGER update_rating_menu AFTER INSERT ON RatingMenu
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(5,2);

    -- Calculate average rating for the menu associated with the new rating
    SELECT AVG(rating) INTO avg_rating
    FROM RatingMenu
    WHERE idDetailTransaksi IN (
        SELECT idDetailTransaksi
        FROM DetailTransaksi
        WHERE idMenu = (
            SELECT idMenu
            FROM DetailTransaksi
            WHERE idDetailTransaksi = NEW.idDetailTransaksi
        )
    );

    -- Update the average rating in the Menu table
    UPDATE Menu
    SET rating = avg_rating
    WHERE idMenu = (
        SELECT idMenu
        FROM DetailTransaksi
        WHERE idDetailTransaksi = NEW.idDetailTransaksi
    );
END;


//
DELIMITER ;

DELIMITER //

-- Trigger untuk memeriksa penilaian menu sebelum masuk (INSERT)
CREATE TRIGGER CheckRatingMenu_BeforeInsert BEFORE INSERT ON Menu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.tipe NOT IN ('Makanan', 'Minuman') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipe harus Makanan atau Minuman';
    END IF;
END;

-- Trigger untuk memeriksa penilaian menu sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckRatingMenu_BeforeUpdate BEFORE UPDATE ON Menu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.tipe NOT IN ('Makanan', 'Minuman') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipe harus Makanan atau Minuman';
    END IF;
END;

-- Trigger untuk memeriksa penyedia bahan sebelum masuk (INSERT)
CREATE TRIGGER CheckPenyediaBahan_BeforeInsert BEFORE INSERT ON PenyediaBahan
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END;

-- Trigger untuk memeriksa penyedia bahan sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckPenyediaBahan_BeforeUpdate BEFORE UPDATE ON PenyediaBahan
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END;

-- Trigger untuk memeriksa bahan sebelum masuk (INSERT)
CREATE TRIGGER CheckBahan_BeforeInsert BEFORE INSERT ON Bahan
FOR EACH ROW
BEGIN
    IF NEW.stok < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa bahan sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckBahan_BeforeUpdate BEFORE UPDATE ON Bahan
FOR EACH ROW
BEGIN
    IF NEW.stok < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa pegawai sebelum masuk (INSERT)
CREATE TRIGGER CheckPegawai_BeforeInsert BEFORE INSERT ON Pegawai
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.NIKPegawai) != 16 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai harus 16 karakter';
    END IF;
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END;

-- Trigger untuk memeriksa pegawai sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckPegawai_BeforeUpdate BEFORE UPDATE ON Pegawai
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.NIKPegawai) != 16 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai harus 16 karakter';
    END IF;
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END;

-- Trigger untuk memeriksa pengunjung sebelum masuk (INSERT)
CREATE TRIGGER CheckPengunjung_BeforeInsert BEFORE INSERT ON Pengunjung
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END;

-- Trigger untuk memeriksa pengunjung sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckPengunjung_BeforeUpdate BEFORE UPDATE ON Pengunjung
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.nomorTelepon) > 13 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon harus kurang dari atau sama dengan 13 karakter';
    END IF;
    IF POSITION('@' IN NEW.email) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email harus berisi @';
    END IF;
    IF NEW.nomorTelepon NOT REGEXP '^\\+?[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Nomor Telepon hanya boleh berisi angka atau dimulai dengan +';
    END IF;
END;

-- Trigger untuk memeriksa transaksi sebelum masuk (INSERT)
CREATE TRIGGER CheckTransaksi_BeforeInsert BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.totalHarga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.metodePembayaran NOT IN ('Tunai', 'Kartu Kredit', 'QRIS', 'Debit') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Metode Pembayaran harus Tunai, Kartu Kredit, QRIS, atau Debit';
    END IF;
    IF NEW.emailPengunjung IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email Pengunjung tidak boleh NULL';
    END IF;
    IF NEW.NIKPegawai IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai tidak boleh NULL';
    END IF;
END;

-- Trigger untuk memeriksa transaksi sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckTransaksi_BeforeUpdate BEFORE UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.totalHarga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.metodePembayaran NOT IN ('Tunai', 'Kartu Kredit', 'QRIS', 'Debit') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Metode Pembayaran harus Tunai, Kartu Kredit, QRIS, atau Debit';
    END IF;
    IF NEW.emailPengunjung IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email Pengunjung tidak boleh NULL';
    END IF;
    IF NEW.NIKPegawai IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'NIK Pegawai tidak boleh NULL';
    END IF;
END;

-- Trigger untuk memeriksa makanan sebelum masuk (INSERT)
CREATE TRIGGER CheckMakanan_BeforeInsert BEFORE INSERT ON Makanan
FOR EACH ROW
BEGIN
    IF NEW.tingkatKepedasan < 0 OR NEW.tingkatKepedasan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tingkat Kepedasan harus di antara 0 dan 5';
    END IF;
END;

-- Trigger untuk memeriksa makanan sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckMakanan_BeforeUpdate BEFORE UPDATE ON Makanan
FOR EACH ROW
BEGIN
    IF NEW.tingkatKepedasan < 0 OR NEW.tingkatKepedasan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tingkat Kepedasan harus di antara 0 dan 5';
    END IF;
END;

-- Trigger untuk memeriksa minuman sebelum masuk (INSERT)
CREATE TRIGGER CheckMinuman_BeforeInsert BEFORE INSERT ON Minuman
FOR EACH ROW
BEGIN
    IF NEW.isDingin NOT IN (TRUE, FALSE) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'isDingin harus TRUE atau FALSE';
    END IF;
END;

-- Trigger untuk memeriksa minuman sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckMinuman_BeforeUpdate BEFORE UPDATE ON Minuman
FOR EACH ROW
BEGIN
    IF NEW.isDingin NOT IN (TRUE, FALSE) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'isDingin harus TRUE atau FALSE';
    END IF;
END;

-- Trigger untuk memeriksa bahan menu sebelum masuk (INSERT)
CREATE TRIGGER CheckBahanMenu_BeforeInsert BEFORE INSERT ON BahanMenu
FOR EACH ROW
BEGIN
    IF NEW.jumlah < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa bahan menu sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckBahanMenu_BeforeUpdate BEFORE UPDATE ON BahanMenu
FOR EACH ROW
BEGIN
    IF NEW.jumlah < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa pembelian bahan sebelum masuk (INSERT)
CREATE TRIGGER CheckPembelianBahan_BeforeInsert BEFORE INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.jumlahPembelian < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah Pembelian harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa pembelian bahan sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckPembelianBahan_BeforeUpdate BEFORE UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.harga < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga harus lebih besar dari atau sama dengan 0';
    END IF;
    IF NEW.jumlahPembelian < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Jumlah Pembelian harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa detail transaksi sebelum masuk (INSERT)
CREATE TRIGGER CheckDetailTransaksi_BeforeInsert BEFORE INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    IF NEW.kuantitas < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Kuantitas harus lebih besar dari atau sama dengan 0';
    END IF;
END;

--
-- Trigger untuk memeriksa detail transaksi sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckDetailTransaksi_BeforeUpdate BEFORE UPDATE ON DetailTransaksi
FOR EACH ROW
BEGIN
    IF NEW.kuantitas < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Kuantitas harus lebih besar dari atau sama dengan 0';
    END IF;
END;

-- Trigger untuk memeriksa feedback sebelum masuk (INSERT)
CREATE TRIGGER CheckFeedback_BeforeInsert BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan < 0 OR NEW.ratingPelayanan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingKebersihan < 0 OR NEW.ratingKebersihan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Kebersihan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingMenuOverall < 0 OR NEW.ratingMenuOverall > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Menu Overall harus di antara 0 dan 5';
    END IF;
END;

-- Trigger untuk memeriksa feedback sebelum pembaruan (UPDATE)
CREATE TRIGGER CheckFeedback_BeforeUpdate BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan < 0 OR NEW.ratingPelayanan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingKebersihan < 0 OR NEW.ratingKebersihan > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Kebersihan harus di antara 0 dan 5';
    END IF;
    IF NEW.ratingMenuOverall < 0 OR NEW.ratingMenuOverall > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Menu Overall harus di antara 0 dan 5';
    END IF;
END;

-- Trigger untuk memeriksa penilaian menu sebelum masuk (INSERT) ke tabel RatingMenu
CREATE TRIGGER CheckRatingMenu_BeforeInsert_2 BEFORE INSERT ON RatingMenu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
END;

-- Trigger untuk memeriksa penilaian menu sebelum pembaruan (UPDATE) di tabel RatingMenu
CREATE TRIGGER CheckRatingMenu_BeforeUpdate_2 BEFORE UPDATE ON RatingMenu
FOR EACH ROW
BEGIN
    IF NEW.rating < 0 OR NEW.rating > 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating harus di antara 0 dan 5';
    END IF;
END;
//

DELIMITER ;

DELIMITER //


-- Trigger untuk validasi total harga dan metode pembayaran
CREATE TRIGGER CheckPaymentMethodBeforeInsert BEFORE INSERT ON Transaksi
FOR EACH ROW
BEGIN
    -- Periksa aturan khusus
    IF (NEW.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
    END IF;
END;

-- Tidak mungkin ada rating pelayanan 5 jika tempat kotor
CREATE TRIGGER CheckFeedbackRatingBeforeInsert BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan = 5 AND NEW.ratingKebersihan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
END;
//

DELIMITER ;


DELIMITER //

-- TRANSITION CONSTRAINT
-- Trigger untuk Transaksi
CREATE TRIGGER PreventInvalidUpdateTransaksiBeforeUpdate
BEFORE UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    IF NEW.tanggalTransaksi < OLD.tanggalTransaksi THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal transaksi.';
    END IF;
    IF NEW.tanggalTransaksi >= OLD.tanggalTransaksi THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal transaksi.';
    END IF;
END;

-- Trigger untuk PembelianBahan
CREATE TRIGGER PreventInvalidUpdatePembelianBahanBeforeUpdate
BEFORE UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    IF NEW.tanggalPembelian < OLD.tanggalPembelian THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal pembelian.';
    END IF;
    IF NEW.tanggalPembelian >= OLD.tanggalPembelian THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate tanggal pembelian.';
    END IF;
END;

-- Trigger untuk Feedback
CREATE TRIGGER PreventInvalidUpdateFeedbackBeforeUpdate
BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.waktuFeedback < OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback';
    END IF;
    IF NEW.waktuFeedback >= OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback';
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

//
DELIMITER ;

