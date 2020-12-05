library(tidyverse)

# Lectura ====
denue <- read_csv('data/raw/denue.csv')

# AED ====
denue %>% 
    group_by(year, sector) %>% 
    summarise(prom = mean(companies))  %>% 
    ggplot(aes(x = year, y = prom)) +
    geom_line() +
    facet_grid(sector~., 
               scales = 'free_y') +
    ggsave('figs/mi_aed.png', width = 11, height = 8)






