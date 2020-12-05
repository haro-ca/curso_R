library(tidyverse)
library(tidymodels)

# Lectura ====
denue <- read_csv('data/raw/denue.csv')

lm <- lm(companies ~ year, data = denue)
summary(lm)

lm %>% 
    write_rds('models/modelo_lineal.rds')




