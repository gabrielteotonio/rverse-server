FROM rocker/shiny

RUN apt-get update && \
apt-get install -y libpq-dev
RUN R -e "install.packages(c('DBI', 'RPostgres', 'dbplyr', 'auth0'), repos='https://cran.rstudio.com/')"
