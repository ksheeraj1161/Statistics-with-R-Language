# Correlation, Rank Correlation, Linear Regression and Multiple Linear Regression
# MX = Mean of X 
# MY = Mean of Y 
# SDX = Standard Deviation of X 
# SDY = Standard Deviation of Y 
# Var = variance
# Cor = Coefficient of correlation between X and Y

> X=c(21,23,30,54,57,58,72,78,87,90)
> Y=c(60,71,72,83,110,84,100,92,113,135)
> MX=mean(X)
> MX
[1] 57
> MY=mean(Y)
> MY
[1] 92
> SDX=sqrt(var(X))
> SDX
[1] 25.48638
> SDY=sqrt(var(Y))
> SDY
[1] 22.82299
> Cov1=var(X,Y)
> Cov1
[1] 510.4444
> Cov=cov(X,Y)
> Cov
[1] 510.4444
> Cor=Cov/(SDX*SDY)
> Cor
[1] 0.8775417
> Cor1=cor(X,Y)
> Cor1
[1] 0.8775417
> Cor2=cor.test(X,Y)
> Cor2

# Correlation Co-efficient = 0.8775417

