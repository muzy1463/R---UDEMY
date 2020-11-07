
#rm removes the variable

rm(answer)
x <- rnorm(1) #we want to generate 1 number. This will generate a number according to the normal distribution.

if(x > 1){
  
  answer <- "Greater than 1"
  print(answer)
  
} else {
  
  if(x >= -1){
    answer <- "Between -1 and 1"
    print(answer)
  }
  
  else {
    
    answer <- "Less than -1"
    print(answer)
  }
  
}

#orrr in a much efficient way with ELSE IF:

x <- rnorm(1)

if(x > 1){
  
  answer <- "Greater than 1"
  print(answer)
  
} else if(x >= -1) {
    answer <- "Between -1 and 1"
    print(answer)
  } else {
    
    answer <- "Less than -1"
    print(answer)
  }
  



