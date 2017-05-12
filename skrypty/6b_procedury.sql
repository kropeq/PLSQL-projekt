-- autor: Michał Jaworowski


---------------------------------------------------------------------------------------------

/* Obliczanie klasyfikacji indywidualnej na podstawie wszystkich wynikow konkursow */

CREATE OR REPLACE PROCEDURE p_oblicz_klasyf_ind
IS
i NUMBER := 0;
j NUMBER := 0;
v_czy_jest NUMBER;
v_poprzedni_wynik NUMBER := 0;
v_ile_powtorzen NUMBER := 0;
v_ex_aequo NUMBER;
v_punkty_klasyf NUMBER := 0;
v_bonifikata NUMBER := 0;
BEGIN
  UPDATE Klasyf_ind SET Punkty=0;
  /* petla po kolejnych sezonach */
  FOR numer_sezonu IN ( SELECT DISTINCT nazwa FROM sezon )
  LOOP
    j := 0;
    /* petla po kolejnych id konkursow */
    FOR identyfikator IN ( SELECT id FROM konkurs WHERE sezon_nazwa = numer_sezonu.nazwa)
    LOOP
      j := j + 1;
      /* petla po kolejnych wynikach konkretnego konkursu */
      FOR record IN ( SELECT ROWNUM AS Pozycja, id_konk, id_zaw, wynik FROM wyniki_konkursow_id WHERE id_konk=identyfikator.id )
      LOOP
        i := i + 1;
        
        /* sprawdzamy czy skoczek jest uwzględniony w klasyfikacji */
        SELECT COUNT(*) INTO v_czy_jest FROM klasyf_ind WHERE zawodnik_id = record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
        IF( v_czy_jest = 0 ) THEN
          INSERT INTO Klasyf_ind(punkty,ilosc_konk,sezon_nazwa,zawodnik_id) VALUES (0,0,numer_sezonu.nazwa,record.id_zaw);
        ELSIF ( j = 1 ) THEN
          UPDATE Klasyf_ind SET Punkty=0 WHERE zawodnik_id = record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
        END IF;
        
        /* jesli pierwszy rekord to znaczy, ze zwyciezca */
        IF i = 1 THEN
          v_poprzedni_wynik := record.wynik;
          DBMS_OUTPUT.PUT_LINE('Pozycja: ' || (record.pozycja)|| ' ID skoczka: ' || record.id_zaw || ' Wynik: ' || record.wynik);
          SELECT Punkty INTO v_punkty_klasyf FROM Klasyf_ind WHERE ZAWODNIK_ID=record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
          SELECT Punkty INTO v_bonifikata FROM punktacja WHERE MIEJSCE=record.pozycja;
          UPDATE Klasyf_ind SET Punkty=(v_punkty_klasyf + v_bonifikata) WHERE ZAWODNIK_ID=record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
          
        /* jesli nie pierwszy rekord tabeli i taki wynik jak poprzedni to odejmujemy ilosc powtorzen wyniku od numeru rekordu tabeli i mamy pozycje ex aequo */
        ELSIF i != 1 AND v_poprzedni_wynik = record.wynik THEN
          v_ile_powtorzen := v_ile_powtorzen + 1;
          v_ex_aequo := record.pozycja - v_ile_powtorzen;
          DBMS_OUTPUT.PUT_LINE('Pozycja: ' || v_ex_aequo || ' ID skoczka: ' || record.id_zaw || ' Wynik: ' || record.wynik);
          /* jesli pozycja w 30, to dodajemy odpowiednie punkty do klasyfikacji */
          IF v_ex_aequo <= 30 THEN
            SELECT Punkty INTO v_punkty_klasyf FROM Klasyf_ind WHERE ZAWODNIK_ID=record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
            SELECT Punkty INTO v_bonifikata FROM punktacja WHERE MIEJSCE=v_ex_aequo;
            UPDATE Klasyf_ind SET Punkty=(v_punkty_klasyf+v_bonifikata) WHERE ZAWODNIK_ID=record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
          END IF;
          
        /* jesli nie pierwszy rekord tabeli i wynik rozny niz poprzedni, to zerujemy ilosc powtorzen wyniku, a pozycja to numer rekordu tabeli */
        ELSIF i != 1 AND v_poprzedni_wynik != record.wynik THEN
          v_ile_powtorzen := 0;
          v_poprzedni_wynik := record.wynik;
          DBMS_OUTPUT.PUT_LINE('Pozycja: ' || record.pozycja || ' ID skoczka: ' || record.id_zaw || ' Wynik: ' || record.wynik);
          /* jesli pozycja w 30, to dodajemy odpowiednie punkty do klasyfikacji */
          IF record.pozycja <= 30 THEN
            SELECT Punkty INTO v_punkty_klasyf FROM Klasyf_ind WHERE ZAWODNIK_ID=record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
            SELECT Punkty INTO v_bonifikata FROM punktacja WHERE MIEJSCE=record.pozycja;
            UPDATE Klasyf_ind SET Punkty=(v_punkty_klasyf+v_bonifikata) WHERE ZAWODNIK_ID=record.id_zaw AND sezon_nazwa=numer_sezonu.nazwa;
          END IF;
        END IF;
      END LOOP;
      /* przed kolejnym konkursem zerujemy te wartosci, bo nowe obliczenia */
      i := 0;
      v_poprzedni_wynik := 0;
      v_ile_powtorzen := 0;
    END LOOP;
  END LOOP;
END;
/


--SET SERVEROUTPUT ON
BEGIN
  p_oblicz_klasyf_ind;
END;
/

/* Wypisanie obecnej klasyfikacji indywidualnej sortujac wzgledem punktacji */
SELECT ki.punkty, z.imie, z.nazwisko, kz.NAZWA FROM klasyf_ind ki
INNER JOIN Zawodnik z ON ki.ZAWODNIK_ID=z.id
INNER JOIN Kraj_zaw kz ON kz.ID=z.KRAJ_ZAW_ID
WHERE ki.sezon_nazwa = '2014/2015'
ORDER BY Punkty DESC;








---------------------------------------------------------------------------------------------


/* Obliczanie klasyfikacji druzynowej na podstawie wszystkich wynikow konkursow */

CREATE OR REPLACE PROCEDURE p_oblicz_klasyf_druz
IS
i NUMBER := 0;
v_czy_jest NUMBER;
v_poprzedni_wynik NUMBER := 0;
v_ile_powtorzen NUMBER := 0;
v_ex_aequo NUMBER;
v_punkty_klasyf NUMBER := 0;
v_bonifikata NUMBER := 0;
v_id_kraju INTEGER;
v_nazwa_kraju VARCHAR2(32);
BEGIN
  UPDATE Klasyf_druz SET Punkty=0;
  /* petla po kolejnych sezonach */
  FOR numer_sezonu IN ( SELECT DISTINCT nazwa FROM sezon )
  LOOP
    -- wyciagam wszystkie kraje biorace udzial w danym sezonie
    -- i wstawiam nowe rekordu z punktacja 0 lub updatuje punkty druzyny na 0
    FOR wyzeruj IN (SELECT DISTINCT kz.id FROM wyniki_konkursow_id wki 
    INNER JOIN konkurs k ON k.id=wki.id_konk
    INNER JOIN zawodnik z ON z.id=wki.id_zaw
    INNER JOIN kraj_zaw kz ON kz.id=z.kraj_zaw_id
    WHERE k.sezon_nazwa=numer_sezonu.nazwa )
    LOOP
    /* sprawdzamy czy druzyna jest uwzględniona w klasyfikacji tego sezonu */
      SELECT COUNT(*) INTO v_czy_jest FROM klasyf_druz WHERE kraj_zaw_id = wyzeruj.id AND SEZON_NAZWA=numer_sezonu.nazwa;
      IF( v_czy_jest = 0 ) THEN
        INSERT INTO Klasyf_druz(punkty,kraj_zaw_id,sezon_nazwa) VALUES (0,wyzeruj.id,numer_sezonu.nazwa);
      ELSE
        UPDATE Klasyf_druz SET Punkty=0 WHERE kraj_zaw_id = wyzeruj.id AND SEZON_NAZWA=numer_sezonu.nazwa;
      END IF;
    END LOOP;
    
    /* petla po kolejnych id konkursow */
    FOR identyfikator IN ( SELECT id FROM konkurs WHERE sezon_nazwa = numer_sezonu.nazwa )
    LOOP
      /* petla po kolejnych wynikach konkretnego konkursu */
      FOR record IN ( SELECT ROWNUM AS Pozycja, id_konk, id_zaw, wynik FROM wyniki_konkursow_id WHERE id_konk=identyfikator.id )
      LOOP
        i := i + 1;
        SELECT kraj_zaw_id INTO v_id_kraju FROM Zawodnik WHERE id=record.id_zaw;
        SELECT nazwa INTO v_nazwa_kraju FROM kraj_zaw WHERE id=v_id_kraju;
              
        /* jesli pierwszy rekord to znaczy, ze zwyciezca */
        IF i = 1 THEN
          v_poprzedni_wynik := record.wynik;
          
          /* jesli pozycja w 30, to dodajemy odpowiednie punkty do klasyfikacji */
          IF record.pozycja <= 30 THEN
            SELECT Punkty INTO v_punkty_klasyf FROM Klasyf_druz WHERE kraj_zaw_id=v_id_kraju AND SEZON_NAZWA=numer_sezonu.nazwa;
            SELECT Punkty INTO v_bonifikata FROM punktacja WHERE MIEJSCE=record.pozycja;
            v_punkty_klasyf := v_punkty_klasyf + v_bonifikata;
            UPDATE Klasyf_druz SET Punkty=v_punkty_klasyf WHERE kraj_zaw_id=v_id_kraju AND SEZON_NAZWA=numer_sezonu.nazwa;
            DBMS_OUTPUT.PUT_LINE('Pozycja: ' || (record.pozycja)|| ' Kraj zaw: ' || v_nazwa_kraju || ' Punkty: ' || v_bonifikata);
          END IF;
        /* jesli nie pierwszy rekord tabeli i taki wynik jak poprzedni to odejmujemy ilosc powtorzen wyniku od numeru rekordu tabeli i mamy pozycje ex aequo */
        ELSIF i != 1 AND v_poprzedni_wynik = record.wynik THEN
          v_ile_powtorzen := v_ile_powtorzen + 1;
          v_ex_aequo := record.pozycja - v_ile_powtorzen;
          /* jesli pozycja w 30, to dodajemy odpowiednie punkty do klasyfikacji */
          IF v_ex_aequo <= 30 THEN
            SELECT Punkty INTO v_punkty_klasyf FROM Klasyf_druz WHERE kraj_zaw_id=v_id_kraju AND SEZON_NAZWA=numer_sezonu.nazwa;
            SELECT Punkty INTO v_bonifikata FROM punktacja WHERE MIEJSCE=v_ex_aequo;
            v_punkty_klasyf := v_punkty_klasyf + v_bonifikata;
            UPDATE Klasyf_druz SET Punkty=v_punkty_klasyf WHERE kraj_zaw_id=v_id_kraju AND SEZON_NAZWA=numer_sezonu.nazwa;
            DBMS_OUTPUT.PUT_LINE('Pozycja: ' || v_ex_aequo || ' Kraj zaw: ' || v_nazwa_kraju || ' Punkty: ' || v_bonifikata);
          END IF;
        /* jesli nie pierwszy rekord tabeli i wynik rozny niz poprzedni, to zerujemy ilosc powtorzen wyniku, a pozycja to numer rekordu tabeli */
        ELSIF i != 1 AND v_poprzedni_wynik != record.wynik THEN
          v_ile_powtorzen := 0;
          v_poprzedni_wynik := record.wynik;
          /* jesli pozycja w 30, to dodajemy odpowiednie punkty do klasyfikacji */
          IF record.pozycja <= 30 THEN
            SELECT Punkty INTO v_punkty_klasyf FROM Klasyf_druz WHERE kraj_zaw_id=v_id_kraju AND SEZON_NAZWA=numer_sezonu.nazwa;
            SELECT Punkty INTO v_bonifikata FROM punktacja WHERE MIEJSCE=record.pozycja;
            v_punkty_klasyf := v_punkty_klasyf + v_bonifikata;
            UPDATE Klasyf_druz SET Punkty=v_punkty_klasyf WHERE kraj_zaw_id=v_id_kraju AND SEZON_NAZWA=numer_sezonu.nazwa;
            DBMS_OUTPUT.PUT_LINE('Pozycja: ' || (record.pozycja)|| ' Kraj zaw: ' || v_nazwa_kraju || ' Punkty: ' || v_bonifikata);
          END IF;
        END IF;
      END LOOP;
      /* przed kolejnym konkursem zerujemy te wartosci, bo nowe obliczenia */
      i := 0;
      v_poprzedni_wynik := 0;
      v_ile_powtorzen := 0;
    END LOOP;
  END LOOP;
END;
/

--SET SERVEROUTPUT ON
BEGIN
  p_oblicz_klasyf_druz;
END;
/


/* Wypisanie obecnej klasyfikacji druzynowej sortujac wzgledem punktacji */
SELECT kz.nazwa, kd.punkty FROM klasyf_druz kd
INNER JOIN Kraj_zaw kz ON kd.KRAJ_ZAW_ID=kz.id
WHERE kd.sezon_nazwa = '2015/2016'
ORDER BY Punkty DESC;












---------------------------------------------------------------------------------------------


/* wypisanie wszystkich zwyciezcow podanego sezonu */
CREATE OR REPLACE PROCEDURE p_wypisz_zwyciezcow
( v_sezon IN VARCHAR2 )
IS
i NUMBER := 0;
v_imie VARCHAR2(32);
v_nazwisko VARCHAR2(32);
v_miejscowosc VARCHAR2(32);
v_data DATE;
v_wynik_zwyciezcy NUMBER := 0;
BEGIN
  DELETE FROM zwyciezcy WHERE SEZON=v_sezon;
  /* petla po kolejnych id konkursow */
  FOR id_konkursu IN ( SELECT id FROM konkurs WHERE sezon_nazwa=v_sezon )
  LOOP
    
    /* petla po kolejnych wynikach konkretnego konkursu */
    FOR record IN ( SELECT id_konk, id_zaw, wynik FROM wyniki_konkursow_id WHERE id_konk=id_konkursu.id )
    LOOP
      i := i + 1;
      /* jesli pierwszy rekord to znaczy, ze zwyciezca */
      IF i = 1 THEN
        v_wynik_zwyciezcy := record.wynik;
        SELECT imie,nazwisko INTO v_imie, v_nazwisko FROM zawodnik WHERE id=record.id_zaw;
        SELECT k.data,s.miejscowosc INTO v_data,v_miejscowosc FROM konkurs k 
            INNER JOIN skocznia s ON s.id=k.skocznia_id
            WHERE k.id=record.id_konk;
        INSERT INTO zwyciezcy(imie,nazwisko,miejscowosc,sezon,data) VALUES (v_imie,v_nazwisko,v_miejscowosc,v_sezon,v_data);
      /* jesli nie pierwszy rekord tabeli i taki wynik jak zwyciezcy to rowniez zwyciezca (ex aequo) */
      ELSIF i != 1 AND v_wynik_zwyciezcy = record.wynik THEN
        SELECT imie,nazwisko INTO v_imie, v_nazwisko FROM zawodnik WHERE id=record.id_zaw;
        SELECT k.data,s.miejscowosc INTO v_data,v_miejscowosc FROM konkurs k 
            INNER JOIN skocznia s ON s.id=k.skocznia_id
            WHERE k.id=record.id_konk;
        INSERT INTO zwyciezcy(imie,nazwisko,miejscowosc,sezon,data) VALUES (v_imie,v_nazwisko,v_miejscowosc,v_sezon,v_data);
      END IF;
    END LOOP;
    /* przed kolejnym konkursem zerujemy te wartosci, bo nowe obliczenia */
    i := 0;
    v_wynik_zwyciezcy := 0;
  END LOOP;
END;
/

--SET SERVEROUTPUT ON
BEGIN
  p_wypisz_zwyciezcow('2015/2016');
END;
/

SELECT * FROM zwyciezcy WHERE sezon='2015/2016' ORDER BY data;






---------------------------------------------------------------------------------------------


/* aktualizuj wszystkie rekordy skoczni */
CREATE OR REPLACE PROCEDURE p_aktualizuj_rekordy
IS
v_ilosc_not INTEGER;
v_suma_not NUMBER;
v_czy_jest_rekord INTEGER;
v_skok NUMBER;
v_skocznia_id INTEGER;
v_wynik_id INTEGER;
v_rekord_skoczni NUMBER;
v_imie VARCHAR2(32);
v_nazwisko VARCHAR2(32);
v_rekordzista VARCHAR2(32);
v_typ VARCHAR2(10);
BEGIN
  -- sprawdz date konkursu, czy lato, czy zima
  -- jesli wynik_ind ma juz 5 not
    -- jesli suma not > 35 to rozpatrujemy rekord
      -- sprawdzamy date <listopad,marzec> = zimowy, <kwiecien,pazdziernik> = letni
        -- czy skocznia ma rekord
          -- nie -> dodaj skok z wyniku jako rekord
          -- tak -> sprawdz: czy skok > rekord
          --        - znajdz wszystkie rekordy tej skoczni i ustaw aktualny = 'n'
          --        - insertuj ten skok jako rekord skoczni i ustaw aktualny = 't'
          --     -> sprawdz: czy skok = rekord
          --        - insertuj ten skok jako rekord skoczni i ustaw aktualny = 't'
          --     -> sprawdz: czy skok < rekord
          --        - pomin
  FOR wyniki IN ( SELECT wi.*, k.sezon_nazwa, k.data FROM wynik_ind wi 
      INNER JOIN konkurs k ON k.id=wi.KONKURS_ID
      ORDER BY k.sezon_nazwa, wi.id )
  LOOP
      IF( EXTRACT(MONTH FROM wyniki.data ) > 10 OR  EXTRACT(MONTH FROM wyniki.data ) < 4 ) THEN
        v_typ := 'zimowy';
      ELSE
        v_typ := 'letni';
      END IF;
      SELECT COUNT(n.nota) INTO v_ilosc_not FROM wynik_ind wi 
        INNER JOIN noty n ON wi.id = n.wynik_ind_id WHERE wi.id = wyniki.id;
      IF( v_ilosc_not = 5 ) THEN
          SELECT SUM(nota)-MAX(nota)-MIN(nota) INTO v_suma_not FROM wynik_ind wi 
            INNER JOIN noty n ON wi.id = n.wynik_ind_id WHERE wi.id = wyniki.id;
          IF (v_suma_not > 35.0 ) THEN
              SELECT COUNT(*) INTO v_czy_jest_rekord FROM wynik_ind wi 
                INNER JOIN konkurs k ON k.id=wi.KONKURS_ID
                INNER JOIN skocznia s ON s.id=k.skocznia_id
                INNER JOIN rekord r ON r.SKOCZNIA_ID=s.id
                WHERE wi.id=wyniki.id AND r.typ = v_typ AND r.aktualny = 't';
              SELECT s.id INTO v_skocznia_id FROM wynik_ind wi 
                INNER JOIN konkurs k ON k.id=wi.KONKURS_ID
                INNER JOIN skocznia s ON s.id=k.skocznia_id
                WHERE wi.id=wyniki.id;
              IF (v_czy_jest_rekord > 0 ) THEN
                  SELECT odleglosc INTO v_rekord_skoczni FROM rekord WHERE skocznia_id = v_skocznia_id AND typ = v_typ AND aktualny = 't' AND rownum = 1;
                  IF (wyniki.skok > v_rekord_skoczni ) THEN
                      UPDATE rekord SET aktualny = 'n' WHERE skocznia_id = v_skocznia_id AND typ = v_typ AND aktualny = 't';
                      SELECT z.imie, z.nazwisko INTO v_imie, v_nazwisko FROM wynik_ind wi
                        INNER JOIN zawodnik z ON z.id=wi.zawodnik_id
                      WHERE wi.id = wyniki.id;
                      INSERT INTO rekord(typ,odleglosc,rekordzista,data,skocznia_id,aktualny) VALUES (v_typ,wyniki.skok,v_imie || ' ' || v_nazwisko,wyniki.data, v_skocznia_id,'t');
                  ELSIF( wyniki.skok = v_rekord_skoczni ) THEN
                      SELECT z.imie, z.nazwisko INTO v_imie, v_nazwisko FROM wynik_ind wi
                      INNER JOIN zawodnik z ON z.id=wi.zawodnik_id
                      WHERE wi.id = wyniki.id;
                      SELECT rekordzista INTO v_rekordzista FROM rekord WHERE skocznia_id = v_skocznia_id AND typ = v_typ AND aktualny = 't' AND rownum = 1;
                      IF ( v_rekordzista != (v_imie || ' ' || v_nazwisko ) ) THEN
                        INSERT INTO rekord(typ,odleglosc,rekordzista,data,skocznia_id,aktualny) VALUES (v_typ,wyniki.skok,v_imie || ' ' || v_nazwisko,wyniki.data,v_skocznia_id,'t');
                      END IF;
                  END IF;     
              ELSE
                  SELECT z.imie, z.nazwisko INTO v_imie, v_nazwisko FROM wynik_ind wi
                    INNER JOIN zawodnik z ON z.id=wi.zawodnik_id
                    WHERE wi.id = wyniki.id;
                  INSERT INTO rekord(typ,odleglosc,rekordzista,data,skocznia_id,aktualny) VALUES (v_typ,wyniki.skok,v_imie || ' ' || v_nazwisko,wyniki.data, v_skocznia_id,'t');
              END IF;
          END IF;
      END IF;
  END LOOP;
END;
/

--SET SERVEROUTPUT ON
BEGIN
  p_aktualizuj_rekordy;
END;
/

SELECT * FROM rekord ORDER BY skocznia_id, aktualny DESC, odleglosc DESC;







---------------------------------------------------------------------------------------------

/* jesli data ukonczenia przebudowy < obecna data, ustaw ukonczono := 't' ELSE ukonczono := 'n' */
CREATE OR REPLACE PROCEDURE p_aktualizuj_przebudowy
IS
v_ilosc NUMBER;
BEGIN
  FOR elementy IN (SELECT * FROM przebudowa )
  LOOP
      IF ( elementy.data_ukon IS NOT NULL ) THEN
          IF ( (CURRENT_DATE - elementy.data_ukon ) > 0 ) THEN
              UPDATE przebudowa SET ukonczono='t' WHERE id=elementy.id;
          ELSE
              UPDATE przebudowa SET ukonczono='n' WHERE id=elementy.id;
          END IF;
      ELSE
          UPDATE przebudowa SET ukonczono='n' WHERE id=elementy.id;
      END IF;
  END LOOP;
END;
/

--SET SERVEROUTPUT ON
BEGIN
  p_aktualizuj_przebudowy;
END;
/

SELECT * FROM przebudowa;




