# test
grouped_fertility = fertility %>% group_by(year) %>% summarise(educ= mean(educ))
plot(grouped_fertility, main="mean years of schooling over the years")
