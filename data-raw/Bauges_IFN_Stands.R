Bauges_IFN_Stands <- read.csv("data-raw/Bauges_IFN_Stands.csv", header = TRUE, sep = ";", dec = ".")
usethis::use_data(Bauges_IFN_Stands, overwrite = TRUE)
