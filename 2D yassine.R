year_levels = factor(fertility$year)
model = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity + year_levels, data=fertility)
model
summary(model)
