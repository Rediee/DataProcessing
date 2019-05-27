--Opdr4.4
select cursist from   inschrijvingen 
where  cursus   = 'JAV' 
and    cursist in (select cursist from   inschrijvingen where  cursus = 'XML');
--Opdr4.8
select mnr 
from   medewerker
where  afd (select anr from   afdelingen where  naam = 'OPLEIDINGEN');
--Opdr4.10
select mnr, naam, voorl
from   medewerkershere  
mnr in (select chef from   medewerkers); 
--Opdr4.11
select * 
from   uitvoeringen
where  begindatum between date '1999-01-01' and date '1999-12-31' and    cursus in (select code from   cursussen where  type = 'ALG');
--Opdr8.4
select   cursus,begindatum,count(i.cursist) as inschrijvingen
from     uitvoeringen   u left outer join  inschrijvingen i  using(cursus, begindatum) 
group by cursus,begindatum 
order by begindatum;
--Opdr8.9
select distinct m.naam, m.voorl 
from   medewerkers m ,cursussen c ,uitvoeringen   u , inschrijvingen i 
where  m.mnr = u.docent and m.chef = i.cursist and c.code = u.cursus and u.cursus = i.cursus and u.begindatum = i.begindatum and c.type = 'ALG'; 
--Opdr 9.3
select m.* 2  
from   medewerkers m
where  not exists  (select u.docent from   uitvoeringen u where  u.docent = m.mnr)










