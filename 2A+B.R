View(fertility)
lin= lm(fertility$kids ~ fertility$educ)
plot(x = fertility$educ, y = fertility$kids)
abline(lin)

summary(lin)
lin$coefficients
