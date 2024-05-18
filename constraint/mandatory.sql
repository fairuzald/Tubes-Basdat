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