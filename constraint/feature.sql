DELIMITER //


-- Memastikan bahwa update overall rating pada Feedback dilakukan setelah insert rating pada RatingMenu
CREATE TRIGGER insert_ratingMenuOverall AFTER INSERT ON RatingMenu
FOR EACH ROW
BEGIN
    DECLARE avgRating DECIMAL(5,2);
    
    SELECT AVG(rating) INTO avgRating
    FROM RatingMenu
    WHERE idFeedback = NEW.idFeedback;

    UPDATE Feedback
    SET ratingMenuOverall = avgRating
    WHERE idFeedback = NEW.idFeedback;
END;

CREATE TRIGGER update_ratingMenuOverall AFTER UPDATE ON RatingMenu
FOR EACH ROW
BEGIN
    DECLARE avgRating DECIMAL(5,2);
    
    SELECT AVG(rating) INTO avgRating
    FROM RatingMenu
    WHERE idFeedback = NEW.idFeedback;

    UPDATE Feedback
    SET ratingMenuOverall = avgRating
    WHERE idFeedback = NEW.idFeedback;
END;


CREATE TRIGGER before_insert_detailTransaksi
BEFORE INSERT ON DetailTransaksi
FOR EACH ROW
BEGIN
    DECLARE bahanCukup BOOLEAN DEFAULT TRUE;
    DECLARE selesai BOOLEAN DEFAULT FALSE;
    DECLARE idBahan INT;
    DECLARE jumlah INT;
    DECLARE stokBahan INT;
    
    -- Cursor untuk iterasi bahan yang diperlukan oleh menu yang dipesan
    DECLARE bahanCursor CURSOR FOR
    SELECT idBahan, jumlah
    FROM BahanMenu
    WHERE idMenu = NEW.idMenu;

    -- Handler untuk kondisi ketika cursor selesai
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET selesai = TRUE;

    -- Open cursor
    OPEN bahanCursor;

    bahan_loop: LOOP
        FETCH bahanCursor INTO idBahan, jumlah;
        
        -- Check if cursor has finished
        IF selesai THEN
            LEAVE bahan_loop;
        END IF;
        
        -- Get current stock
        SELECT stok INTO stokBahan
        FROM Bahan
        WHERE idBahan = idBahan;

        -- Check if stock is sufficient
        IF stokBahan < (jumlah * NEW.kuantitas) THEN
            SET bahanCukup = FALSE;
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Stok bahan tidak cukup';
        END IF;
    END LOOP;

    -- Close cursor
    CLOSE bahanCursor;

    -- If all stocks are sufficient, update the stock
    IF bahanCukup THEN
        -- Reset cursor
        SET selesai = FALSE;
        OPEN bahanCursor;

        bahan_loop_update: LOOP
            FETCH bahanCursor INTO idBahan, jumlah;

            -- Check if cursor has finished
            IF selesai THEN
                LEAVE bahan_loop_update;
            END IF;

            -- Update stock
            UPDATE Bahan
            SET stok = stok - (jumlah * NEW.kuantitas)
            WHERE idBahan = idBahan;
        END LOOP;

        -- Close cursor
        CLOSE bahanCursor;
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

CREATE TRIGGER UpdateStokBahan2 AFTER UPDATE ON PembelianBahan
FOR EACH ROW
BEGIN
    UPDATE Bahan
    SET stok = stok + NEW.jumlahPembelian
    WHERE idBahan = OLD.idBahan;
END;


CREATE TRIGGER insert_rating_menu_avg AFTER INSERT ON RatingMenu
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


CREATE TRIGGER update_rating_menu_avg AFTER UPDATE ON RatingMenu
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