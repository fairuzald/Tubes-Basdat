DELIMITER //


-- -- Trigger untuk validasi total harga dan metode pembayaran haruslah sesuai constraint
-- CREATE TRIGGER CheckPaymentMethodBeforeInsert BEFORE INSERT ON Transaksi
-- FOR EACH ROW
-- BEGIN
--     -- Periksa aturan khusus
--     IF (NEW.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
--     END IF;
-- END;

-- -- Trigger untuk validasi total harga dan metode pembayaran haruslah sesuai constraint
-- CREATE TRIGGER CheckPaymentMethodBeforeUpdate BEFORE UPDATE ON Transaksi
-- FOR EACH ROW
-- BEGIN
--     -- Periksa aturan khusus
--     IF (NEW.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
--     END IF;
--     IF (OLD.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'QRIS' AND OLD.totalHarga < 20000) THEN
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'Debit' AND OLD.totalHarga < 50000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
--     END IF;
--     IF (OLD.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
--     END IF;
--     IF (OLD.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
--     END IF;
--     IF (NEW.metodePembayaran = 'Kartu Kredit' AND OLD.totalHarga < 100000) THEN 
--         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
--     END IF;
-- END;


-- Trigger untuk validasi rating feedback
CREATE TRIGGER CheckFeedbackRatingBeforeInsert BEFORE INSERT ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan = 5 AND NEW.ratingKebersihan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
END;

-- Trigger untuk validasi rating feedback
CREATE TRIGGER CheckFeedbackRatingBeforeUpdate BEFORE UPDATE ON Feedback
FOR EACH ROW
BEGIN
    IF NEW.ratingPelayanan = 5 AND NEW.ratingKebersihan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
    IF NEW.ratingPelayanan = 5 AND OLD.ratingKebersihan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
      IF OLD.ratingPelayanan = 5 AND NEW.ratingKebersihan = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Rating Pelayanan bertolak belakang dengan rating Kebersihan';
    END IF;
END;

//

DELIMITER ;