CREATE TABLE public.nz_migration(
	year_month VARCHAR ( 50 ),	
	month_of_release VARCHAR ( 50 ),	
	passenger_type VARCHAR ( 50 ),
	direction VARCHAR ( 50 ),	
	citizenship VARCHAR ( 50 ),	
	visa VARCHAR ( 50 ),	
	country_of_residence VARCHAR ( 250 )
);


COPY public.nz_migration(year_month, month_of_release, passenger_type, direction, citizenship, visa, country_of_residence) 
FROM '/var/lib/postgresql/data/pgdata/international-migration-nz.csv' WITH (FORMAT CSV, HEADER);