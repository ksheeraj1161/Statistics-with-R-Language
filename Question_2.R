# Suppose a drug company develops a new drug to prevent colds. The company states thatthe drug is equally effective for men and women. 
# To test this claim, they choose a simplerandom sample of100women and200men from a population. 
# At the end of the study,38% of the women caught a cold; and51%of the men caught a cold. Based on these findings, write down the R programming code to test whether the 
# company’s claim thatthe drug is equally effective for men and women at 99% level of confidence?

> alpha=0.01
> n1=100
> n2=200
> p1=0.38
> p2=0.51
> print("H0 := p1=p2")
[1] "H0 := p1=p2"
> print("H1 := p1!=p2")
[1] "H1 := p1!=p2"
> ZTab=qnorm(1-alpha)
> ZTab
[1] 2.326348
> P=((n1*p1)+(n2*p2))/(n1+n2)
> ZCal=(p1-p2)/sqrt(P*(1-P)*((1/n1)+(1/n2)))
> ZCal
[1] -2.127624
> if(abs(ZCal)<abs(ZTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is accepted and H1 is rejected"
