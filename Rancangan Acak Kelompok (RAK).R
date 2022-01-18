Tekanan=c(9.3,9.4,9.6,10.0,9.8,9.4,9.3,9.8,9.9,9.7,9.2,9.4,9.5,9.7,9.6,9.7,9.6,10.0,10.2,10.1)
Metode=c("A","A","A","A","A","B","B","B","B","B","C","C","C","C","C","D","D","D","D","D")
Umur=c("u1","u2","u3","u4","u5","u1","u2","u3","u4","u5","u1","u2","u3","u4","u5","u1","u2","u3","u4","u5")
DarahTinggi=data.frame(Tekanan,Metode,Umur)
DarahTinggi
rak=aov(Tekanan~Metode+Umur,data=DarahTinggi)
summary(rak)
library(DescTools)
ujiTukey=PostHocTest(rak,method = "hsd")
ujiTukey$Metode
ujiTukey$Umur
boxplot(DarahTinggi$Tekanan~DarahTinggi$Metode)
boxplot(DarahTinggi$Tekanan~DarahTinggi$Umur)