h=10
x=seq(175,245,h)
f=c(52,68,85,92,100,95,70,28)

# Mean
N=sum(f)
M=(sum(x*f))/N
M

# Median
cf=cumsum(f)
N=sum(f)
mc=min(which(cf>=N/2))
mcf=f[mc]
c=cf[mc-1]
l=x[mc]-h/2
Md=l+(((N/2)-c)/mcf)*h
Md

# Mode
mc=which(f==max(f))
f1=f[mc]
f0=f[mc-1]
f2=f[mc+1]
l=x[mc]-h/2
Mo=l+((f1-f0)/(2*f1-f0-f2))*h
Mo

# Variance, Standard Deviation and Co-efficient of Variation
N=sum(f)
M=(sum(x*f))/sum(f)
M
Var=((1/N)*(sum(x^2*f)))-((1/N)*(sum(x*f)))^2
Var
SD=sqrt(Var)
SD
CV=100*(SD/M)
CV

# Mean = 208.9831
# Median = 209.7826
# Mode = 216.1538
# Variance = 388.0336
# SD = 19.69857
# CV = 9.425917
