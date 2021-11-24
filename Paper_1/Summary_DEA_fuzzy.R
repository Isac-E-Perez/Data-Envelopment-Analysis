data("Leon2003")
data_example <- read_data_fuzzy(datadea = Leon2003, 
                                inputs.mL = 2,
                                inputs.dL = 3,
                                outputs.mL = 4,
                                outputs.dL = 5)

result <- modelfuzzy_possibilistic(datadea = data_example,
                                   h = seq(0, 1, by = 0.1),
                                   orientation = "io",
                                   rts = "vrs")

# Note: h = seq(0, 1, by = 0.1) generates a sequence of values for the 
# different levels of possibility: h = (0. 0.1, 0.2, ..., 1)

efficiencies(result)

summary(result)
