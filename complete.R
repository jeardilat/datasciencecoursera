### SEGUNDA FUNCION QUIZ SEMANA 2

complete <- function(directory, id){
  
  # se construye el vector con las direcciones de archivo
  fil <- list.files(path = "./specdata", full.names = FALSE)
  direccion <- paste(directory,"/",fil, sep ="")

  for(i in id){
    #leer los datos de archivo
    datos <- read.csv(file=direccion[i], header = TRUE)
    Vlog <- sum(!is.na(datos[,2]))
    ids <- direccion[i]
    prt <- c(ids,Vlog)
    print(prt)
    #print(sum(datos[Vlog==FALSE,id]))            
  }
  
}
