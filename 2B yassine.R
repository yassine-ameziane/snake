fertility[1:10, c("kids", "educ")]
# cor(fertility[,"educ"], fertility[,"kids"]) * (sd(fertility[,"kids"]) / sd(fertility[,"educ"]))
model = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity , data=fertility)
model

