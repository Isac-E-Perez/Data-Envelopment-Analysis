library(deaR)

data("Economy")
View(Economy)

data("EconomyLong")
View(EconomyLong)

data_example_1 <- read_malmquist(Economy,
                                 nper = 5,
                                 arrangement = "horizontal",
                                 ni = 2,
                                 no = 1)

data_example_2 <- read_malmquist(EconomyLong,
                                 percol = 2,
                                 arrangement = "vertical",
                                 ni = 2,
                                 no = 1)
