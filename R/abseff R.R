abseff_rr <- function(a, b, c, d, e) {
  
  y <- round(d/e*a*1000)
  z <- round(d/e*b*1000)
  x <- round(d/e*c*1000)
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}



abseff_rr100 <- function(a, b, c, d, e) {
  
  y <- round(d/e*a*100)
  z <- round(d/e*b*100)
  x <- round(d/e*c*100)
  
  
  print(paste("point absolute effect = ", y)) 
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}


abseff_or <- function(a, b, c, d, e) {
  
  y <- round((d/e)*a/(1-(d/e) + ((d/e)*a))*1000)
  z <- round((d/e)*b/(1-(d/e) + ((d/e)*b))*1000)
  x <- round((d/e)*c/(1-(d/e) + ((d/e)*c))*1000)
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}


abseff_or100 <- function(a, b, c, d, e) {
  
  y <- round((d/e)*a/(1-(d/e) + ((d/e)*a))*100)
  z <- round((d/e)*b/(1-(d/e) + ((d/e)*b))*100)
  x <- round((d/e)*c/(1-(d/e) + ((d/e)*c))*100)
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}

abseff_hrsurv <- function(a, b, c, d) { 
  y <- round(exp(log(d)*a)*1000)
  z <- round(exp(log(d)*c)*1000)
  x <- round(exp(log(d)*b)*1000)
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}

abseff_hrsurv100 <- function(a, b, c, d) { 
  y <- round(exp(log(d)*a)*100)
  z <- round(exp(log(d)*c)*100)
  x <- round(exp(log(d)*b)*100)
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}

abseff_hrevent <- function(a, b, c, d) { 
  y <- round(1000 - (exp(log(1 - d)*a)*1000))
  z <- round(1000 - (exp(log(1 - d)*b)*1000))
  x <- round(1000 - (exp(log(1 - d)*c)*1000))
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}

abseff_hrevent100 <- function(a, b, c, d) { 
  y <- round(100 - (exp(log(1 - d)*a)*100))
  z <- round(100 - (exp(log(1 - d)*b)*100))
  x <- round(100 - (exp(log(1 - d)*c)*100))
  
  print(paste("point absolute effect = ", y))
  print(paste("lower_up = ", z)) 
  print(paste("upper_ci = ", x))
  
}
