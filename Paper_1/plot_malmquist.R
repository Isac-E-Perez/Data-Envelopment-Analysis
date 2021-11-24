data("EconomyLong")

data_example_15 <- read_malmquist(EconomyLong,
                                  percol = 2,
                                  arrangement = "vertical",
                                  inputs = 3:4,
                                  outputs = 5)

result_malmquist <- malmquist_index(data_example_15,
                                    orientation = "io")

# Note: The data are in long format

plot(result_malmquist)
