fertility
grouped_fertility = fertility %>% group_by(year) %>% summarise(mean_kids= mean(kids))
plot(grouped_fertility)

# test