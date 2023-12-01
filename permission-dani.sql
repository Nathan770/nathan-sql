CREATE
OR REPLACE VIEW "public"."client_shooted" AS
SELECT
   sha2(vw_shooted_table.tel_mobile:: text, 256) AS tel_mobile,
   vw_shooted_table.shooted_pac,
   vw_shooted_table.shooted_cpf,
   vw_shooted_table.shooted_poele_a_granules,
   vw_shooted_table.shooted,
   vw_shooted_table.shootes_ethanol,
   vw_shooted_table.shooted_mutuelle,
   vw_shooted_table.shooted_pub,
   vw_shooted_table.shooted_audio,
   vw_shooted_table.shooted_ps,
   vw_shooted_table.shooted_retraite,
   vw_shooted_table.shooted_maison,
   vw_shooted_table.shooted_securite,
   vw_shooted_table.shooted_ite,
   vw_shooted_table.shooted_fenetre,
   vw_shooted_table.shooted_optic,
   vw_shooted_table.shooted_velo,
   vw_shooted_table.shooted_dentaire,
   vw_shooted_table.shooted_travaux,
   vw_shooted_table.shooted_aero,
   vw_shooted_table.shooted_puff,
   vw_shooted_table.shooted_reno,
   vw_shooted_table.shooted_fruit,
   vw_shooted_table.shooted_multi,
   vw_shooted_table.shooted_cbd,
   vw_shooted_table.shooted_animal,
   vw_shooted_table.shooted_borne,
   vw_shooted_table.shooted_immo,
   vw_shooted_table.shooted_jo,
   vw_shooted_table.shooted_module,
   vw_shooted_table.shooted_destockage,
   vw_shooted_table.shooted_audit_energetique,
   vw_shooted_table.shooted_esthetique,
   vw_shooted_table.shooted_demarches,
   vw_shooted_table.shooted_combles,
   vw_shooted_table.shooted_location_appart,
   vw_shooted_table.shooted_voyance,
   vw_shooted_table.shooted_energie,
   vw_shooted_table.shooted_sante,
   vw_shooted_table.shooted_tout
FROM
   public.vw_shooted_table with no schema binding

-- update table dani
CREATE TABLE client_comptage AS select * FROM ( SELECT sha2(p.tel_mobile,256) as tel_mobile, p.gender ,
p.csp,
p.type_habitat,
p.statut_habitation,
p.birthday_norm as birthday,
p.zipcode,
p.boost,
i.achat_et_investissement_immobilier,
i.animaux,
i.assurance_et_prevoyance,
i.automobile,
i.banque,
i.beaute_esthetique_bien_etre,
i.charme_et_erotisme,
i.cuisine_et_gastronomie,
i.divers,
i.equipement_et_decoration_de_l_habitat,
i.films_series_et_cinema,
i.habitation,
i.loisirs,
i.mode_et_accessoires,
i.nutrition_et_alimentation,
i.obseques,
i.paris_et_jeux_d_argent,
i.sante,
i.shopping_achats,
i.sorties,
i.sport,
i.vacances_et_voyages,
i.voyance_et_esoterisme
FROM vw_principale_tel_mobile p 
INNER JOIN vw_interet i  ON p.tel_mobile = i.tel_mobile);

GRANT SELECT ON TABLE client_comptage TO uezradzdcwaretjfwkc;
