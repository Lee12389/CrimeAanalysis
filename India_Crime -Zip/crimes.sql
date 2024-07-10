create table 42_District_wise_crimes_committed_against_women_2001_2012 (
STATEOrUT char(50),
DISTRICT char(50),
YEARS numeric(4),
Rape numeric(20),
KidnappinAndAbduction numeric(20),
DowryDeaths numeric(20),
AssaultOnwomenWithintentTooutrageHerModesty numeric(20),
InsultTomodestyOfWomen numeric(20),
CrueltyByHusbandOrhisRelatives numeric(20),
ImportationOfGirls numeric(20)
);

create table 02_01_District_wise_crimes_committed_against_SC_2001_2012 (
STATEOrUT char(50),
DISTRICT char(50),
YEARS numeric(4),
Murder numeric(20),
Rape numeric(20),
KidnappinAndAbduction numeric(20),
Dacoity numeric(20),
Robbery numeric(20),
Arson numeric(20),
Hurt numeric(20),
PreventionOfAtrocitiesPOAact numeric(20),
ProtectionOfCivilRightaPCRact numeric(20),
OtherCrimesAgainstSCs numeric(20)
);

alter table 02_01_District_wise_crimes_committed_against_SC_2001_2012 add column Murder numeric(20);

show databases;
use crimes;
show tables;
select * from 42_district_wise_crimes_committed_against_women_2001_2012;


(SELECT STATEOrUT AS STATE,DISTRICT,YEARS,Rape, KidnappinAndAbduction
FROM 42_district_wise_crimes_committed_against_women_2001_2012
order by Rape desc limit 1) 
union
(SELECT STATEOrUT AS STATE,DISTRICT,YEARS,Rape, KidnappinAndAbduction
FROM 42_district_wise_crimes_committed_against_women_2001_2012
order by KidnappinAndAbduction desc limit 1);

(SELECT STATEOrUT AS STATE,DISTRICT,YEARS,Rape, KidnappinAndAbduction
FROM 42_district_wise_crimes_committed_against_women_2001_2012
order by Rape asc limit 1) 
union
(SELECT STATEOrUT AS STATE,DISTRICT,YEARS,Rape, KidnappinAndAbduction
FROM 42_district_wise_crimes_committed_against_women_2001_2012
order by KidnappinAndAbduction asc limit 1);
