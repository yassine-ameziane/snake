fertility[1:10, c("kids", "educ")]
model = lm(fertility[,"kids"] ~ fertility[,"educ"])
model

