> Mu=1000
> SD=200
> N=10000
# 1. Number of bulbs expected to fail in first 800 hours
> x1=800
> N1=round(N*pnorm(x1,Mu,SD))
> N1
[1] 1587
# 2. Number of bulbs expected to fail in between 800 and 1200 hours
> x1=800
> x2=1200
> N2=round(N*(pnorm(x2,Mu,SD)-pnorm(x1,Mu,SD)))
> N2
[1] 6827
