#LIBRERIAS


# siempre cargar 
library(tidyverse)#anexo manejo de datos 
library(caret) #by, bootstrapp y otros
library(tibble) #dataframes simples para mejorar presentacion con broom
library(tidyr) #trabajo con datos
library(broom) #convierte resultados en formatos mejor vistos
library(lubridate) #manejor de datos
library(haven) #importa datos desde SPSS, SAS; STATA




#tablas
library(report) # genera informe de resultados estadisticos
library(expss) # tablas etiquetas y otras funciones
library(kableExtra) # construccion de tablas avanzadas.
library(rempsyc) #tablas con formato 
library(flextable)
library(broom)
library(xtable)
library(tableone)







#EXPLORACION DE DATOS 
library(DescTools) #estadistica en general
library(devtools) #para desarrollo de paquetes
library(doBy) #Estadisticas agrupadas
library(EnvStats) # informacion estadistica mas completa
library(evir) # valores extremos
library(evmix) # valores extremos
library(moments) #estadistica
library(tables)
library(knitr) # Tablas amigables
library(MASS) # analisis estadisstico mas avanzado
library(mosaic) #estadisticas en general






# PROBABILIDAD Y DATOS
library(actuar) # analisis de distribuciones con colas importantes..
library(e1071) # funciones de probabilidad
library(fitdistrplus) # funciones de probabilidad
library(gamlss)
library(nortest) #pruebas de normalidad
library(VGAM) # Distribuciones de probabilidad




# REGRESION
library(AER) #herramientas regresion y econometria
library(arm) #analisis de datos con regresion
library(ISLR) # Para regresion 
library(car) # regresion
library(PerformanceAnalytics) # Analisis de Riesgo y Regresion
library(lmtest) # test de analisis de regresion
library(ggfortify)
library(gvlma)
library(forestmodel)
library(jtools)
library(olsrr)


library(plot3D) 
library(plot3Drgl)
library(apaTables)
library(gvlma)
library(performance)





# INFERENCIA
library(agricolae)
library(pwr) # analisis de potencia de pruebas estadisticas
library(onewaytests) # para pruebas POST HOC
library(PMCMRplus) #test POST HOC T2 T3 entre otros
library(ppcor) #correlaciones parciales y semi
library(psych) #procedimientos psicometricos y estadisticos
library(lawstat)
library(lsr)
library(effsize)
library(effectsize)
library(nortest) #pruebas de normalidad
library(rstatix) #pruebas estadisticas
library(FSA) # comparaciones multiples 






# GRAFICA
library(xts)
library(dygraphs)
library(gganimate)
library(plotly)

library(esquisse) # para grafica dinamica
library(GGally) #grafica
library(ggthemes) #grafica
library(ggThemeAssist) #grafica
library(gdtools) #grafica
library(ggplot2) #mejoras de graficos
library(hrbrthemes)
library(viridis) #grafica
library(lattice) # graficas avanzada
library(gdtools) #para grafica
library(highcharter) # mejorar grafica


#para escribir en formatos "REVISTAS"
library(apa)





#pendientes por ordenar
library(forcats)
library(foreign) #lectura datos distintas fuentes
library(fdth)  # Crear tablas de distribuci?n
library(multcomp) # visualizacion de comparaciones multiples
library(multcompView) # visualizacion de comparaciones multiples
library(naniar) 


library(outliers) #para identificacion y trabajo con outliers


library(roxygen2) #documentacion 
library(rsample) #muestreo y bootstrapping





library(writexl)# escritura a XLSX


library(samplingbook)
library(pastecs)
library(summarytools)
library(DataExplorer)
library(Rmisc)

# grafica



# para cargar múltiple librerias

carga_lib <- function(librerias){
  a_cargar <- librerias[!(librerias %in% installed.packages()[, "Package"])]
  if (length(a_cargar)) 
    install.packages(a_cargar, 
                     dependencies = TRUE)
  sapply(librerias, 
         character.only = TRUE, 
         require)
}

#define las librerias que necesitas
librerias <- c("tidyverse",
               "PerformanceAnalytics")

#carga las librerias 
carga_lib(librerias)



