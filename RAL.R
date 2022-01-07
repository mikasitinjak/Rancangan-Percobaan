install.packages('foreign')
install.packages('stats')
library(readxl)
power= read_excel('D:/Sains Data ITERA/KULIAH/Semester 4/RANCANGAN PERCOBAAN/R studio/Data RAL.xlsx')
View(power)
head(power)
ujianova= aov(Observed_Etch_Rate ~ as.factor(RF_Power), data = power)
ujianova
summary(ujianova)
