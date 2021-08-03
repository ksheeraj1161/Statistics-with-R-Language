> n=20
> p=0.05
> q=1-p
> N=1000
# 1. Number of packets containing atleast 2 defective items
> k=2
> N1=round(N*(1-pbinom(k-1,n,p)))
> N1
[1] 264
# 2. Number of packets containing exactly 2 defective items
> k=2
> N2=round(N*dbinom(k,n,p))
> N2
[1] 189
# 3. Number of packets containing atmost 2 defective items
> k=2
> N3=round(N*(pbinom(k,n,p)))
> N3
[1] 925
1. N1=264
2. N2=189
3. N3=925
