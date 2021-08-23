### TERCERA FUNCION QUIZ SEMEAN 2

corr <- function(directory, threshold=0){
  
  fil <- list.files(path = "./specdata", full.names = FALSE)
#  print(fil)
#  l <- length(fil)
    l <- 332
    i <- 1
    datos <- data.frame()
#  print(l)
  direccion <- paste(directory,"/",fil, sep ="")
  print(direccion[20])
  
  for(i in l){
    datos1 <- read.csv(file=direccion[i], header = TRUE)
    # print(tail(datos1))
    # print(head(datos1))
    # print(datos1[,3])
  
    print(dim(datos1[,1]))
    obs <- sum(!is.na(datos1[,2]))
    print(obs)
    
    co <- cor(datos1[,2],datos1[,3],use ="complete.obs")
    print(co)            
  } 
}
