
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

-- Trigger untuk Validasi waktu feedback
CREATE TRIGGER PreventInvalidUpdateFeedbackBeforeUpdate
BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.waktuFeedback < OLD.waktuFeedback THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Tidak bisa mengupdate waktu feedback';
    END IF;
END;


-- -- Trigger untuk membatasi pembelian bahan yang sangat murah (all-time low)
-- CREATE TRIGGER BatasiPembelianBahanMurah BEFORE INSERT ON PembelianBahan
-- FOR EACH ROW
-- BEGIN
--     DECLARE v_hargaTerendah INT;
--     DECLARE length_data INT;

--     -- Ambil harga terendah yang pernah ada untuk bahan yang akan dibeli
--     SELECT MIN(harga) INTO v_hargaTerendah
--     FROM PembelianBahan
--     WHERE idBahan = NEW.idBahan;


--     -- Hitung jumlah data pembelian bahan dengan harga terendah
--     SELECT COUNT(*) INTO length_data
--     FROM PembelianBahan
--     WHERE idBahan = NEW.idBahan
--     ORDER BY harga ASC
--     LIMIT 10;

--     -- Periksa apakah harga pembelian bahan baru lebih murah dari harga terendah yang pernah ada
--     IF NEW.harga < v_hargaTerendah AND length_data>=10 THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Harga pembelian bahan baru lebih murah dari harga terendah yang pernah ada.';
--     END IF;
-- END;

-- Trigger untuk membatasi harga menu tidak boleh turun
CREATE TRIGGER prevent_harga_menu_decrease
BEFORE UPDATE ON Menu
FOR EACH ROW
BEGIN
    IF NEW.harga < OLD.harga THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot decrease harga value';
    END IF;
END;


//
DELIMITER ;