library(tidyverse)
library(jsonlite)

# link to the API output as a JSON file
url_json <- "https://api.datamexico.org/tesseract/cubes/inegi_denue/aggregate.jsonrecords?drilldowns%5B%5D=Date.Date.Year&drilldowns%5B%5D=Geography.Geography.State&drilldowns%5B%5D=Industry.Industry.Sector&measures%5B%5D=Companies&parents=false&sparse=false"

# get the raw json into R
raw_json <- jsonlite::fromJSON(url_json)

raw_json$data %>% 
    tibble() %>% 
    janitor::clean_names() %>% 
    write_csv('data/raw/denue.csv')

