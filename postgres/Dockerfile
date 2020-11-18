FROM postgres

ENV POSTGRES_USER admin
ENV POSTGRES_PASSWORD admin
ENV POSTGRES_DB test

COPY /data/international-migration-nz.csv  /var/lib/postgresql/data/
COPY init.sql /docker-entrypoint-initdb.d/