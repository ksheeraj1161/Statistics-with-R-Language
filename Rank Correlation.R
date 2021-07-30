# Rank Correlation between the ranks of variable X and Y
# N = length of X 
# U = rank of X 
# V = rank of Y

> X=c(10,15,12,17,13,16,24,14,22)
> Y=c(30,42,45,46,33,34,40,35,39)
> n=length(X)
> U=rank(X)
> V=rank(Y)
> SumD2=sum((U-V)^2)
> RankCor=1-((6*SumD2)/(n*(n^2-1)))
> RankCor
[1] 0.4

# Rank Correlation Co-efficient = 0.4
