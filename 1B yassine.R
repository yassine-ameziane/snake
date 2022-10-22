fertility
grouped_fertility = fertility %>% 
                      group_by(year) %>% 
                        summarise(number_of_children= mean(kids))
plot(grouped_fertility, main="hello")
abline(
lm(as.vector(grouped_fertility["number_of_children"])$number_of_children ~ as.vector(grouped_fertility["year"])$year)
)
