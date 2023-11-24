select * from e21;

update e21 
set tel_mobile = REPLACE(tel_mobile, ' ', '');

update e21
set tel_mobile = concat(33 , RIGHT(tel_mobile ,9)) ;

ALTER TABLE e21

ADD tel_fixe VARCHAR(255);

update e21
set tel_fixe = tel_mobile
where REGEXP_COUNT(tel_mobile, '[0-9]') <> 11 and LEFT(tel_mobile , 3 ) not in ('336' , '337');

update e21
set tel_fixe = null
where REGEXP_COUNT(tel_mobile, '[0-9]') <> 11;

update e21
set tel_mobile = null
where REGEXP_COUNT(tel_mobile, '[0-9]') <> 11;

update e21
set tel_mobile = null
where LEFT(tel_mobile , 3 ) not in ('336' , '337') ;

update e21 
set firstname = REGEXP_REPLACE(firstname, '[nom]', ''),
lastname = REGEXP_REPLACE(lastname, '[nom]', '');

update e21 
set firstname = REPLACE(firstname, '{nom}', ''),
lastname = REPLACE(lastname, '{nom}', '');;

update e21 
set firstname = REGEXP_REPLACE(firstname, '|nom|', ''),
lastname = REGEXP_REPLACE(lastname, '|nom|', '');

update e21 
set firstname = REGEXP_REPLACE(firstname, 'prenom', ''),
lastname = REGEXP_REPLACE(lastname, 'prenom', '');

update e21 
set firstname = REGEXP_REPLACE(firstname, 'lastname', ''),
lastname = REGEXP_REPLACE(lastname, 'lastname', '');

update e21
set 
firstname = REGEXP_REPLACE(firstname, 'firstname', ''),
lastname = REGEXP_REPLACE(lastname, 'firstname', '');

update e21
set firstname = REGEXP_REPLACE(firstname, '[^A-Za-z''À-ÖØ-öø-ÿ -]+', ''),
    lastname = REGEXP_REPLACE(lastname, '[^A-Za-z''À-ÖØ-öø-ÿ -]+', '');

    update e21
set firstname = REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE (firstname, '0', ''),
'1', ''),
'2', ''),
'3', ''),
'4', ''),
'5', ''),
'6', ''),
'7', ''),
'8', ''),
'9', '')
where firstname LIKE '%0%' or firstname LIKE '%1%' or firstname LIKE '%2%' or firstname LIKE '%3%' or firstname LIKE '%4%' or firstname LIKE '%5%' or firstname LIKE '%6%' or firstname LIKE '%7%' or firstname LIKE '%8%' or firstname LIKE '%9%' ;

update e21
set lastname = REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE
(REPLACE (lastname, '0', ''),
'1', ''),
'2', ''),
'3', ''),
'4', ''),
'5', ''),
'6', ''),
'7', ''),
'8', ''),
'9', '')
where lastname LIKE '%0%' or lastname LIKE '%1%' or lastname LIKE '%2%' or lastname LIKE '%3%' or lastname LIKE '%4%' or lastname LIKE '%5%' or lastname LIKE '%6%' or lastname LIKE '%7%' or lastname LIKE '%8%' or lastname LIKE '%9%' ;

UPDATE e21
SET firstname = INITCAP(firstname);

UPDATE e21
SET lastname = INITCAP(lastname);

update e21
set firstname = null
where NULLIF(firstname, '') IS  NULL;

update e21
set lastname = null
where NULLIF(lastname, '') IS  NULL;

update e21
set zipcode = null
where REGEXP_COUNT(zipcode, '[0-9]') <> 5;

update e21
set gender = null
where gender not in ('m','f');

update e21
set email = null
where email not like '%@%.%';

update e21
set birthday = null
where birthday not like '__-__-____' ;

select count(distinct tel_mobile)  from e21
where tel_mobile not in ( select tel_mobile from dim_principale_generale where tel_mobile is not null)
and tel_mobile not in ( select tel_mobile from c24 where tel_mobile is not null);

SELECT * FROM e21;

ALTER TABLE e21 ADD statut_habitation VARCHAR;

UPDATE e21
SET statut_habitation = 'P'
WHERE habitation = 'propriétaire';

UPDATE e21
SET statut_habitation = 'L'
WHERE habitation = 'locataire';

-- e20 129k