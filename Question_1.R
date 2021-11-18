# A radar unit is used to measure speeds of cars on a motorway. The speeds are normally distributed with a mean of90km/hr and a standard deviation of5km/hr. 
# Write down the R programming code to find the probability that a car picked at random is traveling with the speed 
# (i). not exceeding 85km/hr, (ii). in between70km/hrand100km/hr, and (iii). exceeding105km/hr

> Mu=90
> SD=5
> x1=85
> x2=70
> x3=100
> x1=85
> N1=pnorm(x1,Mu,SD)
> N1
[1] 0.1586553
> 
> x2=70
> x3=100
> N2=(pnorm(x3,Mu,SD)-pnorm(x2,Mu,SD))
> N2
[1] 0.9772182
> 
> x4=105
> N3=(1-pnorm(x4,Mu,SD))
> N3
[1] 0.001349898
> x4=105
