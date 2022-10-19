educ_unique = unique(fertility$educ)
educ_levels = factor(fertility$educ, levels = educ_unique, labels=label_)
model = lm(kids ~ educ_levels + black + east + northcen + west + farm + othrural + town + smcity + year_levels, data=fertility)
summary(model)

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