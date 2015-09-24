# Cathryn Wheeler
# 9/15/15
library(PASWR2)
?EPIDURALF
str(EPIDURALF)
head(EPIDURALF) # shows first six rows
116/(172/100)^2
library(dplyr) # puts package on search path
bodyfat <- select(EPIDURALF, kg, cm)
head(bodyfat)
bodyfat <- mutate(bodyfat, BMI = kg/(cm/100)^2)
head(bodyfat)
bodyfat2 <- filter(bodyfat, BMI > 45)
head(bodyfat2)
arrange(bodyfat2, BMI)
epi1 <- select(EPIDURALF, doctor, oc, ease)
head(epi1)
tail(epi1)
epi2 <- filter(epi1, oc >= 5)
head(epi2)
xtabs(~doctor + ease, data = epi2)
library(MASS)
?quine
filter(quine, Lrn == "AL", Days > 5)

library(ggplot2)
ggplot(data = quine, aes(x = Sex, y = Days)) + 
  geom_boxplot() + 
  facet_grid(Eth~Lrn)
