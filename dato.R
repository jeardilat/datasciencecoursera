# Funcion para examen

pollutantmean <- function(directory,pollutant,id) {
  DIR<-directory
  POL <- pollutant
  
  if (id<9){
  ID <- paste("00",id,sep = "")
  } else {
    if (id<99){
    ID <- paste("0", id, sep = "")
    }
   else {ID <- as.character(id)}
  }
  
  direccion <- str_c(DIR, "/", ID, ".csv")
  read_csv(file=direccion)
} 

