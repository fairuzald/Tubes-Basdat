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