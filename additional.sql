

DELIMITER //

UPDATE transaksi
SET metodepembayaran = 'Tunai'
WHERE metodepembayaran = 'Debit' AND totalHarga < 50000;

UPDATE transaksi
SET metodepembayaran = 'Tunai'
WHERE metodepembayaran = 'Kartu Kredit' AND totalHarga < 100000;

UPDATE transaksi
SET metodepembayaran = 'Tunai'
WHERE metodepembayaran = 'QRIS' AND totalHarga < 20000;

ALTER TABLE Transaksi
ADD CONSTRAINT check_totalHarga
CHECK (totalHarga >= 0
AND (metodePembayaran != 'QRIS' OR totalHarga >= 20000)
AND (metodePembayaran != 'Debit' OR totalHarga >= 50000)
AND (metodePembayaran != 'Kartu Kredit' OR totalHarga >= 100000));

-- Trigger untuk validasi total harga dan metode pembayaran haruslah sesuai constraint
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

-- Trigger untuk validasi total harga dan metode pembayaran haruslah sesuai constraint
CREATE TRIGGER CheckPaymentMethodBeforeUpdate BEFORE UPDATE ON Transaksi
FOR EACH ROW
BEGIN
    -- Periksa aturan khusus
    IF (NEW.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
    END IF;
    IF (OLD.metodePembayaran = 'QRIS' AND NEW.totalHarga < 20000) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
    END IF;
    IF (NEW.metodePembayaran = 'QRIS' AND OLD.totalHarga < 20000) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran QRIS untuk total harga di bawah 20.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Debit' AND OLD.totalHarga < 50000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
    END IF;
    IF (OLD.metodePembayaran = 'Debit' AND NEW.totalHarga < 50000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Debit untuk total harga di bawah 50.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
    END IF;
    IF (OLD.metodePembayaran = 'Kartu Kredit' AND NEW.totalHarga < 100000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
    END IF;
    IF (NEW.metodePembayaran = 'Kartu Kredit' AND OLD.totalHarga < 100000) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sistem tidak menerima pembayaran Kartu Kredit untuk total harga di bawah 100.000.';
    END IF;
END;

CREATE TRIGGER UpdateStokBahan AFTER INSERT ON PembelianBahan
FOR EACH ROW
BEGIN
    UPDATE Bahan
    SET stok = stok + NEW.jumlahPembelian
    WHERE idBahan = NEW.idBahan;
END;

CREATE TRIGGER UpdateStokBahan2 AFTER UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    UPDATE Bahan
    SET stok = stok + NEW.jumlahPembelian
    WHERE idBahan = OLD.idBahan;
END;

//
DELIMITER ;