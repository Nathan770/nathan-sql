CREATE TABLE public.client2 (
          tel_mobile, email, gender, firstname, lastname, birthday)
CREATE TABLE public.dim_operateurs (
          tranche_debut varchar,
  	 	  code_operateur varchar,
          operateur varchar,
          territoire varchar)
          
CREATE TABLE public.n01 (
          
  		  email varchar,
  		  tel_mobile varchar,
  		  gender varchar,
  		  lastname varchar,
          firstname varchar,          
          adress varchar,
          zipcode varchar,
          city varchar,         
          iris varchar)          
          
          CREATE TABLE public.o01 (
          INDEX varchar,
  		  gender varchar,
  		  firstname varchar,
  		  lastname varchar,
  		  email varchar,
          tel_mobile varchar,          
          adress varchar,
          zipcode varchar,
          city varchar         
          ) 
          
          CREATE TABLE public.q01 (
          
  		  email varchar,
  		  gender varchar,
  		  lastname varchar,
          firstname varchar,
          birthday varchar,
          ip varchar,
          tel_fixe varchar,
          tel_mobile varchar,
          adress varchar,
          zipcode varchar,
          city varchar,
          status_habitation varchar,
          enfant varchar,
          csp varchar,
          optin varchar,
          optin_sms varchar )
          
          CREATE TABLE public.h01 (
          
  		  gender varchar,
  		  
          firstname varchar,
          lastname varchar,
          email varchar,
          birthday varchar,
          
          tel_mobile varchar,
          adress varchar,
          zipcode varchar,
          city varchar,
          modele varchar,
          
          date_creation varchar )
          
          CREATE TABLE public.p01 (
          
  		  
          email varchar,
          
          
          tel_mobile varchar,
          adress varchar,
          zipcode varchar,
          city varchar,
          
          
          iris varchar )
          
          CREATE TABLE public.p02 (
          
  		  email varchar,
  		  tel_mobile varchar,
  		  gender varchar,
  		  lastname varchar,
          firstname varchar,          
          adress varchar,
          zipcode varchar,
          city varchar,         
          status_habitation varchar)   
          
          CREATE TABLE public.e02 (
          
  		  email varchar,
            optin varchar,
  		  tel_mobile varchar,
  		  optin_sms varchar,
            gender varchar,
            lastname varchar,
            firstname varchar,
          adress varchar,
          zipcode varchar,
          city varchar,         
          tel_fixe varchar,
            birthday varchar, 
          habitation varchar,
            salaire varchar,
            csp varchar)
          
          CREATE TABLE public.temp_cpf (
          
  		  gender varchar,
  		  lastname varchar,
          firstname varchar,
          
            tel_mobile varchar,
          Shoote_cpf varchar)
          
          CREATE TABLE public.temp_pac (
          
  		  gender varchar,
  		  lastname varchar,
          firstname varchar,
          tel_mobile varchar,
          zipcode varchar,
          email varchar)
          
          CREATE TABLE public.stats_base (
          

          tel_mobile varchar,
          
          status varchar)
          
          CREATE TABLE public.r08 (
          tel_mobile varchar,
  		  company varchar,
          adresse varchar,
          zipcode varchar,
  		  city varchar,
  		  naf varchar,
          siret varchar,
          employes varchar,
          industry varchar)
          
          CREATE TABLE public.r07 (
          tel_fax varchar,
  		  company varchar,
          adresse1 varchar,
          adresse varchar,
          zipcode varchar,
  		  city varchar,
  		  tel_fixe varchar,
          tel_mobile varchar,
            naf varchar,
          siret varchar,
          employes varchar,
            email varchar,
          industry varchar)
          
           CREATE TABLE public.r06 (
             email varchar,
             company varchar,
             adresse1 varchar,
          	adresse varchar,
          	zipcode varchar,
  		  	city varchar,
  		  	tel_fixe varchar,
          	tel_mobile varchar,
          	tel_fax varchar,
  		  
          
            naf varchar,
          siret varchar,
          employes varchar,
            
          industry varchar)
          
          CREATE TABLE public.r04 (
             
             company varchar,
            siret varchar,
             
          	adresse varchar,
          	zipcode varchar,
  		  	city varchar,
  		  	tel_fixe varchar,
            tel_fax varchar,
          	tel_mobile varchar,
          	
  		  	email varchar,
          industry varchar,
            website varchar,
            ca varchar,
          
          job_role varchar,
            Direction_2 varchar,
            employes varchar,
            naf varchar
          )
          
          CREATE TABLE public.demande_b2b (
             
             company varchar,
            
             
          	adresse varchar,
          	zipcode varchar,
  		  	city varchar,
  		  	tel_fixe varchar,
            tel_fax varchar,
          	tel_mobile varchar,
          	
  		  	email varchar,
          industry varchar,
            website varchar,
            ca varchar,
          
          
            direction_name varchar,
            employes varchar,
            siret varchar,
            naf varchar
          )
          
          CREATE TABLE public.c04 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
            optin_mail varchar,
            optin_sms varchar,
            base_origin varchar,
            
            
            deliverability varchar,
            date_creation varchar,
  			lasts_open varchar,
  			collect varchar,
  			municipality_type varchar,
            status_habitation varchar,
            urban_unit_size varchar,
			iris varchar, 
  			robinson varchar,
  			type_habitat varchar,
            insee varchar,
  			hexavia varchar,
            csp varchar, 
            roudis varchar)
            
            CREATE TABLE public.u01 (
          
  		  tel_mobile varchar,
  		  
          firstname varchar,
              lastname varchar,
          
          gender varchar,
          whatsapp varchar)
          
          CREATE TABLE public.a05 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
            optin_mail varchar,
            optin_sms varchar,
            email_deliverable varchar,
            date_creation varchar,
            municipality_type varchar,
            rnvp_city varchar,
            occupying_status varchar,
            address_quality varchar,
            urban_unit varchar,
            rnvp_address varchar,
            iris varchar, 
            robinson varchar,
            address_complement varchar,
			habitation_type varchar,
            insee varchar,
            hexavia varchar,
            email_quality varchar,
            usage_complement varchar,
             csp varchar, 
            roudis varchar,
  			demenage varchar,
  			profession varchar,
  			
            optin_tmk varchar,
            emaillastclicked varchar,
            collect_date varchar,
             emaillastopened varchar,
             famille varchar,
             interet varchar,
             famintert varchar,
             logement varchar)
             
             CREATE TABLE public.c06 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
               base_origin varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
           
            optin_sms varchar,
            
            deliverability varchar,
            date_creation varchar,
  			lasts_open varchar,
  			collect varchar,
  			municipality_type varchar,
            status_habitation varchar,
            urban_unit_size varchar,
			iris varchar, 
  			robinson varchar,
  			type_habitat varchar,
            insee varchar,
  			hexavia varchar,
            csp varchar, 
            roudis varchar)
            
            CREATE TABLE public.b04 (
  gender varchar,
  lastname varchar,
  firstname varchar,
  email varchar,
  tel_mobile varchar,
  tel_fixe varchar,
  birthday varchar,
  adress varchar,
  zipcode varchar,
  city varchar,
  optin_mail varchar,
  optin_sms varchar,
  creation_date varchar,
  municipality_type varchar,
  rnvp_city varchar,            
  status_habitation varchar,
  urban_unit varchar,
  rnvp_address varchar,  
  iris varchar,
  name_complement varchar,
  robinson varchar,
  address_complement varchar,
  habitation_type varchar,
  insee varchar,
  hexavia varchar,
  rnvp_zip varchar,
  email_quality varchar,
  usage_complement varchar,
  csp varchar,
  roudis varchar,
  demenages varchar)
  
  CREATE TABLE public.b06 (
  gender varchar,
  lastname varchar,
  firstname varchar,
  email varchar,
  tel_mobile varchar,
  tel_fixe varchar,
  birthday varchar,
  adress varchar,
  zipcode varchar,
  city varchar,
  optin_mail varchar,
  optin_sms varchar,
  creation_date varchar,
  municipality_type varchar,
  rnvp_city varchar,            
  status_habitation varchar,
  urban_unit varchar,
  rnvp_address varchar,  
  iris varchar,
  name_complement varchar,
  robinson varchar,
  address_complement varchar,
  habitation_type varchar,
  insee varchar,
  hexavia varchar,
  rnvp_zip varchar,
  email_quality varchar,
  usage_complement varchar,
  csp varchar,
  roudis varchar,
  demenages varchar)
  
  CREATE TABLE public.a07 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
            optin_mail varchar,
            optin_sms varchar,
            email_deliverable varchar,
            date_creation varchar,
            municipality_type varchar,
            rnvp_city varchar,
            occupying_status varchar,
            address_quality varchar,
            urban_unit varchar,
            rnvp_address varchar,
            iris varchar, 
            robinson varchar,
            address_complement varchar,
			habitation_type varchar,
            insee varchar,
            hexavia varchar,
            email_quality varchar,
            usage_complement varchar,
             csp varchar, 
            roudis varchar,
  			demenage varchar,
  			profession varchar,
  			
            optin_tmk varchar,
            emaillastclicked varchar,
            collect_date varchar,
             emaillastopened varchar,
             famille varchar,
             interet varchar,
             famintert varchar,
             logement varchar)
             
             CREATE TABLE public.cpfZipcode ( gender varchar,lastname varchar,firstname varchar,email varchar,ciblexo_mobile varchar,Shoote_cpf varchar,ReShoote_Cpf varchar)
             
             CREATE TABLE public.v01 (
   			gender varchar,
   			
   			firstname varchar,
               lastname varchar,
   			email varchar,
               adress varchar, 
               city varchar,
  			zipcode varchar,
   			tel_mobile varchar,
               base_origin varchar,
            iris varchar)
            
             CREATE TABLE public.x01 (
   			gender varchar,
   			
   			firstname varchar,
               lastname varchar,
   			email varchar,
               tel_mobile varchar,
               adress varchar, 
               city varchar,
  			zipcode varchar,
   			iris varchar,
               csp varchar,
               id_base varchar,
               base_origin varchar
            )
            
             CREATE TABLE public.r09 (
             
             company varchar,
            
             
          	adresse varchar,
          	zipcode varchar,
  		  	city varchar,
  		  	tel_fixe varchar,
            tel_fax varchar,
          	tel_mobile varchar,
          	
  		  	email varchar,
          industry varchar,
               index_origine varchar,
            website varchar,
            ca varchar,
          
          job_role varchar,
            Direction_2 varchar,
            employes varchar,
               siret varchar,
            naf varchar
          )
          
          CREATE TABLE public.shooted_table (
   			tel_mobile varchar,
   			
   			shooted_pac varchar,
               shooted_cpf varchar,
   			shooted_poele_a_granules varchar,
               shooted varchar
            )
            
                      
CREATE TABLE public.testLoad (
          
  		  tel varchar)
          CREATE TABLE public.numero_temp (
          
  		  tel varchar)
          
          CREATE TABLE public.dim_belgique (
   			nom varchar,
   			
   			pernom varchar,
               adress varchar,
   			zipcode varchar,
               city varchar,
            tel_fixe varchar, 
            tel_mobile varchar
            )
            
            CREATE TABLE public.a09 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
            optin_mail varchar,
            optin_sms varchar,
            email_deliverable varchar,
            date_creation varchar,
            municipality_type varchar,
            rnvp_city varchar,
            occupying_status varchar,
            address_quality varchar,
            urban_unit varchar,
            rnvp_address varchar,
            iris varchar, 
            robinson varchar,
            address_complement varchar,
			habitation_type varchar,
            insee varchar,
            hexavia varchar,
            email_quality varchar,
            usage_complement varchar,
             csp varchar, 
            roudis varchar,
  			demenage varchar,
  			profession varchar,
  			
            optin_tmk varchar,
            emaillastclicked varchar,
            collect_date varchar,
             emaillastopened varchar,
             famille varchar,
             interet varchar,
             famintert varchar,
             logement varchar)
             
             CREATE TABLE public.b09 (
  gender varchar,
  lastname varchar,
  firstname varchar,
  email varchar,
  tel_mobile varchar,
  tel_fixe varchar,
  birthday varchar,
  adress varchar,
  zipcode varchar,
  city varchar,
  optin_mail varchar,
  optin_sms varchar,
  creation_date varchar,
  municipality_type varchar,
  rnvp_city varchar,            
  status_habitation varchar,
  urban_unit varchar,
  rnvp_address varchar,  
  iris varchar,
  name_complement varchar,
  robinson varchar,
  address_complement varchar,
  habitation_type varchar,
  insee varchar,
  hexavia varchar,
  rnvp_zip varchar,
  email_quality varchar,
  usage_complement varchar,
  csp varchar,
  roudis varchar,
  demenages varchar)
             CREATE TABLE public.c09 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
               base_origin varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
           
            optin_sms varchar,
            
            deliverability varchar,
            date_creation varchar,
  			lasts_open varchar,
  			collect varchar,
  			municipality_type varchar,
            status_habitation varchar,
            urban_unit_size varchar,
			iris varchar, 
  			robinson varchar,
  			type_habitat varchar,
            insee varchar,
  			hexavia varchar,
            csp varchar, 
            roudis varchar)
            
            CREATE TABLE public.e06 (
          
  		  email varchar,
            optin varchar,
  		  tel_mobile varchar,
  		  optin_sms varchar,
            gender varchar,
            lastname varchar,
            firstname varchar,
          adress varchar,
          zipcode varchar,
          city varchar,         
          tel_fixe varchar,
            birthday varchar, 
          habitation varchar,
            salaire varchar,
            csp varchar)
            
            CREATE TABLE public.y01 (
          
  		  email varchar,
            optin varchar,
  		  tel_mobile varchar,
  		  optin_sms varchar,
            gender varchar,
            lastname varchar,
            firstname varchar,
          adress varchar,
          zipcode varchar,
          city varchar, 
              iris varchar,
              hexacle varchar,
              insee varchar,  
          tel_fixe varchar,
            birthday varchar, 
              children varchar, 
          profession varchar,
            statut_habitation varchar)
            
            
            CREATE TABLE public.dim_b2b_recover (
   			company varchar,
              adress varchar, 
              zipcode varchar,
              city varchar,
              country varchar,
              tel_fixe varchar,
              tel_mobile varchar, 
              tel_fax varchar,
              website varchar, 
              email varchar, 
              contact varchar,
              direction varchar,
              firstname varchar,
              middlename varchar,
              lastname varchar,
              gender varchar, 
              title varchar ,
              departement_pro varchar ,
              job_role varchar,
              level varchar , 
              employes varchar, 
              revenue varchar,
              sic varchar,
              sic2 varchar,
              industry varchar,
              siret varchar,
              naf varchar,
              ca varchar,
              base_origin varchar
              
)

CREATE TABLE public.test_table (
          tel_mobile varchar,
  email varchar,
  lastname varchar,
  firstname varchar,
  gender varchar,
  adress varchar,
  zipcode varchar,
  city varchar,
  roudis varchar,
  birthdate varchar,
  statut_habitation varchar)
  
  CREATE TABLE public.za01 (
          
  		  gender varchar,
    firstname varchar,
  		  lastname varchar,
           email varchar,
     tel_fixe varchar,
    tel_mobile varchar,
    tel_mobile2 varchar,
    birthdate varchar,
          adress varchar,
    zipcode varchar,
    city varchar    )
    
    CREATE TABLE public.zb01 (
          
  		  email varchar,
    date_optin varchar,
  		  gender varchar,
           lastname varchar,
     firstname varchar,
    adress varchar,
    zipcode varchar,
    city varchar,
          iris varchar,
    insee varchar,
    tel_fixe varchar , 
       tel_mobile varchar , 
       birthday varchar , 
       statut_marital varchar , 
       enfant varchar ,
       profession varchar ,
       statut_habitation varchar , 
      
auto_possedee_marque  varchar , 
auto_possedee_modele varchar , 
mise_en_service_voiture varchar , 
auto_intention_marque      varchar , 
auto_intention_mode       varchar , 
auto_intention_motorisation varchar , 
assurance_intention_type varchar  
      
      )
      
         CREATE TABLE public.g02 (
           gender	 varchar ,
           lastname varchar ,
           firstname varchar ,
           tel_mobile varchar ,
           email varchar ,
           adresse varchar ,
           zipcode varchar ,
           city varchar ,
           country varchar ,
           base_name varchar 
           
          
  		   )
           
                 
         CREATE TABLE public.zc01 (
           email	 varchar ,
           tel_mobile varchar ,
           gender varchar ,
           lastname varchar ,
           firstname varchar ,
           adresse varchar ,
           zipcode varchar ,
           city varchar ,
           iris varchar 
          
  		   )
           
            CREATE TABLE public.z02 (
           gender	 varchar ,
           lastname varchar ,
           firstname varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar ,
               birthdate varchar ,
              email varchar ,
           tel_mobile varchar ,
           tel_fixe varchar ,
           optin_email varchar ,
           optin varchar ,
           base_name varchar ,
              statut_habitation varchar )
              
               CREATE TABLE public.leads_table (
   			tel_mobile varchar,
lead_audio varchar
            )
            
            CREATE TABLE public.test_b2b (
              mobile varchar,
              name varchar ,
              lastname varchar ,
              gender varchar ,
              email varchar ,
              dob varchar ,
              company varchar ,
              address varchar ,
              zip varchar ,
              city varchar ,
              landline varchar ,
              fax varchar ,
              company_email varchar ,
              activite varchar ,
              site varchar ,
              capital varchar ,
              direction varchar ,
              efectiff varchar ,
              siret varchar ,
              libre varchar 
              
 )
 
 CREATE TABLE public.test_b2c (
   VERTICAL varchar ,
   NICHE varchar ,
   MOBILE varchar ,
   LANDLINE varchar ,
   EMAIL varchar ,
   FIRSTNAME varchar ,
   MIDDLENAME varchar ,
   LASTNAME varchar ,
   GENDER varchar ,
   ADDRESS varchar ,
   CITY varchar ,
   ZIP varchar ,
   DOB varchar ,
   IP varchar ,
   HOME_OWNER varchar ,
   HOME_TYPE varchar ,
   SALARY varchar ,
   CSP varchar ,
   BUYER varchar ,
   INTERESTS varchar ,
   FAMILY_STATUS varchar ,
   OCCUPATION varchar ,
   CAR_MODEL varchar ,
   CAR_MATRICULE varchar ,
   PROFESI√ìN varchar ,
   CHILDREN varchar ,
   INSURRANCE varchar ,
   PROFILE	 varchar ,
   LOAN varchar ,
   COLLECT_URL	 varchar ,
   OPTIN_MAIL varchar ,
   OPTIN_SMS varchar 
   
 )
 
 CREATE TABLE public.test_b2c_2 (
   
   mobile varchar 


   
 )
 
 CREATE TABLE public.test_b2c_1 (
   
   mobile varchar ,
 	hbd varchar , 
   email varchar , 
   zipcode varchar , 
   gender varchar , 
   firstname varchar , 
   lastname varchar 
   

   
 )
 
 
            CREATE TABLE public.z03 (
           gender	 varchar ,
           lastname varchar ,
           firstname varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar ,
               birthdate varchar ,
              email varchar ,
           tel_mobile varchar ,
           tel_fixe varchar ,
           optin_email varchar ,
           optin varchar ,
           base_name varchar ,
              statut_habitation varchar )
              
               CREATE TABLE public.ze01 (
           gender	 varchar ,
                 firstname varchar ,
           lastname varchar ,
           email varchar , 
                 tel_mobile varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar )
               
               CREATE TABLE public.zf01 (
           gender	 varchar ,
                 firstname varchar ,
           lastname varchar ,
           email varchar , 
                 tel_mobile varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar )
               
                CREATE TABLE public.ze02 (
           gender	 varchar ,
                 firstname varchar ,
           lastname varchar ,
           email varchar , 
                 tel_mobile varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar )
               
                
               CREATE TABLE public.zf02 (
           gender	 varchar ,
                 firstname varchar ,
           lastname varchar ,
           email varchar , 
                 tel_mobile varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar )
               
CREATE TABLE public.zg01 (
       gender	 varchar ,
       firstname varchar ,
       lastname varchar ,
       birthdate varchar,
       adresse varchar ,
       city varchar,
       zipcode varchar ,
       tel_fixe varchar ,
       tel_mobile varchar ,
       email varchar   )
       
       CREATE TABLE public.zh01 (
       date_collecte varchar, 
         email varchar ,
       gender	 varchar ,
         lastname varchar ,
       firstname varchar ,
        adresse varchar ,
         zipcode varchar ,
         city varchar,
         tel_mobile varchar ,
       birthdate varchar,
     
       marque_auto_possedee varchar ,
         modele_auto_possedee varchar 
       
         )
         
         CREATE TABLE public.z04 (
           gender	 varchar ,
           lastname varchar ,
           firstname varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar ,
               birthdate varchar ,
              email varchar ,
           tel_mobile varchar ,
           tel_fixe varchar ,
           optin_email varchar ,
           optin varchar ,
           base_name varchar ,
              statut_habitation varchar )
              
              CREATE TABLE public.e01c (
          
  		  email varchar,
        
  		  tel_mobile varchar,
  		  
            gender varchar,
            lastname varchar,
            firstname varchar,
          adress varchar,
          zipcode varchar,
          city varchar,         
          tel_fixe varchar,
            birthday varchar, 
          habitation varchar,
            csp varchar)
            
            CREATE TABLE public.n02 (
          
            email varchar,
            mobile varchar,
            civilite varchar,
            nom varchar,
            prenom varchar,
            adresse varchar,
            code_postal varchar,
            ville varchar,
            iris varchar,
            id_base varchar
            
              )
              
              CREATE TABLE public.zh02 (
          
            gender varchar,
            firstname varchar,
            lastname varchar,
            email varchar,
            birthday varchar,
            tel_mobile varchar,
            adress varchar,
                zipcode varchar,
            city varchar,
            date_upd varchar
          
              )
              
              CREATE TABLE public.zh03 (
          
            gender varchar,
            firstname varchar,
            lastname varchar,
            email varchar,
            birthday varchar,
            tel_mobile varchar,
            adress varchar,
                zipcode varchar,
            city varchar,
            date_upd varchar
          
              )
              
              CREATE TABLE public.z05 (
           gender	 varchar ,
           lastname varchar ,
           firstname varchar ,
              adress varchar ,
              zipcode varchar ,
               city varchar ,
               birthdate varchar ,
              email varchar ,
           tel_mobile varchar ,
           tel_fixe varchar ,
           optin_email varchar ,
           optin varchar ,
           base_name varchar ,
              statut_habitation varchar )
              
              CREATE TABLE public.shooted_table_email (
           email	 varchar  )
           
           CREATE TABLE public.temp_leads (
           tel_mobile	 varchar,
           date varchar)
           
            CREATE TABLE public.b11 (
  gender varchar,
  lastname varchar,
  firstname varchar,
  email varchar,
  tel_mobile varchar,
  tel_fixe varchar,
  birthday varchar,
  adress varchar,
  zipcode varchar,
  city varchar,
  optin_mail varchar,
  optin_sms varchar,
  creation_date varchar,
  municipality_type varchar,
  rnvp_city varchar,            
  status_habitation varchar,
  urban_unit varchar,
  rnvp_address varchar,  
  iris varchar,
  name_complement varchar,
  robinson varchar,
  address_complement varchar,
  habitation_type varchar,
  insee varchar,
  hexavia varchar,
  rnvp_zip varchar,
  email_quality varchar,
  usage_complement varchar,
  csp varchar,
  roudis varchar,
  demenages varchar)
  
  CREATE TABLE public.c24 (
   			gender varchar,
   			lastname varchar,
   			firstname varchar,
   			email varchar,
   			tel_mobile varchar,
            tel_fixe varchar,
            birthday varchar,
               base_origin varchar,
            adress varchar, 
  			zipcode varchar,
 			city varchar,
           
            optin_sms varchar,
            
            deliverability varchar,
            date_creation varchar,
  			lasts_open varchar,
  			collect varchar,
  			municipality_type varchar,
            statut_habitation varchar,
            urban_unit_size varchar,
			iris varchar, 
  			robinson varchar,
  			type_habitat varchar,
            insee varchar,
  			hexavia varchar,
            csp varchar, 
            roudis varchar)
            
                        CREATE TABLE public.e21 (
          
  		  email varchar,
            optin varchar,
  		  tel_mobile varchar,
  		  optin_sms varchar,
            gender varchar,
            lastname varchar,
            firstname varchar,
          adress varchar,
          zipcode varchar,
          city varchar,         
          tel_fixe varchar,
            birthday varchar, 
          habitation varchar,
            salaire varchar,
            csp varchar)
            
            CREATE TABLE public.stop_cpf (
              email 

              )