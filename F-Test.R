> > print("H0 := s1=s2")
[1] "H0 := s1=s2"
> print("H1 := s1!=s2")
[1] "H1 := s1!=s2"
> alpha=0.05
> S1=c(21, 24, 25, 26, 27)
> S2=c(22, 27, 28, 30, 31, 36)
> n1=length(S1)
> n2=length(S2)
> x1=mean(S1)
> x2=mean(S2)
> s1=sqrt(var(S1))
> s2=sqrt(var(S2))
> Var1=(n1/(n1-1))*(s1^2)
> Var2=(n2/(n2-1))*(s2^2)
> FTab=qf((1-alpha),(n1-1),(n2-1))
> FTab
[1] 5.192168
> if(Var1>Var2) {
+ FCal=Var1/Var2
+ } else {
+ FCal=Var2/Var1
+ }
> FCal
[1] 3.912453
> if(abs(FCal)<abs(FTab)) {
+ print("H0 is accepted and H1 is rejected")
+ } else {
+ print("H0 is rejected and H1 is accepted")
+ }
[1] "H0 is accepted and H1 is rejected"
> var.test(S1,S2)
 0.2453704
