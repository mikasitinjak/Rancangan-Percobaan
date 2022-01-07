#Buku Montgomery hal 161

code = c(-1,-5,-6,-1,-1,
         -8,-1,5,  2,11,
         -7,13,1,  2,-4,
         1,  6,1, -2,-3,
         -3, 5,-5, 4,6)
batch=gl(5,5)
operators= gl(5,1,25, labels=c(1,2,3,4,5))
letter=c('A','B','C','D','E',
         'B','C','D','E','A',
         'C','D','E','A','B',
         'D','E','A','B','C',
         'E','A','B','C','D')
observasi= data.frame(code,batch,operators,letter)
hasil= aov(code~letter+batch+operators, data=observasi)
summary(hasil)
