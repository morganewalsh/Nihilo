##CASE 1 

library(dplyr)
data("iris")

head(iris)

summary(iris)

slength = iris$Sepal.Length

swidth = iris$Sepal.Width

plength = iris$Petal.Length

pwidth = iris$Petal.Width

species = iris$Species

plot(iris)

plot(slength, plength)


##Hypothesis: H0: B1 = 0 

## test if sepal length significantly predicts petal length 
##alpha 0.025

model = lm(Petal.Length ~ Sepal.Length, data = iris)

summary(model)


confint(model, level = 0.95)

##conclusion slope estimate is 1.86, so for every 1 cm increase in 
##sepal lenght, petal is expected to increase by 1.86 cm 

##true pop slope between 1.688 and 2.02 cm 
## p is below alpha, so this is significantly positive


