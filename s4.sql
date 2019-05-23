--Opdr1.6
select mnr, functie,gbdatum
from medewerkers
where gbdatum < to_date('01-JAN-1960','DD-MON-YYYY')  
and functie in ('TRAINER','VERKOPER');

--Opdr1.9
select mnr, naam, voorl
from medewerkers
where naam like '% %';

--Opdr2.5
select cursus, begindatum, count(*)  
from inschrijvingen 
where extract(year from begindatum) = 1999
group by cursus, begindatum 
having count(*) >= 3;

--Opdr2.7
select   cursist,cursus
from     inschrijvingen
group by cursist,cursus
having count(*) > 1 ;

--Opdr3

select cursus, count(*)
from(select distinct cursus,count(*) over(partition by cursus) as cursussen
from uitvoeringen);

--Opdr4.1
SELECT	 TRUNC(TRUNC(Months_Between(max(gbdatum ), min(gbdatum))) / 12) num_years
from medewerkers;

--Opdr4.2
SELECT TRUNC(Months_Between(Sysdate, median(gbdatum))/12) leeftijd
from medewerkers;
 
--Opdr5
select count(*),avg(nvl(m.comm, 0)) as gemiddeld ,avg(m.comm) AS gemiddeld_verkoper
from medewerkers M;