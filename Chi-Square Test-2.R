# A total number of 3759 individuals were interviewed according to gender and decision in a public opinion survey on a political proposal with the results as in the following table. 
# Write down the R programming code to test the hypothesis that there is no association between gender and attitude 5 % level of significance.
# favoured    opposed     undecided
#   1154        475           243
#   1103        442           342


> message(sprintf("H0 := There is no association between gender and attitude"))
H0 := There is no association between gender and attitude
> message(sprintf("H1 := There is an association between gender and attitude"))
H1 := There is an association between gender and attitude
> alpha=0.05
> OF=matrix(c(1154, 475, 243, 1103, 442, 342),nrow=2,ncol=3)
> Dim=dim(OF)
> m=Dim[1]
> n=Dim[2]
> EF=matrix(nrow=m,ncol=n)
> for (i in 1:Dim[1]) {
+ for (j in 1:Dim[2])
+ { EF[i,j]=round(sum(OF[i,])*sum(OF[,j])/sum(OF))
+ } }
> ChiTab=qchisq((1-alpha),(m-1)*(n-1))
> message(sprintf("Tabulated Chi-Square Value = %0.4f",ChiTab))
Tabulated Chi-Square Value = 5.9915
> ChiCal=sum(((OF-EF)^2)/EF)
> message(sprintf("Calculated Chi-Square Value = %0.4f",ChiCal))
Calculated Chi-Square Value = 842.3324
> if ((abs(ChiCal)< abs(ChiTab))){
+ message(sprintf("H0 is accepted and H1 is rejected"))
+ message(sprintf("Attributes are independent"))
+ } else {
+ message(sprintf("H0 is rejected and H1 is accepted"))
+ message(sprintf("Attributes are not independent"))
+ }
H0 is rejected and H1 is accepted
Attributes are not independent
