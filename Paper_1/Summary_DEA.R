library(deaR)

# Load the data
data("Hua_Bian_2007")
View(Hua_Bian_2007)

# Adapt the data to the format used by deaR
data_example_12 <- read_data(Hua_Bian_2007,
                             ni = 2,
                             no = 3,
                             ud_outputs = 3)

# Extract the results / running the DEA model
result_example_12 <- model_basic(data_example_12,
                                 orientation = "oo",
                                 rts = "vrs",
                                 vtrans_o = 1500)

# at this point, I can extract the partial results with the functions:
# efficiencies(), lambdas(), multipliers(), rts(), referencess(),
# slacks(), targets(), and the summary of the results with the 
# summary() function.

# Extracting (partial) results
eff <- efficiencies(result_example_12)
eff
1/eff  

# summary of results
summary(result_example_12)

plot(result_example_12)
