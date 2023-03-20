

#seleccionar porcion del archivo de datos por indice
#conectores
# & : y
# | : o
# ! : no

#sintaxis
datosXX<-dataframe[fil,col]

#cambiar nombre a columna
names(d1)=c("consumo")

#o 
names(d1)[3]=c("pp")


#eliminar filas con valores faltantes
datosset_nuevo<-na.omit(dataset_original)


#crear nueva variable en data frame
#datos$nueva variable<- algo.....



#ejemplos
datosxxx<- dataframe[5:15,c(10,12)]

datosxxx<- dataframe[5:15,c(10,12)]

datosxxx<- dataframe[5:15,"x1","Y1"] #basado en los nombres de las columnas


datos_empleados$sexo_n<-c(1) #nueva variable sexo_n llenado con 1

datos_empleados$sexo_n[datos_empleados$Sexo=="m"]<-2 #cambiar un valor en la columna de acuerdo a una condicion





#seleccionar porcion del archivo de datos condicion de datos

datosmax_min<-dataframe[dataframe$v1==max(dataframe$v1)]
datosmax_min<-dataframe[dataframe$v1>=XXX]#XXX valor 



#trae todas las columnas donde la fila cumple con esa condicion
datosmax_min<-dataframe[dataframe$v1==max(dataframe$v1) | datosaframe$v1==min(datos$v1), ] #trae todas las columnas donde la fila cumple con esa condicion

#instruccion subset(dataframe, fil,col)


#leer desde XML
#instalar libreria XML
#declarar 
url<- "-----/asdasd/nombre.xml"
xmldoc<-xmlParse(url)
rootnode<- xmlRoot(xmldoc)
dataframe<- xmlApply(rootnode, function(x) xmlSApply(x,xmlValue))

#hay que revisar dado que esta transpuesta
dataframe_nuevo<.data.frame(t(dataframe), row,names = NULL)



#segmentar dataframe con SPLIT,, dejar en un conjunto
data_list<-split(dataframe,dataframe$v1)




library(lubridate)
#extraccion fecha
datos$fecha_compra<-date(datos$InvoiceDate)


#extraccion hora.
datos$hora_compra<-format(datos$InvoiceDate,format = "%H:%M")

#mes
datos$mes_compra<-month(datos$InvoiceDate)

#dia
datos$dia_compra<-day(datos$InvoiceDate)

#hora
datos$hora_compra<-hour(datos$InvoiceDate)

#dia de la semana
wday(df$f)  #1 es domingo


