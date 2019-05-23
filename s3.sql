--Opdr1.1
select c.code, u.begindatum, c.lengte, m.naam
from medewerkers m, cursussen c, uitvoeringen u
where u.docent = m.mnr
and u.cursus = c.code;


select c.code, u.begindatum, c.lengte, m.naam
from medewerkers m
join uitvoeringen u
on u.docent = m.mnr
join cursussen c
on u.cursus = c.code;
--Opdr1.2
select d.naam as docent , m.naam as deelnemer
from medewerkers d
join uitvoeringen u
on (d.mnr = u.docent )
join inschrijvingen i using (cursus,begindatum)
join medewerkers m on (i.cursist = m.mnr)
where cursus = 'S02';
--Opdr2
select a.naam, m.naam
from afdelingen a
join medewerkers m
on m.mnr = a.hoofd;
--Opdr3
select a.naam as afdeling,  m.naam as medewerker, a.locatie
from medewerkers m
join afdelingen a
on  m.afd = a.anr
order by a.anr;


select m.naam, a.naam, a.locatie
from afdelingen a
join medewerkers m
on a.anr = m.afd;
--Opdr4
select m.voorl as voorletter, m.naam as achternaam, i.cursus, i.begindatum
from medewerkers m
join inschrijvingen i
on m.mnr = i.cursist
where i.cursus = 'S02' and i.begindatum = '12-04-99';
--Opdr5
select m.naam, s.toelage
from medewerkers m
join schalen s
on m.maandsal > s.ondergrens and m.maandsal < s.bovengrens;