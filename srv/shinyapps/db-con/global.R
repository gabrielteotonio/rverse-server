list.of.packages <- c("DBI", "RPostgres", "dbplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


library(DBI)
library(RPostgres)
library(dplyr)
library(dbplyr)

con <- dbConnect(RPostgres::Postgres(),
                 dbname = "test",
                 user    = "admin",
                 password    = "admin",
                 host = "db",
                 options="-c search_path=public",
                 port = 5432)