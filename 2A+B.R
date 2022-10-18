View(fertility)
lin= lm(fertility$kids ~ fertility$educ)
plot(x = fertility$educ, y = fertility$kids)
abline(lin)

summary(lin)
lin$coefficients

lin2 = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity, data = fertility)
lin
lin2
