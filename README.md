## PLSQL-projekt
----
### Cel projektu

Zapoznanie się z systemem zarządzania relacyjnymi bazami danych Oracle oraz jego możliwościami.

----
### Opis działania

Strona internetowa zawierająca rejestrację oraz logowanie. Użytkownik po zalogowaniu ma dostęp do przeglądania informacji zawartych w bazie danych na temat skoków narciarskich poprzez wcześniej starannie przygotowany interfejs graficzny. Administrator natomiast po zalogowaniu posiada dodatkowo panel administratora, w którym może zarządzać danymi zawartymi w bazie, a także nadawać i odbierać uprawnienia użytkownikom.

---
### Role w projekcie

* _administrator_ - dostęp do edycji, usuwania i modyfikowania wszystkich informacji zawartych w bazie za pomocą panelu administratora. Konto admina: __login__: _kropeq_, __hasło__:_system123_
* _użytkownik_ - możliwość utworzenia konta, a po zalogowaniu przeglądania informacji na temat skoków narciarskich takich jak terminy zawodów, wyniki konkursów, klasyfikacje i wiele innych.

---
### Funkcjonalność

* rejestracja
* logowanie
* wyświetlanie informacji z bazy danych
* wykresy
* kalendarz
* feedback
* CRUD dla administratora do zarządzania danymi w bazie

---
### Zawartość skryptów

* tabele( TABLE )
* sekwencje( SEQUENCE )
* ograniczenia( CONSTRAINT )
* dane( INSERT )
* widoki( VIEW )
* zagnieżdżenia( SELECT )
* funkcje( FUNCTION )
* procedury( PROCEDURE )
* wyzwalacze( TRIGGER )
* pakiety( PACKAGE )

----
### Wykorzystane narzędzia

* Oracle Database 11g Express Edition ( serwer bazy Oracle )
* Oracle SQL Developer Data Modeler 4.2.0 ( diagram ERD + export skryptu)
* Oracle SQL Developer 4.2.0 ( zintegrowane środowisko do pracy z Oracle )
* APEX 5.0 ( interfejs graficzny aplikacji webowej )

----
### Zawartość bazy danych

- wyniki zawodów indywidualnych skoczków, które będą się składały na wyliczane klasyfikacje,
- sezony i ilość przeprowadzonych w nich konkursów,
- konkursy odbyte i zaplanowane,
- skocznie i ich historie przebudowań,
- skoczkowie i ich przynależność do klubów,
- reprezentacje i ich główni trenerzy,
- historia rekordów danych skoczni,
- inne, mniej istotne informacje( np. sponsorzy klubów czy wykonawców przebudowań ), lecz dopełniające całość.

----
### Szczegółowy scenariusz bazy

[Scenariusz](https://github.com/kropeq/PLSQL-projekt/blob/master/1_scenariusz.pdf) zawiera szczegółowy opis tego, co zawiera baza danych i za co każdy z elementów bazy odpowiada. Przedstawia również krótki opis dlaczego taki temat został podjęty.

---
### Sposób uruchomienia:

1. Pobranie repozytorium.
2. Rejestracja i zalogowanie w [APEX](https://apex.oracle.com/en/).
3. Stworzenie "Application Development workspace".
4. Import pliku 8_APEX.sql jako kodu aplikacji.
5. Upload skryptów:"SQL Workshop"->"SQL Scripts"->"Upload"
6. Wykonanie skryptów( przycisk "Run" - kolejność skryptów podana w scenariuszu ).
7. W stworzonej aplikacji "Run application".

---
### Prezentacja aplikacji
