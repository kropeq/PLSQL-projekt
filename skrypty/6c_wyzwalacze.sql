-- autor: Michał Jaworowski



---------------------------------------------------------------------------------------------

/* Wyzwalacz - po zgloszeniu do konkursu zwieksza ilosc wystepow  */
/*           - po usunięciu z konkursu zmniejsza ilosc wystepow  */ 
CREATE OR REPLACE TRIGGER t_klasyf_ind_ilosc_konkursow
AFTER INSERT OR DELETE ON konk_zaw
FOR EACH ROW
DECLARE
v_czy_jest INTEGER;
v_ilosc_konk NUMBER;
v_sezon_nazwa VARCHAR2(9);
BEGIN
  IF INSERTING THEN
      SELECT sezon_nazwa INTO v_sezon_nazwa FROM Konkurs WHERE ID = :NEW.konkurs_id;
      SELECT COUNT(*) INTO v_czy_jest FROM Klasyf_ind WHERE ZAWODNIK_ID = :NEW.zawodnik_id AND SEZON_NAZWA = v_sezon_nazwa;
      IF v_czy_jest > 0 THEN
        SELECT ilosc_konk INTO v_ilosc_konk FROM klasyf_ind WHERE ZAWODNIK_ID = :NEW.zawodnik_id AND sezon_nazwa = v_sezon_nazwa;
        UPDATE klasyf_ind SET ilosc_konk = v_ilosc_konk + 1 WHERE ZAWODNIK_ID = :NEW.zawodnik_id AND sezon_nazwa = v_sezon_nazwa;
      ELSE
        INSERT INTO Klasyf_ind(ilosc_konk,zawodnik_id,sezon_nazwa) VALUES (1,:NEW.zawodnik_id,v_sezon_nazwa );
      END IF;
  ELSIF DELETING THEN
      SELECT sezon_nazwa INTO v_sezon_nazwa FROM Konkurs WHERE ID = :OLD.konkurs_id;
      SELECT COUNT(*) INTO v_czy_jest FROM Klasyf_ind WHERE ZAWODNIK_ID = :OLD.zawodnik_id AND SEZON_NAZWA = v_sezon_nazwa;
      IF v_czy_jest > 0 THEN
        SELECT ilosc_konk INTO v_ilosc_konk FROM klasyf_ind WHERE ZAWODNIK_ID = :OLD.zawodnik_id AND SEZON_NAZWA = v_sezon_nazwa;
        IF (v_ilosc_konk > 0 ) THEN
          UPDATE klasyf_ind SET ilosc_konk = v_ilosc_konk - 1 WHERE ZAWODNIK_ID = :OLD.zawodnik_id AND sezon_nazwa = v_sezon_nazwa;
        END IF;
      END IF;
    END IF;
END;
/

---------------------------------------------------------------------------------------------

/* Wyzwalacz - po dodaniu konkursu zwieksza liczbe konkursow w danym sezonie  */ 
/*           - po usunieciu konkursu zmniejsza liczbe konkursow w danym sezonie  */ 
CREATE OR REPLACE TRIGGER t_sezon_liczba_konkursow
AFTER DELETE OR INSERT ON konkurs
FOR EACH ROW
DECLARE
v_liczba_konk INTEGER;
BEGIN
  IF INSERTING THEN
    SELECT liczba_konk INTO v_liczba_konk FROM sezon WHERE nazwa = :NEW.sezon_nazwa;
    UPDATE sezon SET liczba_konk = v_liczba_konk + 1 WHERE nazwa = :NEW.sezon_nazwa;
  ELSIF DELETING THEN
    SELECT liczba_konk INTO v_liczba_konk FROM sezon WHERE nazwa = :OLD.sezon_nazwa;
    UPDATE sezon SET liczba_konk = v_liczba_konk - 1 WHERE nazwa = :OLD.sezon_nazwa;
  END IF;
END;
/


---------------------------------------------------------------------------------------------

/* Wyzwalacz - po dodaniu nazwy sezonu ustalamy czy jest to sezon letni czy zimowy  */ 
/* ustalamy na podstawie dlugosci nazwy ( zimowe -> 2015/2016, letnie -> 2015 ) */
CREATE OR REPLACE TRIGGER t_sezon_ustal_rodzaj
BEFORE INSERT ON sezon
FOR EACH ROW
BEGIN
  IF(LENGTH(:NEW.nazwa) = 9) THEN
    :NEW.rodzaj := 'zimowy';
  ELSE
    :NEW.rodzaj := 'letni';
  END IF;
END;
/

---------------------------------------------------------------------------------------------


/* Wyzwalacz - jesli usuwamy zawodnika, usuwaja sie wszystkie jego referencje */
CREATE OR REPLACE TRIGGER t_usun_refer_zawodnika
BEFORE DELETE ON zawodnik
FOR EACH ROW
BEGIN
  DELETE FROM konk_zaw WHERE zawodnik_ID = :OLD.id;
  DELETE FROM klasyf_ind WHERE ZAWODNIK_ID = :OLD.id; 
  DELETE FROM wynik_ind WHERE ZAWODNIK_ID = :OLD.id;  
END;
/


---------------------------------------------------------------------------------------------

/* Wyzwalacz - zanim usuniemy lub zaktualizujemy wynik skoczka - archiwizujemy go */
CREATE OR REPLACE TRIGGER t_edytuj_wynik_ind
BEFORE DELETE OR UPDATE ON wynik_ind
FOR EACH ROW
BEGIN
  IF DELETING THEN
      DELETE FROM noty WHERE WYNIK_IND_ID = :OLD.id;
      INSERT INTO wynik_ind_hist VALUES( :OLD.id, :OLD.nr_serii, :OLD.skok, :OLD.wiatr, :OLD.pkt_wiatr, :OLD.belka,
      :OLD.pkt_belka, :OLD.konkurs_id, :OLD.zawodnik_id, 'delete', CURRENT_DATE);
  ELSIF UPDATING THEN
      INSERT INTO wynik_ind_hist VALUES( :OLD.id, :OLD.nr_serii, :OLD.skok, :OLD.wiatr, :OLD.pkt_wiatr, :OLD.belka,
      :OLD.pkt_belka, :OLD.konkurs_id, :OLD.zawodnik_id, 'update', CURRENT_DATE);
  END IF;
END;
/


/* Wyzwalacz - po wprowadzeniu nowego uzytkownika - powiekszamy jego login */
CREATE OR REPLACE TRIGGER t_uzytkownik_upper
BEFORE INSERT ON uzytkownik
FOR EACH ROW
BEGIN
	:NEW.login := UPPER(:NEW.login);
END;
/


