> print("H0 := x0=Mu")
[1] "H0 := x0=Mu"
> print("H1 := x0!=Mu")
[1] "H1 := x0!=Mu"
> alpha=0.05
> Mu=100
> n=10
> x=c(70, 120, 110, 101, 88, 83, 95, 98, 107, 100)
> x0=mean(x)
> s=sqrt(var(x))
> tTab=qt((1-alpha),(n-1))
> tTab
[1] 1.833113
> tCal=(x0-Mu)/(s/sqrt(n-1))
> tCal
[1] -0.5885024
> if(abs(tCal)<abs(tTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is accepted and H1 is rejected"
> t.test(x,mu=Mu)
