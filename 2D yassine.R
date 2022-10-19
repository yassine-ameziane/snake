years_ = unique(fertility[,"year"])
year_ = factor(fertility$year, levels=years_, labels=years_)
model = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity + year + year_, data=fertility)
model
