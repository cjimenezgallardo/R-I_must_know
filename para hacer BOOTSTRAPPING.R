library(nortest)
library(caret)
library(doBy)




hongos$venenoso<-c(1)
hongos$venenoso[hongos$V21=="w"]<-c(0)
table(hongos$venenoso)

datosindex=createDataPartition(hongos$V1,p=0.25)$Resample1 #0.1, porcentaje de elementos para el bootstrap
d1_1<-as.data.frame(hongos[datosindex,] )


t1<-table(d1_1$venenoso)

t1[2]/(t1[1]+t1[2])

