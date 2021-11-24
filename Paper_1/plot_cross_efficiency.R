data("Golany_Roll_1989")

data_example <- read_data(datadea = Golany_Roll_1989,
                          dmus = 1,
                          inputs = 2:4,
                          outputs = 5:6)

result_cross <- cross_efficiency(data_example,
                                 orientation = "io",
                                 rts = "crs",
                                 selfapp = TRUE)

plot(result_cross)
