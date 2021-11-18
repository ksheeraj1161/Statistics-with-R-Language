# The following table gives the number of fatal road accidents that occurred during the 7 days of a week. 
# Write down the R programming code to test whether the accidents are uniformly distributed over the week at 95 % level of confidence. 
# 8 14 16 12 11 14 9

> message(sprintf("H0 := The accidents are uniformly distributed over the week"))
H0 := The accidents are uniformly distributed over the week
> message(sprintf("H1 := The accidents are not uniformly distributed over the week"))
H1 := The accidents are not uniformly distributed over the week
> alpha=0.05
> OF=c(8, 14, 16, 12, 11, 14, 9) 
> Tot=sum(OF)
> n=length(OF) 
> EV=Tot/n
> EF=rep(EV,n)
> ChiTab=qchisq((1-alpha),(n-1)) 
> ChiTab
[1] 12.59159
> ChiCal=sum(((OF-EF)^2)/EF)
> ChiCal 
[1] 4.166667
> if(abs(ChiCal)<abs(ChiTab)) { 
+ message(sprintf("H0 is accepted and H1 is rejected")) 
+ } else { 
+ message(sprintf("H0 is rejected and H1 is accepted"))
+ }
H0 is accepted and H1 is rejected
