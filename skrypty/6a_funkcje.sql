-- autor: Michał Jaworowski


---------------------------------------------------------------------------------------------

-- jeśli punkt konstrukcyjny jest większy niż 140, to za osiągnięcie go jest przyznawane 120 pkt
-- jeśli punkt konstrukcyjny jest mniejszy niż 140, to za osiągnięcie go jest przyznawane 60 pkt
-- wykorzystywane do obliczania wyników konkursów ( 5_select.sql )
CREATE OR REPLACE FUNCTION f_punkty_za_pkt_k 
( punkt_k INTEGER )
RETURN INTEGER
IS
BEGIN
  IF punkt_k < 140 THEN
    RETURN 60;
  ELSE
    RETURN 120;
  END IF;
END f_punkty_za_pkt_k;
/

---------------------------------------------------------------------------------------------

-- jeśli punkt konstrukcyjny jest większy niż 140, to za każdy metr przyznawane jest 1,2 pkt
-- jeśli punkt konstrukcyjny jest mniejszy niż 140, to za każdy metr przyznawane jest 1,8 pkt
-- wykorzystywane do obliczania wyników konkursów ( 5_select.sql )
CREATE OR REPLACE FUNCTION f_punkty_za_metr 
( punkt_k INTEGER )
RETURN NUMBER
IS
BEGIN
  IF punkt_k <= 90 THEN
    RETURN 2.0;
  ELSIF punkt_k BETWEEN 91 AND 139 THEN
    RETURN 1.8;
  ELSE
    RETURN 1.2;
  END IF;
END f_punkty_za_metr;
/



---------------------------------------------------------------------------------------------

-- sprawdza poprawność formatu wpisanych nazw sezonu
-- zwraca czy jest poprawny lub opis czemu nie jest poprawny
CREATE OR REPLACE FUNCTION f_sprawdz_nazwe_sezonu
( nazwa VARCHAR2 )
RETURN VARCHAR2
IS
v_rok_przed NUMBER;
v_rok_po NUMBER;
BEGIN
  -- sprawdzamy wpierw czy dlugosc sie zgadza
  IF(LENGTH(nazwa) = 9 ) THEN
      -- sprawdzamy czy możemy konwertować do NUMBER ( czy kolejne znaki to cyfry )
      IF (SUBSTR(nazwa,1,1) IN ('1','2','3','4','5','6','7','8','9') 
        AND SUBSTR(nazwa,2,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,3,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,4,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,5,1) = '/'
        AND SUBSTR(nazwa,6,1) IN ('1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,7,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,8,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,9,1) IN ('0','1','2','3','4','5','6','7','8','9')
      ) THEN
          v_rok_przed := TO_NUMBER(SUBSTR(nazwa,1,4));
          v_rok_po := TO_NUMBER(SUBSTR(nazwa,6,4));
          IF( v_rok_po - v_rok_przed = 1 ) THEN
            RETURN 'poprawna nazwa';
          ELSE
            RETURN 'zły przedział lat';
          END IF;
      ELSE
          RETURN 'zły format nazwy';
      END IF;
  ELSIF(LENGTH(nazwa) = 4 ) THEN
      IF (SUBSTR(nazwa,1,1) IN ('1','2','3','4','5','6','7','8','9') 
        AND SUBSTR(nazwa,2,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,3,1) IN ('0','1','2','3','4','5','6','7','8','9')
        AND SUBSTR(nazwa,4,1) IN ('0','1','2','3','4','5','6','7','8','9')
      ) THEN
          RETURN 'tak';
      ELSE
          RETURN 'zły format roku';
      END IF;
  ELSE
    RETURN 'zła długość';
  END IF;
END f_sprawdz_nazwe_sezonu;
/

-- TEST DZIAŁANIA powyższej funkcji
SELECT nazwa, f_sprawdz_nazwe_sezonu(nazwa) AS poprawnosc FROM sezon ORDER BY poprawnosc;




-- zwraca true jesli poprawne logowanie
CREATE OR REPLACE FUNCTION f_logowanie
(p_username IN VARCHAR2, p_password IN VARCHAR2)
RETURN BOOLEAN
AS
v_czy_jest INTEGER;
BEGIN
	SELECT COUNT(*) INTO v_czy_jest FROM uzytkownik WHERE login = p_username AND haslo = p_password;
	IF ( v_czy_jest = 1 ) THEN
		RETURN TRUE;
	ELSE
		RETURN FALSE;
	END IF;
END f_logowanie;
/
-- wykorzystywane do logowania w aplikacji
