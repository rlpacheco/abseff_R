abseff_rr <- function(a, b, c, d, e) {
  
  v <- round(d*1000/e)
  y <- round(d/e*a*1000)
  z <- round(d/e*b*1000)
  x <- round(d/e*c*1000)
  t <- round(d*100/e)
  g <- round(d/e*a*100)
  h <- round(d/e*b*100)
  i <- round(d/e*c*100)
  
  print(paste("Base 1000"))
  print(paste("The risk with control group is", v, "per 1000"))
  print(paste("The anticipated absolute effects is", y, "per 1000 (95% CI =", z, "to", x,")."))
  print(paste("The absolute risk difference is ", y - v, "per 1000 (95% CI =", z - v, "to", x-v,")."))
  print(paste(""))
  print(paste("Base 100"))
  print(paste("The risk with control group is ", t, "per 100"))
  print(paste("The anticipated absolute effects is", g, "per 100 (95% CI =", h, "to", i,")."))
  print(paste("The absolute risk difference is ", g - t, "per 100 (95% CI =", h - t, "to", i-t,")."))
  
}


abseff_or <- function(a, b, c, d, e) {
  v <- round(d*1000/e)
  y <- round((d/e)*a/(1-(d/e) + ((d/e)*a))*1000)
  z <- round((d/e)*b/(1-(d/e) + ((d/e)*b))*1000)
  x <- round((d/e)*c/(1-(d/e) + ((d/e)*c))*1000)
  t <- round(d*100/e)
  g <- round((d/e)*a/(1-(d/e) + ((d/e)*a))*100)
  h <- round((d/e)*b/(1-(d/e) + ((d/e)*b))*100)
  i <- round((d/e)*c/(1-(d/e) + ((d/e)*c))*100)
  
  print(paste("Base 1000"))
  print(paste("The risk with control group is", v, "per 1000"))
  print(paste("The anticipated absolute effects is", y, "per 1000 (95% CI =", z, "to", x,")."))
  print(paste("The absolute risk difference is ", y - v, "per 1000 (95% CI =", z - v, "to", x-v,")."))
  print(paste(""))
  print(paste("Base 100"))
  print(paste("The risk with control group is ", t, "per 100"))
  print(paste("The anticipated absolute effects is", g, "per 100 (95% CI =", h, "to", i,")."))
  print(paste("The absolute risk difference is ", g - t, "per 100 (95% CI =", h - t, "to", i-t,")."))
  
}


abseff_hrsurv <- function(a, b, c, d) { 
  v <- round(d*1000)
  y <- round(exp(log(d)*a)*1000)
  z <- round(exp(log(d)*c)*1000)
  x <- round(exp(log(d)*b)*1000)
  t <- round(d*100)
  g <- round(exp(log(d)*a)*100)
  h <- round(exp(log(d)*c)*100)
  i <- round(exp(log(d)*b)*100)
  
  print(paste("Base 1000"))
  print(paste("The proportion of patients free of event in a certain time-point with control group is", v, "per 1000"))
  print(paste("The anticipated absolute effects is", y, "per 1000 (95% CI =", z, "to", x,")."))
  print(paste("The absolute risk difference is ", y - v, "per 1000 (95% CI =", z - v, "to", x-v,")."))
  print(paste(""))
  print(paste("Base 100"))
  print(paste("The proportion of patients free of event in a certain time-point with control group is", t, "per 100"))
  print(paste("The anticipated absolute effects is", g, "per 100 (95% CI =", h, "to", i,")."))
  print(paste("The absolute risk difference is ", g - t, "per 100 (95% CI =", h - t, "to", i-t,")."))
  
}


abseff_hrevent <- function(a, b, c, d) { 
  v <- round(d*1000)
  y <- round(1000 - (exp(log(1 - d)*a)*1000))
  z <- round(1000 - (exp(log(1 - d)*b)*1000))
  x <- round(1000 - (exp(log(1 - d)*c)*1000))
  t <- round(d*100)
  g <- round(100 - (exp(log(1 - d)*a)*100))
  h <- round(100 - (exp(log(1 - d)*b)*100))
  i <- round(100 - (exp(log(1 - d)*c)*100))
  
  print(paste("Base 1000"))
  print(paste("The risk of event in a certain time-point with control group is", v, "per 1000"))
  print(paste("The anticipated absolute effects is", y, "per 1000 (95% CI =", z, "to", x,")."))
  print(paste("The absolute risk difference is ", y - v, "per 1000 (95% CI =", z - v, "to", x-v,")."))
  print(paste(""))
  print(paste("Base 100"))
  print(paste("The risk of event in a certain time-point with control group is", t, "per 100"))
  print(paste("The anticipated absolute effects is", g, "per 100 (95% CI =", h, "to", i,")."))
  print(paste("The absolute risk difference is ", g - t, "per 100 (95% CI =", h - t, "to", i-t,")."))
  
}
