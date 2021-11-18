# The mean height and the standard deviation height of 8 randomly chosen soldiers are 166.9 cm and 8.29 cm respectively. The corresponding values of 6 randomly chosen sailors are 170.3 cm and 8.50 cm respectively. 
# Write down the R programming code to test whether the soldiers are shorter than the sailors on the basis of average height.

> print("H0 := x1=x2")
[1] "H0 := x1=x2"
> print("H1 := x1!=x2")
[1] "H1 := x1!=x2"
> alpha=0.01
> n1=8
> n2=6
> x1=166.9
> x2=170.3
> s1=8.29
> s2=8.50
> Sigma=sqrt(((n1*s1^2)+(n2*s2^2))/(n1+n2-2))
> tTab=qt((1-alpha),(n1+n2-2))
> tTab
[1] 2.680998
> tCal=(x1-x2)/(Sigma*sqrt((1/n1)+(1/n2)))
> tCal
[1] -0.6954801
> if(abs(tCal)<abs(tTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is accepted and H1 is rejected"
