#

#si el siguiente valor es DISTINTO de 0 entonces quiere decir que existen 
# Valores faltantes (NA), por tanto, no calcular? nada.

sum(is.na(CdA0))

#limpiar valores faltantes

CdA00<-na.omit(CdA00)
