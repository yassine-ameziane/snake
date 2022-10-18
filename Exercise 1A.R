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
66

# colMeans(fertility)
# length(fertility[,'educ'])

describe(fertility)$mean[c(1,4:6)]
describe(fertility)
describe(fertility)$n[c(1,4:6)]
describe(fertility)$mean[c(1,4:6)]
describe(fertility)$sd[c(1,4:6)]
describe(fertility)$min[c(1,4:6)]
describe(fertility)$max[c(1,4:6)]

summary(fertility)
skim(fertility)


