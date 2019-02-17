#modelling
#linear regression -simple, multiple
#y ~ x1(SLR); y~ x1+x2...(MLR)
#y -dependent variable x- independent

head(women)
#y -weight, x=height
cor(women$height,women$weight)
#strenght and direction of relationship
cov(women$height,women$weight)
#directio +ve, height increases weight increases
plot(women$height,women$weight)
fit1 =lm(weight~height,data = women)
summary(fit1)
#f stats p value much much leass <<0.05:liner model exist
# at lesat 1 Indepent Variable is signifiacnt in predicting Dependent variable
#multiple Rsquare=0991 coeff of determination
# if more than one dvthen we use adjusted r square
#99% of the variation in y is expalined by x=multiple r sqaure
#y=mx+c:y=-87+3.45*height
range(women$height)
#only do interpolation not extrapolation
women$weight
(y=-87+3.45*women$height)
#predicted weight for actual height
fitted(fit1)
residuals(fit1) #diff between predicted andactual wweights
summary(fit1)

summary(residuals(fit1))
(newdata1=data.frame(height=c(60.4,59.9)))
?predict
(p1=predict(fit1,newdata = newdata1,type='response'))
cbind(newdata1,p1)
#check for assumptions of linear regression



fit2=lm(weight~