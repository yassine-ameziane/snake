#1a
for(pkg in c("AER", "lmtest", "Hmisc", "dplyr", "tibble", "ivreg", "modelsummary",
"summarytools")){
  if(!require(pkg, character.only = TRUE))
  {
    install.packages(pkg, repos = 'http://cloud.r-project.org')
    library(pkg, character.only = TRUE)
  }
}

library('skimr')
library('psych')

fertility = read.csv("fertility.csv")
View(fertility)

# colMeans(fertility)
# length(fertility[,'educ'])

description = describe(fertility)
description
describe(fertility)$n[c(1,4:6)]
describe(fertility)$mean[c(1,4:6)]
describe(fertility)$sd[c(1,4:6)]
describe(fertility)$min[c(1,4:6)]
describe(fertility)$max[c(1,4:6)]

summary(fertility)
skim(fertility)

#1b
groupedby_fertility = fertility %>% group_by(year) %>% summarise(mean_number_of_children = mean(kids))
plot(groupedby_fertility ,main="Mean number of children between 2002-2014", xlab="Years",
     ylab="Mean number of children")
# lin0 = lm(groupedby_fertility$mean_number_of_children ~ groupedby_fertility$year)
# abline(lin0)

#1c
grouped_fertility = fertility %>% group_by(year) %>% summarise(educ= mean(educ))
plot(grouped_fertility, main="mean years of schooling over the years")

##2 A
View(fertility)
lin= lm(fertility$kids ~ fertility$educ)
plot(x = fertility$educ, y = fertility$kids)
abline(lin)

summary(lin)
lin$coefficients

### 2 B
lin2 = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity, data = fertility)
lin
lin2
summary(lin2)
## 2 D
Years_ = unique(fertility[,"year"])
Year_ = factor(fertility$year, levels = Years_, labels = Years_)
#fertility$year = factor(fertility$year)
#levels(fertility$year)
ln3 = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity + Year_, data = fertility)
ln3

## 3 B

educ_unique = unique(fertility$educ)
educ_levels = factor(fertility$educ, levels = educ_unique, labels=label_)

label_ = c()
for (number in educ_unique){
  if (number < 10){
    label_ = c(label_, "0-9")
  } else if (number > 12){
    label_ = c(label_, "12+")
  } else {
    label_ = c(label_, "10-12")
  }
}

ln4 = lm(kids ~ educ_levels + black + east + northcen + west + farm + othrural + town + smcity + Year_, data=fertility)
summary(ln4)

