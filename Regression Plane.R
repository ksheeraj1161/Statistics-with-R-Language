# Equation of regression plane of y on X1 and X2

> X1=c(30,40,20,50,60,40,20,60)
> X2=c(11,10,7,15,19,12,8,14)
> Y=c(110,80,70,120,150,90,70,120)
> MultiReg=lm(Y~X1+X2)
> MultiReg

Call:
lm(formula = Y ~ X1 + X2)
Coefficients:
(Intercept) X1 X2 
 16.8314 -0.2442 7.8488
