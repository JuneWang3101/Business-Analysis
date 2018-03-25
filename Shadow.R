library(xlsx)
wordbook <- "D:/Users/data analysis exercise/r/P1/Shadow02.csv"
mydataframe <- read.csv(wordbook,"Data")
#Count Exchange and plot a bar
counts <-mydataframe$Exchange
r1 <- as.data.frame(table(counts)) #counts the exchange and exchange to dataframe
Percentage <- prop.table(r1$Freq)*100
total1 <- cbind(r1,Percentage)
barplot(total1$Percentage,main = "Exchange Bar Plot",xlab = "Exchange",ylab = "Percentage") 
#data clustering
counts2 <- mydataframe$Gross.Profit.Margin....
r2 <- mydataframe$Company
numcut <- cut(counts2,c(0,15,30,45,75),right = F) #data clustering 
#right = F represent left close right open
total2 <- as.data.frame(table(numcut))
barplot(total2$Freq,names.arg = total2$numcut,main = "Gross Profit Plot",xlab = "Clustering",ylab = "Number") 
#the mean of Price/Earnings Ratio
r3 <- mydataframe$Price.Earnings.Ratio
mean(r3,na.rm = TRUE)