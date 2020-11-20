list.of.packages <- c("DBI", "RPostgres", "dbplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


library(DBI)
library(RPostgres)
library(dbplyr)

con <- dbConnect(RPostgres::Postgres(),
                 dbname = "test",
                 user    = "admin",
                 password    = "admin",
                 host = "127.0.0.1",
                 port = 5432)