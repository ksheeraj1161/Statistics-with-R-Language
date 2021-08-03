> lam=1.5
# 1. Proportion of days neither car is used
> x=0
> P1=dpois(x,lam)
> P1
[1] 0.2231302
# 2. Proportion of days atmost one car is used
> x=1
> P2=ppois(x,lam)
> P2
[1] 0.5578254
# 3. Proportion of days some demand is not fulfilled
> x=2
> P3=1-ppois(x,lam)
> P3
[1] 0.1911532
