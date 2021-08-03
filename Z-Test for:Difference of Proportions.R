> print("H0 := p1=p2")
[1] "H0 := p1=p2"
> print("H1 := p1!=p2")
[1] "H1 := p1!=p2"
> alpha=0.01
> ZTab=qnorm(1-alpha)
> ZTab
[1] 2.326348
> n1=1000
> n2=1200
> p1=800/1000
> p2=800/1200
> P=((n1*p1)+(n2*p2))/(n1+n2)
> ZCal=(p1-p2)/sqrt(P*(1-P)*((1/n1)+(1/n2)))
> ZCal
[1] 6.992059
> if(abs(ZCal)<abs(ZTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is rejected and H1 is accepted"
