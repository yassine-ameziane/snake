##twee KK A
View(fertility)
lin= lm(fertility$kids ~ fertility$educ)
plot(x = fertility$educ, y = fertility$kids)
abline(lin)

summary(lin)
lin$coefficients

### twee kk B
lin2 = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity, data = fertility)
lin
lin2

## twee kk C
lin3 = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity + year, data = fertility)
lin
lin2
lin3

## twee kk D (niet af!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!)
fertility$dummy = factor(fertility$year, levels = c("2002", "2004", "2006", "2008", "2010", "2012", "2014"), labels = c("2002", "2004", "2006", "2008", "2010", "2012", "2014"))
lin4 = lm(kids ~ educ + black + east + northcen + west + farm + othrural + town + smcity + dummy, data = fertility)
lin4

fertility$pred = predict(lin4, fertility)

plot(x = c(1:1129), y = fertility[,"pred"])