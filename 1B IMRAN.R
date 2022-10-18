groupedby_fertility = fertility %>% group_by(year) %>% summarise(mean_number_of_children = mean(kids))
plot(groupedby_fertility ,main="Mean number of children between 2002-2014", xlab="Years",
ylab="Mean number of children")
