y = 10000000
x = rnorm(y)
counter = 0

for(i in x){
  
  if(i < 1){
    
    if(i>-1){
      
      counter <- counter+1
      
    }
      
    
  }
  
}

mean <- counter/y

if(mean>0.682){
  
  print("mean > ex")
  
}else{
  print("ex>mean")
}


