fertility[1:10, c("kids", "educ")]
# cor(fertility[,"educ"], fertility[,"kids"]) * (sd(fertility[,"kids"]) / sd(fertility[,"educ"]))
model = lm(fertility[,"kids"] ~ fertility[,"educ"])
model

