# Muestreo
library(tidyverse) # varios paquetes necesarios dplyr,ggplot
library(readr) # leer datos
library(knitr) # Tablas amigables
library(fdth)  # Crear tablas de distribuci?n



#generacion de datos de ejemplo
set.seed(10000)
med<-rnorm(9939,mean=2.3,sd=1)
x1<-sample(1:4,size = 9939,replace = TRUE)
datos<-data.frame(med,x1)


# tama?o de la poblaci?n y tama?o de la muestra 
# seleccion de la unidad muestral BAJO M.Aleatorio Simple


N=10000 #poblacion Conocida
n=20



muestra<-sample(1:N,n,replace=FALSE) #muestro sin reemplazo replace=FALSE
datos.muestra<-datos[muestra,] #usar la "," es necesario para copiar todas las variables de la data


# seleccion de la unidad muestral BAJO M.Sistematico
salto_inicial<-5
salto_general<-7
salto_hasta<-1000

muestra <- seq(from = salto_inicial, to = salto_hasta, by = salto_general)
datos.muestra<-datos[muestra,] #usar la "," es necesario para copiar todas las variables de la data


# seleccion de la unidad muestral BAJO M.Estratificado

#definir los estratos.
kable(head(datos,10))
pob1<-filter(datos,x1==1)
pob2<-filter(datos,x1==2)
pob3<-filter(datos,x1==3)
pob4<-filter(datos,x1==4)

N1<-nrow(pob1)
N2<-nrow(pob2)
N3<-nrow(pob3)
N4<-nrow(pob4)

n1<-12
n2<-15
n3<-30
n4<-45

m1<-sample(1:N1,n1,replace = FALSE)
m2<-sample(1:N2,n2,replace = FALSE)
m3<-sample(1:N3,n3,replace = FALSE)
m4<-sample(1:N4,n4,replace = FALSE)

muestra1<-pob1[m1,]
muestra2<-pob2[m2,]
muestra3<-pob3[m3,]
muestra4<-pob4[m4,]

