library(deaR)

help("model_basic")

data("PFT1981")
View(PFT1981)

# Adapting the data to the reading format
data_basic <- read_data(PFT1981,
                        dmus = 1,
                        inputs = 2:6,
                        outputs = 7:9)

# Running the input-oriented CCR DEA model
result_pft <- model_basic(data_basic,
                          dmu_eval = 1:49,
                          dmu_ref = 1:49,
                          orientation = "io",
                          rts = "crs")

# Running the input-oriented CCR DEA model for DMUs in NFT
result_nft <- model_basic(data_basic,
                          dmu_eval = 50:70,
                          dmu_ref = 50:70,
                          orientation = "io",
                          rts = "crs")

# Extracting the efficiency scores
efficiencies(result_pft)
efficiencies(result_nft)

# Extracting the references set for inefficient DMUs 
references(result_pft) 
references(result_nft) 

# Extracting the input and output slacks
slacks(result_pft)
slacks(result_nft)

# Extracting the input and output target values
targets(result_pft)
targets(result_nft)

# Extracting the lambdas (or intensities)
lambdas(result_pft)
lambdas(result_nft)

# Extracting the returns-to-scale
rts(result_pft)
rts(result_nft)


 



