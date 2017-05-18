 #Limpia espacio de trabajo
 rm(list = ls())
 
 # Fijar directorio de trabajo
 setwd("/home/hector/Dropbox/Observatorio Regional/Bases NENE/NENE/")
 
 # Para importar bases de datos en multiples formatos
 library(foreign)
 
 
 # Se realiza un listado de todos los archivos que comienzan con nene2010
 
 nene  = c("nene20102.sav", "nene20103.sav", "nene20104.sav",
           "nene20105.sav", "nene20106.sav", "nene20107.sav",
           "nene20108.sav", "nene20109.sav", "nene201010.sav",
           "nene201011.sav", "nene201012.sav",
           "nene20111.sav","nene20112.sav", "nene20113.sav",
           "nene20114.sav", "nene20115.sav", "nene20116.sav",
           "nene20117.sav","nene20118.sav", "nene20119.sav",
           "nene201110.sav","nene201111.sav", "nene201112.sav",
           "nene20121.sav","nene20122.sav", "nene20123.sav",
           "nene20124.sav", "nene20125.sav", "nene20126.sav",
           "nene20127.sav","nene20128.sav", "nene20129.sav",
           "nene201210.sav","nene201211.sav", "nene201212.sav",
           "nene20131.sav", "nene20132.sav", "nene20133.sav", "nene20134.sav")
 
 # Se importan todas las bases del año 2010 de una sola vez
 todas =  lapply(nene, function(x) read.spss(x,use.value.labels  =  FALSE,
                                             use.missings  =  TRUE,
                                             to.data.frame  =  TRUE))
 for (i in 1:length(todas)){
 write.csv(todas[[i]],paste0("nene_",i, ".csv", collapse=""))
 }
 
 
 #quito los objetos que ya no usaré
 rm(nene)
 
 # Esto es para preguntar y controlar el uso de memoria RAM
 format(object.size(todas), units = "GB")
 
 library(dplyr)
 
 for (i in 1:length(todas)){
   todas[[i]] = select(todas[[i]], id_directorio, estrato, fact,
                       cae_general, mes_central, ano_trimestre,
                       b14,e18,b18_codigo, region, categoria_ocupacion,
                       b15_1, b15_2, b8, b9, nivel, curso, edad, r_p_c, ano_trimestre)
 }
 
 
  Este comando está genial, reinicia R sin desinstalar los paquetes ni limpiar el entorno de trabajo
 
 .rs.restartR()
 
 print(object.size(x = lapply(ls(), get)), units = "GB")
 
 
 # Se realiza un listado de todos los archivos que comienzan con nene
 
 library(foreign)
 nene2  = c("nene20135.sav", "nene20136.sav",
            "nene20137.sav","nene20138.sav", "nene20139.sav",
            "nene201310.sav","nene201311.sav", "nene201312.sav",
            "nene20141.sav","nene20142.sav", "nene20143.sav",
            "nene20144.sav", "nene20145.sav", "nene20146.sav",
            "nene20147.sav","nene20148.sav", "nene20149.sav",
            "nene201410.sav","nene201411.sav", "nene201412.sav",
            "nene20151.sav","nene20152.sav", "nene20153.sav",
            "nene20154.sav", "nene20155.sav", "nene20156.sav",
            "nene20157.sav","nene20158.sav", "nene20159.sav",
            "nene201510.sav","nene201511.sav", "nene201512.sav",
            "nene20161.sav", "nene20162.sav", "nene20163.sav",
            "nene20164.sav", "nene20165.sav", "nene20166.sav", "nene20167.sav")
 
 todas2 =  lapply(nene2, function(x) read.spss(x,use.value.labels  =  FALSE,
                                               use.missings  =  TRUE,
                                               to.data.frame  =  TRUE))
 
 for (i in 1:length(todas2)){
   write.csv(todas2[[i]],paste0("nene_",i+39, ".csv", collapse=""))
 }
