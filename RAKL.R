library(readxl)
psi= read_excel('D:/Sains Data ITERA/KULIAH/Semester 4/RANCANGAN PERCOBAAN/R studio/Data RAKL.xlsx')
head(psi)
psi$PSI <- as.factor(psi$PSI)

psi$Kelompok <- as.factor(psi$Kelompok)
anova_psi <- aov(Hasil ~ PSI+Kelompok:Kelompok, data = psi)
summary(anova_psi)
