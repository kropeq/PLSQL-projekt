-- autor: Michał Jaworowski

-- UWAGA!!!
-- niektóre korzystają z funkcji do określenia współczynnika obliczeń
-- zaleca się wpierw wykonanie pliku 6a_funkcje.sql


---------------------------------------------------------------------------------------------

/* obliczanie wyników konkursów - wypisanie id konkursu, id zawodnika i wyniku */
CREATE OR REPLACE VIEW wyniki_konkursow_id AS
SELECT id_zaw, id_konk, wynik FROM
    (SELECT id_zaw, id_konk, SUM(wyniki) AS wynik FROM
        (SELECT z.id AS id_zaw, k.id AS id_konk, 
            SUM((wi.skok-s.punkt_k)*f_punkty_za_metr(s.punkt_k)+f_punkty_za_pkt_k(s.punkt_k)+wi.pkt_wiatr+wi.pkt_belka)+
            (SELECT SUM(nota)-MAX(nota)-MIN(nota) FROM noty WHERE wynik_ind_id=wi.id ) AS wyniki 
        FROM Wynik_ind wi
        INNER JOIN Zawodnik z ON z.id=wi.Zawodnik_id
        INNER JOIN Konkurs k ON wi.konkurs_id=k.id
        INNER JOIN Skocznia s ON s.id=k.Skocznia_id
        GROUP BY k.id, z.id, wi.id)
      GROUP BY id_konk, id_zaw)
INNER JOIN konkurs k ON k.id = id_konk
ORDER BY k.data ASC, wynik DESC;
      
SELECT * FROM wyniki_konkursow_id;

---------------------------------------------------------------------------------------------

/* obliczanie wyników konkursow - wypisanie rezultatów, skoczków, skoczni i dat */
CREATE OR REPLACE VIEW wyniki_konkursow AS
  SELECT z.imie, z.nazwisko, w.wynik, (SELECT s.miejscowosc FROM konkurs k INNER JOIN skocznia s ON k.SKOCZNIA_ID=s.id WHERE k.id=w.kid ) AS miejscowosc, k.sezon_nazwa, k.data
  FROM zawodnik z, konkurs k,
      (SELECT w.id, w.kid AS kid, SUM(pkt_seria) AS Wynik FROM
          (SELECT z.id, k.id AS kid, SUM((wi.skok-s.punkt_k)*f_punkty_za_metr(s.punkt_k)+f_punkty_za_pkt_k(s.punkt_k)+wi.pkt_wiatr+wi.pkt_belka)+
          (SELECT SUM(nota)-MAX(nota)-MIN(nota) FROM noty WHERE wynik_ind_id=wi.id ) AS pkt_seria 
          FROM Wynik_ind wi
          INNER JOIN Zawodnik z ON z.id=wi.Zawodnik_id
          INNER JOIN Konkurs k ON wi.konkurs_id=k.id
          INNER JOIN Skocznia s ON s.id=k.Skocznia_id
          GROUP BY k.id, z.id, wi.id) w 
      GROUP BY w.kid, w.id) w
  WHERE z.id=w.id AND w.kid = k.id
  ORDER BY k.data ASC, wynik DESC;
  
SELECT * FROM wyniki_konkursow;




---------------------------------------------------------------------------------------------

-- sprawdza wszystkie odległości zawodników poza punkt HS( bezpieczeństwa )
-- sortując konkursami, a potem seriami i dopiero odległościami
CREATE OR REPLACE VIEW skoki_poza_rozmiarHS AS
  SELECT s.punkt_k, ( s.miejscowosc || ' HS-' || s.punkt_hs ) AS miejscowosc, wi.nr_serii, wi.skok, z.imie, z.nazwisko, k.sezon_nazwa, k.data 
  FROM Wynik_ind wi
  INNER JOIN Zawodnik z ON z.id=wi.Zawodnik_id
  INNER JOIN Konkurs k ON k.id=wi.Konkurs_id
  INNER JOIN Skocznia s ON s.id=k.Skocznia_id
  WHERE wi.skok >= s.punkt_hs
  ORDER BY k.id, wi.nr_serii, wi.skok DESC;
  
SELECT * FROM skoki_poza_rozmiarHS;







