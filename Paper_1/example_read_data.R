library(deaR)

data("Coll_Blasco_2006")

help(package="deaR")

data_example <- read_data(Coll_Blasco_2006,
                          ni=2,
                          no=2)
