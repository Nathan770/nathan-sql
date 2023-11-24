CREATE USER extract_user
WITH PASSWORD 'n7ttI357r*3qhjN%5ojMt6wa';

REVOKE ALL PRIVILEGES  FROM extract_user;

GRANT SELECT ON TABLE vw_principale_tel_mobile TO extract_user;
GRANT SELECT ON TABLE vw_shooted_table TO extract_user;
GRANT SELECT ON TABLE dim_operateurs TO extract_user;
GRANT SELECT ON TABLE shooted_table TO extract_user;
GRANT SELECT ,UPDATE ON TABLE shooted_table TO extract_user;
GRANT SELECT ON TABLE densite TO extract_user;


GRANT SELECT ON TABLE cpf_publiweb_1k_1242 TO extract_user;

GRANT SELECT ,UPDATE ON TABLE cpf_publiweb_nathan TO extract_user;
GRANT SELECT ,UPDATE ON TABLE nathan_shooted_table TO extract_user;
GRANT SELECT ,UPDATE ON TABLE nathan_test TO extract_user;

select * from dim_principale_generale where lower(firstname) = 'polina' and lower(lastname) = 'ivanchenko'

GRANT SELECT ON TABLE base_nelly_reduite TO dpe_restricted;

select count(vw_principale_tel_mobile.tel_mobile) from vw_principale_tel_mobile
INNER JOIN shooted_table ON vw_principale_tel_mobile.tel_mobile = shooted_table.tel_mobile 
where birthday_norm is null and shooted_cpf is null and lastname is not null
order by shooted_cpf


select shooted_cpf, count(shooted_cpf) from vw_principale_tel_mobile_avec_lastname
INNER JOIN shooted_table ON vw_principale_tel_mobile_avec_lastname.tel_mobile = shooted_table.tel_mobile 
where lastname is null 
group by shooted_cpf
order by shooted_cpf desc



select * from cpf_publiweb_10k_0610_NSCPF

 null last cpf never cpf