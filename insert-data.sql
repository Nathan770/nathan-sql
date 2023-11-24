A - Nouveau numero

-- 1 creation table step pour les numeros communs (deja existant dans nos bases)
drop table step_new_fichier_1;
create table step_new_fichier_1
as 
select * from c24;
--  not in (select tel_mobile from vw_principale_tel_mobile)
UPDATE step_new_fichier_1
set urban_unit_size = NULL
where urban_unit_size in ( '2 RUE BORIS VIAN','8 BOULEVARD ROLAND D 13014')

-- insertion de la nouvelle table dans la table step6 SPECIAL pour les table C... !!!!
insert into dim_principale_dedup_step6
select 
gender,
lastname,
firstname,
zipcode,
email,
tel_mobile,
tel_fixe,
null as deliverability,
adress,
city,
null as country,
null as optin,
lasts_open,
null as optin_sms,
statut_habitation,
type_habitat,
csp,
insee,
hexavia,
roudis,
iris,
null as urban_unit_size,
municipality_type,
robinson,
null as score_bloctel,
null as profession,
null as emaillastopened,
null as emaillastclicked,
null as modele_vehicule,
null as marque,
null as energie,
null as date_mise_circulation,
null as vente_vehicule,
null as enfant,
null as statut_marital,
to_date(birthday,'DD-MM-YYYY') as birthday_norm
from step_new_fichier_1;

-- insertion de la nouvelle table dans la table step6 SPECIAL pour les table E... !!!
insert into dim_principale_dedup_step6
select 
gender,
lastname,
firstname,
zipcode,
email,
tel_mobile,
tel_fixe,
null as deliverability,
adress,
city,
null as country,
null as optin,
null as lasts_open,
null as optin_sms,
statut_habitation,
null as type_habitat,
csp,
null as insee,
null as hexavia,
null as roudis,
null as iris,
null as urban_unit_size,
null as municipality_type,
null as robinson,
null as score_bloctel,
null as profession,
null as emaillastopened,
null as emaillastclicked,
null as modele_vehicule,
null as marque,
null as energie,
null as date_mise_circulation,
null as vente_vehicule,
null as enfant,
null as statut_marital,
to_date(birthday,'DD-MM-YYYY') as birthday_norm
from step_new_fichier_1;



-- 2 creation table de numero commun  a partir de la principale 
drop table step_new_fichier_2;
create table step_new_fichier_2 
as 
select * from dim_principale_dedup_step6 where tel_mobile in (select tel_mobile from step_new_fichier_1);
-- check 



-- 3 Concatenation de step 1 (nouveau fichier) et step 2 (enregistrements de la table principale step6)
drop table step_new_fichier_3;
create table step_new_fichier_3
as
select * from step_new_fichier_2
UNION 
select 
gender,
lastname,
firstname,
zipcode,
email,
tel_mobile,
tel_fixe,
null as deliverability,
adress,
city,
null as country,
null as optin,
null as lasts_open,
null as optin_sms,
statut_habitation,
null as type_habitat,
csp,
null as insee,
null as hexavia,
null as roudis,
null as iris,
null as urban_unit_size,
null as municipality_type,
null as robinson,
null as score_bloctel,
null as profession,
null as emaillastopened,
null as emaillastclicked,
null as modele_vehicule,
null as marque,
null as energie,
null as date_mise_circulation,
null as vente_vehicule,
null as enfant,
null as statut_marital,
to_date(birthday,'DD-MM-YYYY') as birthday_norm
from step_new_fichier_1;


--check
--select count(distinct tel_mobile) from step_new_fichier_3
-- 5407578
--select count(distinct tel_mobile) from dim_principale_dedup_step6
-- 32606251
--select count(*) from step_new_fichier_3

--select count(distinct tel_mobile) from c16
--select count(distinct tel_mobile) from step_new_fichier_3


-- 4 Moulinette 
drop table step_new_fichier_4;
CREATE TABLE step_new_fichier_4
as


with gender as (
  select tel_mobile, gender, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank 
  FROM step_new_fichier_3 -- Insert your table name here
  where gender is not null
  group by tel_mobile, gender
  order by count(*) desc, rank asc
),

lastname as (
  select tel_mobile, lastname, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank 
  FROM step_new_fichier_3 -- Insert your table name here
  where lastname is not null
  group by tel_mobile, lastname
  order by count(*) desc, rank asc
),

firstname as (
  select tel_mobile, firstname, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where firstname is not null
  group by tel_mobile, firstname
  order by count(*) desc, rank asc
),

zipcode as (
  select tel_mobile, zipcode, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where zipcode is not null
  group by tel_mobile, zipcode
  order by count(*) desc, rank asc
),

birthday_norm as (
  select tel_mobile, birthday_norm, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where birthday_norm is not null
  group by tel_mobile, birthday_norm
  order by count(*) desc, rank asc
),

email as (
  select tel_mobile, email, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank 
  FROM step_new_fichier_3 -- Insert your table name here
  where email is not null
  group by tel_mobile, email
  order by count(*) desc, rank asc
),

tel_fixe as (
  select tel_mobile, tel_fixe, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where tel_fixe is not null
  group by tel_mobile, tel_fixe
  order by count(*) desc, rank asc
),

	
delivrability as (
  select tel_mobile, delivrability, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where delivrability is not null
  group by tel_mobile, delivrability
  order by count(*) desc, rank asc
),

adress as (
  select tel_mobile, adress, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where adress is not null
  group by tel_mobile, adress
  order by count(*) desc, rank asc
),

city as (
  select tel_mobile, city, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where city is not null
  group by tel_mobile, city
  order by count(*) desc, rank asc
),


country as (
  select tel_mobile, country, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where country is not null
  group by tel_mobile, country
  order by count(*) desc, rank asc
),


optin as (
  select tel_mobile, optin, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where optin is not null
  group by tel_mobile, optin
  order by count(*) desc, rank asc
),

lasts_open as (
  select tel_mobile, lasts_open, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where lasts_open is not null
  group by tel_mobile, lasts_open
  order by count(*) desc, rank asc
),

optin_sms as (
  select tel_mobile, optin_sms, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where optin_sms is not null
  group by tel_mobile, optin_sms
  order by count(*) desc, rank asc
),

statut_habitation as (
  select tel_mobile, statut_habitation, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where statut_habitation is not null
  group by tel_mobile, statut_habitation
  order by count(*) desc, rank asc
),

type_habitat as (
  select tel_mobile, type_habitat, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where type_habitat is not null
  group by tel_mobile, type_habitat
  order by count(*) desc, rank asc
),

csp as (
  select tel_mobile, csp, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where csp is not null
  group by tel_mobile, csp
  order by count(*) desc, rank asc
),

insee as (
  select tel_mobile, insee, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where insee is not null
  group by tel_mobile, insee
  order by count(*) desc, rank asc
),

hexavia as (
  select tel_mobile, hexavia, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where hexavia is not null
  group by tel_mobile, hexavia
  order by count(*) desc, rank asc
),

roudis as (
  select tel_mobile, roudis, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where roudis is not null
  group by tel_mobile, roudis
  order by count(*) desc, rank asc
),

iris as (
  select tel_mobile, iris, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where iris is not null
  group by tel_mobile, iris
  order by count(*) desc, rank asc
),

urban_unit_size as (
  select tel_mobile, urban_unit_size, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where urban_unit_size is not null
  group by tel_mobile, urban_unit_size
  order by count(*) desc, rank asc
),

municipality_type as (
  select tel_mobile, municipality_type, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where municipality_type is not null
  group by tel_mobile, municipality_type
  order by count(*) desc, rank asc
),

robinson as (
  select tel_mobile, robinson, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where robinson is not null
  group by tel_mobile, robinson
  order by count(*) desc, rank asc
),

score_bloctel as (
  select tel_mobile, score_bloctel, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where score_bloctel is not null    
  group by tel_mobile, score_bloctel
  order by count(*) desc, rank asc
),

profession as (
  select tel_mobile, profession, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where profession is not null
  group by tel_mobile, profession
  order by count(*) desc, rank asc
),

emaillastopened as (
  select tel_mobile, emaillastopened, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where emaillastopened is not null
  group by tel_mobile, emaillastopened
  order by count(*) desc, rank asc
),

emaillastclicked as (
  select tel_mobile, emaillastclicked, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where emaillastclicked is not null
  group by tel_mobile, emaillastclicked
  order by count(*) desc, rank asc
),

modele_vehicule as (
  select tel_mobile, modele_vehicule, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where modele_vehicule is not null
  group by tel_mobile, modele_vehicule
  order by count(*) desc, rank asc
),

marque as (
  select tel_mobile, marque, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where marque is not null
  group by tel_mobile, marque
  order by count(*) desc, rank asc
),

energie as (
  select tel_mobile, energie, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where energie is not null
  group by tel_mobile, energie
  order by count(*) desc, rank asc
),

date_mise_circulation as (
  select tel_mobile, date_mise_circulation, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where date_mise_circulation is not null
  group by tel_mobile, date_mise_circulation
  order by count(*) desc, rank asc
),

vente_vehicule as (
  select tel_mobile, vente_vehicule, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where vente_vehicule is not null
  group by tel_mobile, vente_vehicule
  order by count(*) desc, rank asc
),

enfant as (
  select tel_mobile, enfant, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3 -- Insert your table name here
  where enfant is not null
  group by tel_mobile, enfant
  order by count(*) desc, rank asc
),

statut_marital as (
  select tel_mobile, statut_marital, count(*), ROW_NUMBER() OVER ( PARTITION BY tel_mobile ORDER BY count(*) desc) AS rank
  FROM step_new_fichier_3-- Insert your table name here
  where statut_marital is not null
  group by tel_mobile, statut_marital
  order by count(*) desc, rank asc
),

-- Selecting output columns
-- Getting distinct tel_mobile values
main as (select distinct tel_mobile from step_new_fichier_3)
select main.tel_mobile, gender.gender, lastname.lastname, firstname.firstname, zipcode.zipcode, birthday_norm.birthday_norm, email.email, tel_fixe.tel_fixe, delivrability.delivrability, adress.adress, city.city, country.country, optin.optin, lasts_open.lasts_open, optin_sms.optin_sms, statut_habitation.statut_habitation, type_habitat.type_habitat, csp.csp, insee.insee, hexavia.hexavia, roudis.roudis, iris.iris, urban_unit_size.urban_unit_size, municipality_type.municipality_type, robinson.robinson, score_bloctel.score_bloctel, profession.profession, emaillastopened.emaillastopened, emaillastclicked.emaillastclicked, modele_vehicule.modele_vehicule, marque.marque, energie.energie, date_mise_circulation.date_mise_circulation, vente_vehicule.vente_vehicule, enfant.enfant, statut_marital.statut_marital


-- Joining main and other columns data
from main
left join gender on main.tel_mobile = gender.tel_mobile and gender.rank = 1
left join lastname on main.tel_mobile = lastname.tel_mobile and lastname.rank = 1
left join firstname on main.tel_mobile = firstname.tel_mobile and firstname.rank = 1
left join zipcode on main.tel_mobile = zipcode.tel_mobile and zipcode.rank = 1
left join birthday_norm on main.tel_mobile = birthday_norm.tel_mobile and birthday_norm.rank = 1
left join email on main.tel_mobile = email.tel_mobile and email.rank = 1
left join tel_fixe on main.tel_mobile = tel_fixe.tel_mobile and tel_fixe.rank = 1
left join delivrability on main.tel_mobile = delivrability.tel_mobile and delivrability.rank = 1
left join adress on main.tel_mobile = adress.tel_mobile and adress.rank = 1
left join city on main.tel_mobile = city.tel_mobile and city.rank = 1
left join country on main.tel_mobile = country.tel_mobile and country.rank = 1
left join optin on main.tel_mobile = optin.tel_mobile and optin.rank = 1
left join lasts_open on main.tel_mobile = lasts_open.tel_mobile and lasts_open.rank = 1
left join optin_sms on main.tel_mobile = optin_sms.tel_mobile and optin_sms.rank = 1
left join statut_habitation on main.tel_mobile = statut_habitation.tel_mobile and statut_habitation.rank = 1
left join type_habitat on main.tel_mobile = type_habitat.tel_mobile and type_habitat.rank = 1
left join csp on main.tel_mobile = csp.tel_mobile and csp.rank = 1
left join insee on main.tel_mobile = insee.tel_mobile and insee.rank = 1
left join hexavia on main.tel_mobile = hexavia.tel_mobile and hexavia.rank = 1
left join roudis on main.tel_mobile = roudis.tel_mobile and roudis.rank = 1
left join iris on main.tel_mobile = iris.tel_mobile and iris.rank = 1
left join urban_unit_size on main.tel_mobile = urban_unit_size.tel_mobile and urban_unit_size.rank = 1
left join municipality_type on main.tel_mobile = municipality_type.tel_mobile and municipality_type.rank = 1
left join robinson on main.tel_mobile = robinson.tel_mobile and robinson.rank = 1
left join score_bloctel on main.tel_mobile = score_bloctel.tel_mobile and score_bloctel.rank = 1
left join profession on main.tel_mobile = profession.tel_mobile and profession.rank = 1
left join emaillastopened on main.tel_mobile = emaillastopened.tel_mobile and emaillastopened.rank = 1
left join emaillastclicked on main.tel_mobile = emaillastclicked.tel_mobile and emaillastclicked.rank = 1
left join modele_vehicule on main.tel_mobile = modele_vehicule.tel_mobile and modele_vehicule.rank = 1
left join marque on main.tel_mobile = marque.tel_mobile and marque.rank = 1
left join energie on main.tel_mobile = energie.tel_mobile and energie.rank = 1
left join date_mise_circulation on main.tel_mobile = date_mise_circulation.tel_mobile and date_mise_circulation.rank = 1
left join vente_vehicule on main.tel_mobile = vente_vehicule.tel_mobile and vente_vehicule.rank = 1
left join enfant on main.tel_mobile = enfant.tel_mobile and enfant.rank = 1
left join statut_marital on main.tel_mobile = statut_marital.tel_mobile and statut_marital.rank = 1;




select count (distinct tel_mobile) from step_new_fichier_4

select  distinct type_habitat  from step_new_fichier_4
update  step_new_fichier_4
set type_habitat = NULL
where type_habitat in ('','Z','LIT_RJ')

select  distinct csp  from step_new_fichier_4
update  step_new_fichier_4
set csp = NULL
where csp in ('','Z','z')

select  distinct urban_unit_size  from step_new_fichier_4
update  step_new_fichier_4
set urban_unit_size = NULL
where urban_unit_size in ('','Z')


select  distinct optin  from step_new_fichier_4
update  step_new_fichier_4
set robinson = NULL
where robinson in ('','Z')

select  distinct optin  from step_new_fichier_4
update  step_new_fichier_4
set urban_unit_size = NULL
where urban_unit_size in ('LIT_RJ','Z','')

update  step_new_fichier_4
set optin_sms = 1
where optin_sms is not null

update  step_new_fichier_4
set robinson = Null
where robinson in ('',' ')

update  step_new_fichier_4
set enfant = Null
where enfant in ('',' ')

update  step_new_fichier_4
set optin = Null

-- 5 gerer les formats de chaque champs

drop table step_new_fichier_5;
create table step_new_fichier_5
as 
select cast(gender as char(1)),
cast(lastname as varchar(256)),
cast(firstname as varchar(256)),
cast(zipcode as varchar(5)),
cast(email as varchar(256)),
cast(tel_mobile as varchar(11)),
cast(tel_fixe as varchar(11)),
cast(delivrability as smallint),
cast(adress as varchar(256)),
cast(city as varchar(52)),
cast(country as varchar(2)),
cast(optin as smallint),
cast((to_date(lasts_open,'DD-MM-YYYY')) as date) lasts_open,
cast(optin_sms as smallint),
cast(statut_habitation as char(1)),
cast(type_habitat as smallint),
cast(csp as smallint),
cast(insee as varchar(5)),
cast(hexavia as varchar(20)),
cast(roudis as varchar(20)),
cast(urban_unit_size as smallint),
cast(municipality_type as varchar(2)),
cast(robinson as smallint),
cast(score_bloctel as smallint),
cast(profession as varchar(20)),
cast((to_date(emaillastopened,'DD-MM-YYYY')) as date) emaillastopened,
cast((to_date(emaillastclicked,'DD-MM-YYYY')) as date) emaillastclicked,
cast(modele_vehicule as varchar(30)),
cast(marque as varchar(20)),
cast(energie as varchar(2)),
cast((to_date(date_mise_circulation,'DD-MM-YYYY')) as date) date_mise_circulation,
cast(vente_vehicule as smallint),
cast(enfant as smallint),
cast(statut_marital as smallint),
cast(birthday_norm as date)
from step_new_fichier_4;

--/!\-- update dim_pincipale_generale
delete from dim_principale_generale where tel_mobile in (select distinct tel_mobile from step_new_fichier_5);


insert into dim_principale_generale
select * from step_new_fichier_5;

--update shooted_table
insert into shooted_table
select distinct a.tel_mobile from dim_principale_generale a
left join vw_shooted_table b
on a.tel_mobile = b.tel_mobile
where b.tel_mobile is  null


--update dim_deduit
insert into dim_deduit
select distinct a.tel_mobile from dim_principale_generale a
left join dim_deduit b
on a.tel_mobile = b.tel_mobile
where b.tel_mobile is  null

--update dim_interet
insert into dim_interet
select distinct a.tel_mobile from dim_principale_generale a
left join dim_interet b
on a.tel_mobile = b.tel_mobile
where b.tel_mobile is  null