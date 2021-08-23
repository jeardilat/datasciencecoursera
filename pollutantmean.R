###  PRIMERA FUNCION QUIZ SEMANA 2
pollutantmean <- function(directory,pollutant,id) {
  # declaro las variables, se leen del usuario
  DIR<-directory
  POL <- pollutant
  # ID <- id
  # Defino una variable para construuir los datos
  combinacion <-as.numeric(0)
  ddd <- numeric()
  bb <- numeric()
  m <- numeric()
  # lista de npmbre de archivos
  fil <- list.files(path = "./specdata", full.names = FALSE)
  # se hace la direeccion
  #N <- length(ID)
  
  ## creo el vector con los nombres de lso archivos
  direccion <- paste(DIR,"/",fil, sep ="")
  
  for(i in id){
    # uso el vector con los nombres de los archivos para leer los datos y guardarlos
    # en una variable  "datos". 
    datos <- read.csv(file=direccion[i], header = TRUE)
    print(head(datos))
    
    # Elijo el contaminante con POL --> esto es inutil, se pudo directo
    elexion <- datos[[POL]]
    #print(head(elexion))
    
    # para calcular la media se usa media ponderada.
    
    # se obtien la media de los datos "i", para despues agregar a un vector con los otros
    dd <- mean(elexion, na.rm = TRUE)
    print(dd)
    # se construye el vector con todos los datos
    ddd <- c(ddd,dd)
    print(ddd)
    #a <- mean(elexion,na.rm = TRUE)
    b <- sum(!is.na(elexion))
    # se construye el vector con los datos de NA
    bb <- c(bb,b)
    print(bb)
    # media ponderada
    mm <- (ddd*bb)/sum(bb)
    print(mm)
    m <- sum(mm)
    print(m)
    # combinacion <- cbind(combinacion, elexion)
    # print(head(combinacion))
    
  }
  
  mean(combinacion,na.rm = TRUE)
  
}