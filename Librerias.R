# =====================================================================
#  LIBRERÍAS DE TRABAJO - CJG
#  
# =====================================================================
#  Sugerencia: instalar/cargar todo de una vez con pacman
#  install.packages("pacman")
#  pacman::p_load(readxl, writexl, ...)   # instala lo que falte y carga
#
#  OJO CON EL ORDEN: varios paquetes "tapan" funciones del tidyverse
#  (MASS::select, plyr::summarise/mutate, car::recode, psych::alpha...).
#  Por eso tidyverse se carga AL FINAL. Ante la duda usar dplyr::select().
#  Alternativa: library(conflicted) para que R avise de cada choque.
# =====================================================================


# ---------------------------------------------------------------------
# 1. IMPORTACIÓN / EXPORTACIÓN DE DATOS
# ---------------------------------------------------------------------
library(readxl)      # Lee archivos Excel (.xls, .xlsx)
library(writexl)     # Escribe data frames a .xlsx sin depender de Java
library(haven)       # Importa/exporta SPSS (.sav), SAS (.sas7bdat), Stata (.dta) conservando etiquetas
library(foreign)     # Lectura de formatos antiguos (SPSS, Stata, dbf, ARFF); haven es la versión moderna


# ---------------------------------------------------------------------
# 2. MANEJO DE DATOS (complementos al tidyverse)
# ---------------------------------------------------------------------
library(broom)       # Convierte salidas de modelos (lm, glm, t.test...) en tibbles ordenados: tidy(), glance(), augment()
library(caret)       # Machine learning: partición de datos, validación cruzada, bootstrap, entrenamiento de modelos
library(rsample)     # Remuestreo moderno (tidymodels): bootstraps(), vfold_cv(), initial_split()
library(naniar)      # Exploración y visualización de datos faltantes (NA): vis_miss(), gg_miss_var()
library(doBy)        # Estadísticas por grupos: summaryBy(), orderBy(), splitBy()
# library(lubridate) # Fechas y horas: ymd(), dmy(), year(), month() -> ya incluido en tidyverse (>= 2.0)


# ---------------------------------------------------------------------
# 3. TABLAS Y PRESENTACIÓN DE RESULTADOS
# ---------------------------------------------------------------------
library(knitr)       # Motor de R Markdown; kable() para tablas simples
library(kableExtra)  # Amplía kable(): estilos, agrupación de filas/columnas, colores (HTML y LaTeX)
library(gt)          # Tablas de calidad publicación con sintaxis por capas
library(flextable)   # Tablas para Word/PowerPoint/HTML; la mejor opción para exportar a .docx
library(rempsyc)     # Tablas formato APA listas para Word: nice_table()
library(apaTables)   # Tablas APA de correlaciones, regresión y ANOVA directamente a Word
library(xtable)      # Exporta tablas a LaTeX o HTML
library(tableone)    # "Tabla 1" descriptiva por grupos (típica de artículos clínicos): CreateTableOne()
library(expss)       # Etiquetas de variables y tablas cruzadas estilo SPSS (OJO: tapa funciones de dplyr)
library(report)      # Redacta automáticamente en texto los resultados de modelos y pruebas
library(apa)         # Formatea resultados de pruebas (t, F, chi², r) en estilo APA para el texto
library(summarytools)# Resúmenes rápidos: dfSummary(), freq(), descr(), ctable()
library(tables)      # Tablas descriptivas complejas con fórmula: tabular()


# ---------------------------------------------------------------------
# 4. GRÁFICA
# ---------------------------------------------------------------------
# --- Extensiones de ggplot2 ---
library(GGally)      # ggpairs(): matriz de dispersión + correlaciones; ggcoef() para coeficientes
library(ggthemes)    # Temas adicionales (economist, wsj, tufte, stata...)
library(hrbrthemes)  # Temas tipográficos limpios: theme_ipsum()
library(viridis)     # Paletas de color perceptualmente uniformes y aptas para daltónicos
library(gdtools)     # Soporte de fuentes para gráficos y flextable (dependencia técnica)
library(gganimate)   # Animaciones de ggplot2: transition_time(), transition_states()
library(ggfortify)   # autoplot() para modelos lm, PCA, series de tiempo, clusters

# --- Gráficos interactivos ---
library(plotly)      # Gráficos interactivos; ggplotly() convierte un ggplot en interactivo
library(highcharter) # Gráficos interactivos con la librería Highcharts (licencia comercial para uso no académico)
library(dygraphs)    # Gráficos interactivos para series de tiempo
library(xts)         # Objetos de series de tiempo (requerido por dygraphs)

# --- Otros sistemas gráficos ---
library(lattice)     # Gráficos multipanel (trellis): xyplot(), bwplot()
library(corrplot)    # Visualización de matrices de correlación
library(treemap)     # Diagramas de árbol (treemaps) para datos jerárquicos
library(plot3D)      # Gráficos 3D en base R: scatter3D(), persp3D()
library(plot3Drgl)   # Versión interactiva/rotable de plot3D (requiere rgl y ventana gráfica)
library(ggmap)       # Mapas de fondo para ggplot2 (requiere API key de Google o Stadia)

# --- Addins de RStudio (NO necesitan library, se abren desde el menú Addins) ---
# esquisse::esquisser()       # Construir ggplots arrastrando variables (genera el código)
# ggThemeAssist::ggThemeAssistGadget(grafico) # Editar el tema de un ggplot de forma visual

# --- Nube de palabras ---
library(tm)          # Minería de texto: corpus, limpieza (stopwords, puntuación), matriz de términos
library(wordcloud)   # Genera la nube de palabras a partir de frecuencias


# ---------------------------------------------------------------------
# 5. EXPLORACIÓN Y ESTADÍSTICA DESCRIPTIVA
# ---------------------------------------------------------------------
library(DescTools)   # Estadística descriptiva amplia: Desc(), Mode(), Gini(), IC, pruebas varias
library(psych)       # describe(), describeBy(), alfa de Cronbach, análisis factorial (OJO: tapa alpha y %+%)
library(pastecs)     # stat.desc(): descriptivos completos incluyendo normalidad
library(moments)     # Asimetría y curtosis: skewness(), kurtosis(); pruebas de Jarque-Bera, D'Agostino
library(EnvStats)    # Estadística ambiental: descriptivos, IC, outliers (rosnerTest), distribuciones
library(fdth)        # Tablas de distribución de frecuencias e histogramas para datos agrupados
library(DataExplorer)# Informe exploratorio automático: create_report()
library(mosaic)      # Sintaxis didáctica con fórmulas: favstats(), tally(), mean(~x | g) (OJO: tapa varias funciones)
library(outliers)    # Detección de valores atípicos: grubbs.test(), dixon.test()
library(evir)        # Teoría de valores extremos: GEV, GPD, gráficos de excesos
library(evmix)       # Modelos de mezcla para valores extremos y selección de umbral
library(Rmisc)       # summarySE(): media, DE, EE e IC por grupo para gráficos de error (OJO: carga plyr)


# ---------------------------------------------------------------------
# 6. PROBABILIDAD Y DISTRIBUCIONES
# ---------------------------------------------------------------------
library(MASS)        # fitdistr() para ajustar distribuciones, glm.nb(), boxcox() (OJO: tapa dplyr::select)
library(fitdistrplus)# Ajuste de distribuciones por MV/momentos, gráficos de bondad de ajuste, descdist()
library(actuar)      # Distribuciones de colas pesadas (Pareto, Burr, log-logística...), uso actuarial
library(VGAM)        # Gran catálogo de distribuciones y modelos vectoriales generalizados
library(gamlss)      # Modelos donde media, varianza, asimetría y curtosis dependen de predictores
library(e1071)       # Asimetría/curtosis, distribuciones; también SVM y naive Bayes
library(BiasedUrn)   # Distribuciones hipergeométricas no centrales (urnas sesgadas)
library(samplingbook)# Cálculo de tamaño de muestra y estimación en muestreo (Kauermann & Küchenhoff)


# ---------------------------------------------------------------------
# 7. PRUEBAS DE NORMALIDAD
# ---------------------------------------------------------------------
library(nortest)     # Anderson-Darling, Lilliefors, Cramér-von Mises, Pearson, Shapiro-Francia
library(MVN)         # Normalidad multivariante: Mardia, Henze-Zirkler, Royston
# moments también aporta jarque.test() y agostino.test()


# ---------------------------------------------------------------------
# 8. REGRESIÓN
# ---------------------------------------------------------------------
library(car)         # vif(), Anova() tipos II/III, leveneTest(), durbinWatsonTest(), qqPlot() (OJO: tapa recode)
library(lmtest)      # Pruebas de supuestos: bptest() (heterocedasticidad), dwtest(), resettest(), coeftest()
library(gvlma)       # Validación global de supuestos de un modelo lineal en una sola función
library(olsrr)       # Diagnóstico de regresión MCO: selección de variables, influencia, colinealidad
library(performance) # check_model(): panel gráfico de supuestos; R², AIC, comparación de modelos
library(jtools)      # summ() con resúmenes limpios, effect_plot(), errores estándar robustos
library(forestmodel) # Forest plot de coeficientes de lm/glm/cox
library(arm)         # Herramientas de Gelman & Hill: display(), coefplot(), sim() (carga MASS y lme4)
library(AER)         # Econometría aplicada: ivreg() (variables instrumentales), tobit(), bases de datos
library(ISLR)        # Bases de datos del libro "An Introduction to Statistical Learning"
library(PerformanceAnalytics) # chart.Correlation() (correlaciones + histogramas); análisis financiero


# ---------------------------------------------------------------------
# 9. INFERENCIA, COMPARACIONES MÚLTIPLES Y TAMAÑO DE EFECTO
# ---------------------------------------------------------------------
library(Analitica)   # Comparaciones múltiples (Tukey, Scheffé, Games-Howell...) y descriptiva
library(rstatix)     # Pruebas con sintaxis tidy y compatibles con pipe: t_test(), anova_test(), tukey_hsd()
library(agricolae)   # Diseño experimental: LSD, HSD, Duncan, SNK, Scheffé con letras de agrupación
library(multcomp)    # Comparaciones múltiples generales: glht() con contrastes de Tukey, Dunnett
library(multcompView)# Letras de significancia (a, b, ab) a partir de p-valores
library(PMCMRplus)   # Post hoc paramétricos y no paramétricos: Tamhane T2/T3, Games-Howell, Conover, Nemenyi
library(FSA)         # dunnTest(): post hoc de Kruskal-Wallis; herramientas de pesquerías
library(onewaytests) # ANOVA de una vía robusto (Welch, Brown-Forsythe, James) y sus post hoc
library(lawstat)     # Pruebas de homogeneidad de varianzas (Levene, Brown-Forsythe) y de simetría
library(ARTool)      # ANOVA factorial no paramétrico (Aligned Rank Transform): art()
library(ppcor)       # Correlaciones parciales y semiparciales: pcor(), spcor()
library(pwr)         # Análisis de potencia y tamaño de muestra (t, ANOVA, r, chi², proporciones)
library(lsr)         # Funciones didácticas de Navarro: cohensD(), etaSquared(), ciMean()
library(effsize)     # Tamaños de efecto con IC: cohen.d(), cliff.delta(), VD.A()
library(effectsize)  # Tamaños de efecto para casi cualquier modelo: eta_squared(), omega_squared(), interpret_*()


# ---------------------------------------------------------------------
# 10. DESARROLLO DE PAQUETES (no necesarios para el análisis)
# ---------------------------------------------------------------------
# library(devtools)  # Crear, instalar y probar paquetes; install_github()
# library(roxygen2)  # Documentación de funciones mediante comentarios #'


# ---------------------------------------------------------------------
# 11. TIDYVERSE (SIEMPRE AL FINAL para que sus funciones prevalezcan)
# ---------------------------------------------------------------------
library(tidyverse)   # Carga ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats, lubridate
# Ya incluidos, no hace falta cargarlos aparte:
#   ggplot2  -> gráficos por capas
#   dplyr    -> filter(), select(), mutate(), summarise(), group_by()
#   tidyr    -> pivot_longer(), pivot_wider(), separate(), drop_na()
#   tibble   -> data frames modernos
#   forcats  -> manejo de factores: fct_reorder(), fct_lump()
#   lubridate-> fechas y horas


# =====================================================================
# Verificación rápida de conflictos (opcional)
# tidyverse::tidyverse_conflicts()
# =====================================================================
