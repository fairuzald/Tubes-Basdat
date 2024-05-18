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