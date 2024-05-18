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