# A random sample is selected from each of 3 makes of ropes and their breaking strength are measured.
# R program to test whether the breaking strengths of ropes differ significantly at 5% level of significance.
# 70 72 75 80 83
# 60 65 57 84 87 73
# 100 110 108 112 113 120 107

> D1=c(70, 72, 75, 80, 83)
> D2=c(60, 65, 57, 84, 87, 73)
> D3=c(100, 110, 108, 112, 113, 120, 107)
> Data=c(D1, D2, D3)
> Data
[1] 70 72 75 80 83 60 65 57 84 87 73 100 110 108 112 113 120 107
> Type=c(rep("Type1",length(D1)),rep("Type2",length(D2)),rep("Type3",length(D3)))
> Type
[1] "Type1" "Type1" "Type1" "Type1" "Type1" "Type2" "Type2" "Type2" "Type2" 
"Type2" "Type2"
[12] "Type3" "Type3" "Type3" "Type3" "Type3" "Type3" "Type3"
> ANOVA1=aov(Data~Type)
> summary(ANOVA1)
 Df Sum Sq Mean Sq F value Pr(>F) 
Type 2 5838 2919.2 38.89 1.16e-06 ***
Residuals 15 1126 75.1 
---
Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> # RBD - ANOVA for 2 Way Classification
> Data=c(36, 36, 21, 35, 28, 29, 31, 32, 26, 28, 29, 29)
> Data
[1] 36 36 21 35 28 29 31 32 26 28 29 29
> Season=c(rep("Summer",4),rep("Winter",4),rep("Monsoon",4))
> Season
[1] "Summer" "Summer" "Summer" "Summer" "Winter" "Winter" "Winter" "Winter" 
[9] "Monsoon" "Monsoon" "Monsoon" "Monsoon"
> Salesman=c(rep(c("SalesA", "SalesB", "SalesC", "SalesD"),3))
> Salesman
[1] "SalesA" "SalesB" "SalesC" "SalesD" "SalesA" "SalesB" "SalesC" "SalesD" "SalesA"
[10] "SalesB" "SalesC" "SalesD"
> ANOVA2=aov(Data~(Season+Salesman))
> summary(ANOVA2)
 Df Sum Sq Mean Sq F value Pr(>F)
Season 2 32 16.00 0.706 0.531
Salesman 3 42 14.00 0.618 0.629
Residuals 6 136 22.67 
> # LSD - ANOVA for 3 Way Classification
> Data=c(16, 17, 20, 16, 21, 15, 15, 12, 13)
> Data
[1] 16 17 20 16 21 15 15 12 13
> Day=c(rep("Day1",3),rep("Day2",3),rep("Day3",3))
> Day
[1] "Day1" "Day1" "Day1" "Day2" "Day2" "Day2" "Day3" "Day3" "Day3"
> Engine=c(rep(c("Eng1","Eng2","Eng3"),3))
> Engine
[1] "Eng1" "Eng2" "Eng3" "Eng1" "Eng2" "Eng3" "Eng1" "Eng2" "Eng3"
> Burner=c("B1", "B2", "B3", "B2", "B3", "B1", "B3", "B1", "B2")
> Burner
[1] "B1" "B2" "B3" "B2" "B3" "B1" "B3" "B1" "B2"
> ANOVA3=aov(Data~(Day+Engine+Burner))
> summary(ANOVA3)
 Df Sum Sq Mean Sq F value Pr(>F) 
Day 2 34.89 17.444 22.43 0.0427 *
Engine 2 1.56 0.778 1.00 0.5000 
Burner 2 30.89 15.444 19.86 0.0479 *
Residuals 2 1.56 0.778 
---
Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
