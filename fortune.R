library(xlsx)
wordbook <- "D:/Users/data analysis exercise/r/P2/Fortune.csv"
mydataframe1 <- read.csv(wordbook)
#make a crosstabulation by Stockholders' Equity and profit
Stockholders_Equity  <- cut(mydataframe1$Stockholders..Equity,c(0,1200,2400,4800,6000))
Profit <- cut(mydataframe1$Profit,c(0,200,400,600,800,1000,1200))

library(gmodels)
table1 <- CrossTable(Stockholders_Equity,Profit,prop.c = FALSE,
           prop.t = FALSE,prop.chisq = FALSE)

#crosstable can use to calculate the row proportions,column proportions
#table proportions and chi-square contribution and so on,but I just need n.

#make a scatter diagram by Stockholders' Equity and profit
plot(mydataframe1$Profit,mydataframe1$Stockholders..Equity,
     main = "Basic Scatter plor of SHE vs Profit",
     ylab = "Stockholders' Equity ",xlab = "Profit",pch = 19)
abline(lm(mydataframe1$Stockholders..Equity~mydataframe1$Profit),col="red",lwd = 2 ,lty =1)
lines(lowess(mydataframe1$Stockholders..Equity~mydataframe1$Profit),col="blue",lwd = 2 ,lty =2)