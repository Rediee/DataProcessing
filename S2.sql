--Vraag 1.1
select code, omschrijving from cursussen where  lengte = 4;
--Vraag 1.2
select * from   medewerkers order  by functie, gbdatum desc;
--Vraag 1.3
select cursus from   uitvoeringen  where  locatie in ('UTRECHT','MAASTRICHT');
--Vraag 1.5
select naam, voorl from   medewerkers  where  not (naam = 'JANSEN' and voorl = 'R');

--Vraag 2
INSERT INTO UITVOERINGEN (cursus, begindatum, docent, locatie)
VALUES ('S02', '13-05-49', '7902', 'Leerdam');

--Vraag 3 
INSERT INTO MEDEWERKERS2 (mnr, naam, voorl, functie, chef, gbdatum , maandsal, comm, afd , geslacht)
VALUES ('7903', 'Jansen', 'A', 'Stagiair', '', '11-12-13', '0', '', '', '');

INSERT INTO MEDEWERKERS2 (mnr, naam, voorl, functie, chef, gbdatum , maandsal, comm, afd , geslacht)
VALUES ('7904', 'De Wit', 'B', 'Stagiair', '', '10-11-12', '0', '', '', '');

--Vraag 4

UPDATE SCHALEN
SET snr = '6' 
WHERE snr = '5';

UPDATE SCHALEN
SET  ondergrens = '4001'
WHERE snr = '6';

INSERT INTO SCHALEN(bovengrens, ondergrens, snr, toelage)
VALUES ('4000', '3001', '5', '350');

--Vraag 5
INSERT INTO CURSUSSEN (code, omschrijving, type, lengte)
VALUES ('DP', 'Dataprocessing', 'ALG' ,'4');

INSERT INTO UITVOERINGEN (cursus, begindatum, docent, locatie)
VALUES ('DP', '13-05-19', '7902', 'Utrecht');

INSERT INTO INSCHRIJVINGEN (begindatum, cursist, cursus, evaluatie)
VALUES ('13-05-19', '7499', 'DP', '');

--Vraag 6
UPDATE medewerkers
SET maandsal = maandsal + (maandsal * 5/100)
where functie = verkoper;

--Vraag 7   
DELETE FROM MEDEWERKERS 
WHERE maandsal = '1250';

--Vraag 8
INSERT INTO Afdelingen(anr, hoofd, locatie, naam)
VALUES ('60', '7782', 'LEERDAM', 'FINANCIËN');

INSERT INTO MEDEWERKERS(mnr, naam, voorl, functie, chef, gbdatum, maandsal, comm, afd)
VALUES ('9112', 'Dahmani', 'R', 'Hoofd', '7783', '20-04-00', '7000', '', '60');

UPDATE AFDELINGEN
SET hoofd = '7783'
WHERE anr = '60';

UPDATE MEDEWERKERS
SET chef =  '7783', afd = '60'
WHERE naam = 'Dahmani';

