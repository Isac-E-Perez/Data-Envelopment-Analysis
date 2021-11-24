library(deaR)

data("Leon2003")
View(Leon2003)

data_example_3 <- read_data_fuzzy(Leon2003,
                                  inputs.mL = 2,
                                  inputs.dL = 3,
                                  outputs.mL = 4,
                                  outputs.dL = 5)
