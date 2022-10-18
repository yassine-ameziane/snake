grouped_fertility = fertility %>% group_by(year) %>% summarise(mean_educ = mean(educ))
plot(grouped_fertility)

