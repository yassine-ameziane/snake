groupedby_fertility = fertility %>% group_by(year) %>% summarise(mean_kids = mean(kids))
