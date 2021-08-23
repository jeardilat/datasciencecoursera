# Funcion para examen

  IDI <- 1:332
    if (id<9){
       ID <- paste("00",id,sep = "")
     } else {
       if (id<99){
         ID <- paste("0", id, sep = "")
     }
        else {ID <- as.character(id)}
    } 
  
  direccion <- str_c(DIR, "/", ID, ".csv")
  medida <- read_csv(file=direccion)
 # dat <- medida$POL
 # mean(dat,na.rm = TRUE)

} 

if (IDID == TRUE){
  pp <- paste("0",IDID, sep="")
}
