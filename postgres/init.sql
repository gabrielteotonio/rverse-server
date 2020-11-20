CREATE TABLE public.nz_migration(
	year_month VARCHAR ( 50 ),	
	month_of_release VARCHAR ( 50 ),	
	passenger_type VARCHAR ( 50 ),
	direction VARCHAR ( 50 ),	
	citizenship VARCHAR ( 50 ),	
	visa VARCHAR ( 50 ),	
	country_of_residence VARCHAR ( 250 )
);


COPY public.nz_migration 
FROM '/var/lib/postgresql/data/pgdata/international-migration-nz.csv' 
DELIMITER ',' CSV HEADER;