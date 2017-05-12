-- autor: Michał Jaworowski

-- przed przystąpieniem do wykonania tych insertów
-- zaleca się wpierw wykonanie wyzwalaczy( 6c_wyzwalacze.sql )
-- ponieważ niektóre funkcjonalności są ustawione na INSERT

/* role */
INSERT INTO rola(nazwa) VALUES('UZYTKOWNIK');
INSERT INTO rola(nazwa) VALUES('ADMIN');

/* uzytkownicy */
INSERT INTO uzytkownik(login,haslo,rola_id) VALUES ('kropeq','system123',2);
INSERT INTO uzytkownik(login,haslo,rola_id) VALUES ('tester','system123',1);


/* Punktacja zawodow */
INSERT INTO punktacja(miejsce,punkty) VALUES(1,100);
INSERT INTO punktacja(miejsce,punkty) VALUES(2,80);
INSERT INTO punktacja(miejsce,punkty) VALUES(3,60);
INSERT INTO punktacja(miejsce,punkty) VALUES(4,50);
INSERT INTO punktacja(miejsce,punkty) VALUES(5,45);
INSERT INTO punktacja(miejsce,punkty) VALUES(6,40);
INSERT INTO punktacja(miejsce,punkty) VALUES(7,36);
INSERT INTO punktacja(miejsce,punkty) VALUES(8,32);
INSERT INTO punktacja(miejsce,punkty) VALUES(9,29);
INSERT INTO punktacja(miejsce,punkty) VALUES(10,26);
INSERT INTO punktacja(miejsce,punkty) VALUES(11,24);
INSERT INTO punktacja(miejsce,punkty) VALUES(12,22);
INSERT INTO punktacja(miejsce,punkty) VALUES(13,20);
INSERT INTO punktacja(miejsce,punkty) VALUES(14,18);
INSERT INTO punktacja(miejsce,punkty) VALUES(15,16);
INSERT INTO punktacja(miejsce,punkty) VALUES(16,15);
INSERT INTO punktacja(miejsce,punkty) VALUES(17,14);
INSERT INTO punktacja(miejsce,punkty) VALUES(18,13);
INSERT INTO punktacja(miejsce,punkty) VALUES(19,12);
INSERT INTO punktacja(miejsce,punkty) VALUES(20,11);
INSERT INTO punktacja(miejsce,punkty) VALUES(21,10);
INSERT INTO punktacja(miejsce,punkty) VALUES(22,9);
INSERT INTO punktacja(miejsce,punkty) VALUES(23,8);
INSERT INTO punktacja(miejsce,punkty) VALUES(24,7);
INSERT INTO punktacja(miejsce,punkty) VALUES(25,6);
INSERT INTO punktacja(miejsce,punkty) VALUES(26,5);
INSERT INTO punktacja(miejsce,punkty) VALUES(27,4);
INSERT INTO punktacja(miejsce,punkty) VALUES(28,3);
INSERT INTO punktacja(miejsce,punkty) VALUES(29,2);
INSERT INTO punktacja(miejsce,punkty) VALUES(30,1);


/* sezony */
INSERT INTO sezon(nazwa) VALUES ('2014/2015');
INSERT INTO sezon(nazwa) VALUES ('2015/2016');


/* Skocznie */
INSERT INTO Skocznia (nazwa,miejscowosc,kraj,punkt_K,punkt_HS,rok_powst,przebudowana) VALUES ('Wielka Krokiew','Zakopane','Polska',120,134,TO_DATE('1925/05/03', 'yyyy/mm/dd'),'t');
INSERT INTO Skocznia (nazwa,miejscowosc,kraj,punkt_K,punkt_HS,rok_powst,przebudowana) VALUES ('Muhlenkopfschanze','Willingen','Niemcy',130,145,TO_DATE('1951/01/01', 'yyyy/mm/dd'),'t');
INSERT INTO Skocznia (nazwa,miejscowosc,kraj,punkt_K,punkt_HS,rok_powst,przebudowana) VALUES ('Letalnica','Planica','Słowenia',200,225,TO_DATE('1969/05/03', 'yyyy/mm/dd'),'t');


/* Rekordy */
INSERT INTO rekord(typ,odleglosc,rekordzista,skocznia_id,aktualny) VALUES ('zimowy',230.5,'Peter Prevc',3,'t');
INSERT INTO rekord(typ,odleglosc,rekordzista,skocznia_id,aktualny) VALUES ('zimowy',125.5,'Simon Ammann',1,'t');
INSERT INTO rekord(typ,odleglosc,rekordzista,skocznia_id,aktualny) VALUES ('letni',139.5,'Simon Ammann',1,'t');
INSERT INTO rekord(odleglosc,rekordzista,skocznia_id,aktualny) VALUES (152.0,'Janne Ahonen',2,'t');
INSERT INTO rekord(odleglosc,rekordzista,skocznia_id,aktualny) VALUES (152.0,'Jurij Tepes',2,'t');


/* Kraj  zawodnika */
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Norwegia',7);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Słowenia',6);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Niemcy',7);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Austria',6);
INSERT INTO Kraj_zaw (Nazwa) VALUES ('Japonia');
INSERT INTO Kraj_zaw (Nazwa) VALUES ('Polska');
INSERT INTO Kraj_zaw (Nazwa) VALUES ('Czechy');
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Szwajcaria',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Finlandia',3);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Francja',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Rosja',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('USA',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Kanada',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Włochy',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Bułgaria',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Korea',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Estonia',2);
INSERT INTO Kraj_zaw (Nazwa,Limit_start) VALUES ('Kazachstan',2);


/* Trener */
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Alexander','Stoeckl',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),1);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Goran','Janus',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),2);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Werner','Schuster',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),3);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Heinz','Kuttin',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),4);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Tomoharu','Yokokawa',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),5);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Stefan','Horngaher',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),6);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('David','Jiroutek',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),7);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Martin','Kunzle',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),8);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Jani','Klinga',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),9);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Gerard','Colin',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),10);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Alexander','Arefyev',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),11);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Clint','Jones',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),12);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Gregor','Linsig',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),13);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Łukasz','Kruczek',TO_DATE('2016/06/10', 'yyyy/mm/dd'),TO_DATE('2019/06/10', 'yyyy/mm/dd'),14);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Emil','Zografski',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),15);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Wolfgang','Hartmann',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),16);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Tambet','Pikkor',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),17);
INSERT INTO Trener (imie,nazwisko,od,do,kraj_zaw_id) VALUES
('Pavel','Vasilyev',TO_DATE('2011/06/10', 'yyyy/mm/dd'),TO_DATE('2011/06/10', 'yyyy/mm/dd'),18);

/* Klub */
INSERT INTO Klub (Nazwa,Miasto,Kraj) VALUES ('AZS Zakopane','Zakopane','Polska');
INSERT INTO Klub (Nazwa,Miasto,Kraj) VALUES ('TS Wisła Zakopane','Wisła','Polska');
INSERT INTO Klub (Nazwa,Miasto,Kraj) VALUES ('KS Eve-nement zakopane','Zakopane','Polska');

/* Sponsorzy */

INSERT INTO sponsorzy(nazwa) VALUES ('Redbull');
INSERT INTO sponsorzy(nazwa) VALUES ('Elan');
INSERT INTO sponsorzy(nazwa) VALUES ('T-Mobile');

/* Klub-sponsor */
INSERT INTO klub_spon(sponsorzy_id,klub_id) VALUES (1,1);
INSERT INTO klub_spon VALUES (2,1);
INSERT INTO klub_spon VALUES (3,1);
INSERT INTO klub_spon VALUES (2,2);
INSERT INTO klub_spon VALUES (1,3);


/* Zawodnik */
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Peter','Prevc',1,2);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Severin','Freund',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Kenneth','Gangnes',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Michael','Hayboeck',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Johan Andre','Forfang',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Stefan','Kraft',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Daniel Andre','Tande',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Noriaki','Kasai',1,5);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Richard','Freitag',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Anders','Fannemel',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Roman','Koudelka',1,7);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Andreas','Stjernen',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Robert','Kranjec',1,2);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Domen','Prevc',1,2);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Simon','Ammann',1,8);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Daiki','Ito',1,5);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Andreas','Wellinger',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Taku','Takeuchi',1,5);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Andreas','Wank',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Joachim','Hauer',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Jurij','Tepes',1,2);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Kamil','Stoch',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Stephan','Leyhe',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Manuel','Fettner',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Anze','Lanisek',1,2);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Stefan','Hula',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Manuel','Poppinger',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Vincent','Descombes Sevoie',1,10);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Dawid','Kubacki',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Karl','Geiger',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Maciej','Kot',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Jakub','Janda',1,7);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Jan','Matura',1,7);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Andrzej','Stękała',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Lukas','Hlava',1,7);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Piotr','Żyła',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Tom','Hilde',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Andreas','Kofler',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Gregor','Deschwanden',1,8);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Markus','Eisenbichler',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Marinus','Kraus',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Ryoyu','Kobayashi',1,5);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Gregor','Schlierenzauer',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Philipp','Aschenwald',1,4);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Mackenzie','Boyd-clowes',1,13);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Jaka','Hvala',1,2);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Kento','Sakuyama',1,5);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Lauri','Asikainen',1,9);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('David','Siegel',1,3);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Klemens','Murańka',1,6);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Rune','Velta',1,1);
INSERT INTO Zawodnik (Imie,Nazwisko,Klub_id,Kraj_zaw_id) VALUES ('Anze','Semenic',1,2);


/* Konkurs */
INSERT INTO KONKURS (sezon_nazwa,rodzaj,Data,Il_widzow,skocznia_id) VALUES ('2015/2016','indywidualny',TO_DATE('2016/01/24', 'yyyy/mm/dd'),15500,1);
INSERT INTO KONKURS (sezon_nazwa,rodzaj,Data,Il_widzow,skocznia_id) VALUES ('2015/2016','indywidualny',TO_DATE('2016/01/10', 'yyyy/mm/dd'),12500,2);
INSERT INTO KONKURS (sezon_nazwa,rodzaj,Data,Il_widzow,skocznia_id) VALUES ('2014/2015','indywidualny',TO_DATE('2015/02/04', 'yyyy/mm/dd'),6000,3);

/* Pogoda */
INSERT INTO POGODA (Ogolnie,Opady,Rodzaj_op,Ilosc_op,Sila_w,Konkurs_id) VALUES
('Duże zachmurzenie i wietrznie','t','śnieg','20ml/m2','od -0,25m/s do -0,5ms',1);
INSERT INTO POGODA (Ogolnie,Opady,Rodzaj_op,Ilosc_op,Sila_w,Konkurs_id) VALUES
('Słonecznie i bez wiatru','n','brak','brak','od 0,05m/s do 0,10ms',2);
INSERT INTO POGODA (Ogolnie,Opady,Rodzaj_op,Ilosc_op,Sila_w,Konkurs_id) VALUES
('Słonecznie, ale wietrznie','n','brak','brak','od 0,56m/s do 1,45ms',3);



/* Wynik - Zakopane 2015/2016 */
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,133.0,0,0,0,0,1,6);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,133.0,0,0,0,0,1,6);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,130.5,0,0,0,0,1,4);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,138.0,0,0,0,0,1,4);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,140.0,0,0,0,0,1,1);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,125.0,0,0,0,0,1,1);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,130.5,0,0,0,0,1,3);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,131.5,0,0,0,0,1,3);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,128.5,0,0,0,0,1,5);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,133.0,0,0,0,0,1,5);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,131.0,0,0,0,0,1,9);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,130.0,0,0,0,0,1,9);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,131.5,0,0,0,0,1,42);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,126.5,0,0,0,0,1,42);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,131.5,0,0,0,0,1,22);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,129.5,0,0,0,0,1,22);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,131.0,0,0,0,0,1,14);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,130.5,0,0,0,0,1,14);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,126.5,0,0,0,0,1,11);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,124.0,0,0,0,0,1,11);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,130.0,0,0,0,0,1,7);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,127.5,0,0,0,0,1,7);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,133.0,0,0,0,0,1,31);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,126.0,0,0,0,0,1,31);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,129.0,0,0,0,0,1,15);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,126.0,0,0,0,0,1,15);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,128.0,0,0,0,0,1,12);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,122.0,0,0,0,0,1,12);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,126.0,0,0,0,0,1,10);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,122.0,0,0,0,0,1,10);


/* Wynik - Willingen 2015/2016 */
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,148.5,0,0,0,0,2,1);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,145.5,0,0,0,0,2,1);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,139.5,0,0,0,0,2,3);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,141.0,0,0,0,0,2,3);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,145.5,0,0,0,0,2,2);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,133.0,0,0,0,0,2,2);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,147.0,0,0,0,0,2,6);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,127.0,0,0,0,0,2,6);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,143.5,0,0,0,0,2,17);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,129.5,0,0,0,0,2,17);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,139.5,0,0,0,0,2,7);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,133.0,0,0,0,0,2,7);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,141.5,0,0,0,0,2,10);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,130.5,0,0,0,0,2,10);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,132.0,0,0,0,0,2,12);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,136.0,0,0,0,0,2,12);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,134.0,0,0,0,0,2,5);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,128.0,0,0,0,0,2,5);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,139.5,0,0,0,0,2,11);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,124.5,0,0,0,0,2,11);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,138.0,0,0,0,0,2,33);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,125.0,0,0,0,0,2,33);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,135.5,0,0,0,0,2,32);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,125.0,0,0,0,0,2,32);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,134.0,0,0,0,0,2,21);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,133.0,0,0,0,0,2,21);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,129.5,0,0,0,0,2,19);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,128.0,0,0,0,0,2,19);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,135.0,0,0,0,0,2,28);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,129.5,0,0,0,0,2,28);

/* Wynik - Planica 2014/2015 */
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,248.5,0,0,0,0,3,1);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,233.0,0,0,0,0,3,1);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,223.0,0,0,0,0,3,21);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,233.0,0,0,0,0,3,21);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,240.0,0,0,0,0,3,6);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,238.5,0,0,0,0,3,6);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,223.0,0,0,0,0,3,2);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,230.5,0,0,0,0,3,2);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,217.0,0,0,0,0,3,8);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,229.5,0,0,0,0,3,8);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,220.0,0,0,0,0,3,51);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,222.0,0,0,0,0,3,51);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,242.0,0,0,0,0,3,4);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,225.0,0,0,0,0,3,4);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,228.5,0,0,0,0,3,22);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,212.5,0,0,0,0,3,22);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,211.5,0,0,0,0,3,5);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,216.0,0,0,0,0,3,5);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,229.5,0,0,0,0,3,52);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,212.0,0,0,0,0,3,52);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,204.5,0,0,0,0,3,13);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,222.0,0,0,0,0,3,13);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,203.0,0,0,0,0,3,43);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,221.5,0,0,0,0,3,43);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,209.5,0,0,0,0,3,9);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,214.0,0,0,0,0,3,9);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,222.5,0,0,0,0,3,24);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,206.5,0,0,0,0,3,24);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (1,220.5,0,0,0,0,3,3);
INSERT INTO Wynik_ind(Nr_serii,Skok,Wiatr,Pkt_wiatr,Belka,Pkt_belka,Konkurs_id,Zawodnik_id) VALUES (2,207.0,0,0,0,0,3,3);

/* Noty */
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,1);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,1);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,1);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,1);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,1);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,2);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,2);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,2);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,2);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,2);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,3);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,3);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,3);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,3);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,3);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,4);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,4);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,4);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,4);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,4);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,5);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,5);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,5);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,5);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,5);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,6);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,6);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,6);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,6);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,6);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,7);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,7);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,7);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,7);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,7);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,8);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,8);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,8);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,8);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,8);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,9);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,9);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,9);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,9);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,9);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,10);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,10);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,10);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,10);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,10);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,11);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,11);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,11);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,11);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,11);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,12);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,12);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,12);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,12);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,12);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,13);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,13);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,13);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,13);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,13);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,14);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,14);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,14);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,14);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,14);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,15);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,15);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,15);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,15);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,15);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,16);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,16);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,16);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,16);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,16);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,17);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,17);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,17);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,17);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,17);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,18);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,18);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,18);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,18);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,18);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,19);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,19);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,19);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,19);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,19);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,20);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,20);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,20);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,20);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,20);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,21);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,21);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,21);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,21);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,21);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,22);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,22);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,22);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,22);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,22);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,23);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,23);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,23);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,23);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,23);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,24);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,24);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,24);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,24);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,24);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,25);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,25);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,25);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,25);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,25);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,26);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,26);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,26);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,26);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,26);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,27);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,27);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,27);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,27);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,27);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,28);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,28);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,28);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,28);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,28);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,29);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,29);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,29);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,29);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,29);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,30);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,30);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,30);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,30);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,30);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,31);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,31);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,31);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,31);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,31);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,32);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,32);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,32);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,32);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,32);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,33);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,33);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,33);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,33);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,33);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,34);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,34);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,34);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,34);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,34);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,35);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,35);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,35);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,35);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,35);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,36);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,36);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,36);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,36);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,36);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,37);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,37);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,37);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,37);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,37);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,38);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,38);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,38);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,38);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,38);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,39);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,39);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,39);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,39);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,39);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,40);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,40);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,40);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,40);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,40);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,41);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,41);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,41);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,41);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,41);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,42);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,42);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,42);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,42);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,42);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,43);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,43);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,43);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,43);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,43);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,44);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,44);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,44);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,44);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,44);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,45);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,45);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,45);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,45);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,45);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,46);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,46);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,46);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,46);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,46);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,47);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,47);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,47);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,47);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,47);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,48);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,48);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,48);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,48);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,48);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,49);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,49);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,49);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,49);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,49);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,50);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,50);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,50);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,50);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,50);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,51);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,51);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,51);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,51);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,51);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,52);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,52);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,52);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,52);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,52);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,53);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,53);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,53);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,53);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,53);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,54);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,54);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,54);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,54);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,54);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,55);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,55);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,55);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,55);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,55);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,56);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,56);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,56);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,56);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,56);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,57);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,57);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,57);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,57);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,57);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,58);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,58);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,58);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,58);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,58);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,59);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,59);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,59);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,59);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,59);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,60);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,60);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,60);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,60);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,60);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,61);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,61);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,61);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,61);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,61);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,62);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,62);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,62);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,62);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,62);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,63);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,63);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,63);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,63);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,63);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,64);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,64);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,64);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,64);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,64);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,65);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,65);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,65);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,65);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,65);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,66);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,66);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,66);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,66);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,66);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,67);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,67);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,67);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,67);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,67);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,68);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,68);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,68);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,68);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,68);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,69);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,69);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,69);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,69);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,69);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,70);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,70);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,70);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,70);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,70);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,71);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,71);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,71);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,71);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,71);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,72);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,72);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,72);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,72);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,72);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,73);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,73);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,73);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,73);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,73);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,74);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,74);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,74);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,74);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,74);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,75);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,75);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,75);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,75);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,75);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,76);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,76);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,76);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,76);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,76);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,77);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,77);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,77);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,77);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,77);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,78);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,78);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,78);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,78);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,78);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,79);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,79);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,79);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,79);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,79);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,80);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,80);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,80);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,80);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,80);

INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,81);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,81);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,81);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,81);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,81);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,82);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,82);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,82);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,82);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,82);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,83);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,83);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,83);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,83);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,83);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.5,84);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (16.0,84);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,84);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,84);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,84);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,85);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,85);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,85);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,85);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,85);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,86);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,86);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,86);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.0,86);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,86);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.5,87);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,87);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,87);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,87);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,87);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,88);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,88);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,88);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (19.0,88);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,88);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,89);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,89);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,89);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (17.5,89);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,89);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,90);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,90);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,90);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.5,90);
INSERT INTO noty(nota,WYNIK_IND_ID) VALUES (18.0,90);








/* Zakopane */
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (6,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (4,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (1,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (3,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (5,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (9,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (42,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (22,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (14,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (11,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (7,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (31,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (15,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (12,1);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (10,1);

/* Willingen */
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (1,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (3,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (2,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (6,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (17,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (7,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (10,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (12,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (5,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (11,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (33,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (32,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (21,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (19,2);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (28,2);

/* Planica 2014/2015 */
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (1,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (21,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (6,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (2,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (8,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (51,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (4,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (22,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (5,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (52,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (13,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (43,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (9,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (24,3);
INSERT INTO Konk_zaw (Zawodnik_id,Konkurs_id) VALUES (3,3);






/* Przebudowy */
INSERT INTO przebudowa (rodzaj,ukonczono,data_rozp,data_ukon,skocznia_id) VALUES ('modernizacja rozbiegu','t',TO_DATE('1955/04/12', 'yyyy/mm/dd'),TO_DATE('1956/07/11', 'yyyy/mm/dd'),1);
INSERT INTO przebudowa (rodzaj,ukonczono,data_rozp,data_ukon,skocznia_id) VALUES ('wprowadzenie homologacji torów najazdowych','t',TO_DATE('2016/05/17', 'yyyy/mm/dd'),TO_DATE('2016/10/23', 'yyyy/mm/dd'),1);
INSERT INTO przebudowa (rodzaj,ukonczono,data_rozp,data_ukon,skocznia_id) VALUES ('wydłużanie zeskoku','t',TO_DATE('1973/09/05', 'yyyy/mm/dd'),TO_DATE('1975/03/18', 'yyyy/mm/dd'),2);
INSERT INTO przebudowa (rodzaj,ukonczono,data_rozp,data_ukon,skocznia_id) VALUES ('wydłużanie zeskoku','t',TO_DATE('2014/09/09', 'yyyy/mm/dd'),TO_DATE('2015/11/22', 'yyyy/mm/dd'),3);
INSERT INTO przebudowa (rodzaj,ukonczono,data_rozp,data_ukon,skocznia_id) VALUES ('wydłużanie zeskoku','t',TO_DATE('2016/05/19', 'yyyy/mm/dd'),TO_DATE('2016/12/13', 'yyyy/mm/dd'),3);

/* Wykonawcy przebudow */
INSERT INTO wykonawca (nazwa,adres) VALUES ('Budohut Sp. z o.o.','ul Szczerbcow Karpackich 14/20b');
INSERT INTO wykonawca (nazwa,adres) VALUES ('ABEKAM','ul Szczerbcow Karpackich 14/20b');
INSERT INTO wykonawca (nazwa,adres) VALUES ('Redbull','ul Szczerbcow Karpackich 14/20b');
INSERT INTO wykonawca (nazwa,adres) VALUES ('stan-Tech','ul Szczerbcow Karpackich 14/20b');
INSERT INTO wykonawca (nazwa,adres) VALUES ('Polbud','ul Szczerbcow Karpackich 14/20b');

/* Przebudowa-wykonawca */
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (1,1);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (1,2);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (1,5);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (2,5);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (3,5);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (4,2);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (4,3);
INSERT INTO przeb_wykon(przebudowa_id,wykonawca_id) VALUES (5,1);


