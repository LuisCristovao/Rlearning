library(parallel)


# Calculate the number of cores
no_cores <- detectCores() - 1
print(no_cores)
# Initiate cluster
cl <- makeCluster(no_cores)

Hello<-function(x){
  print(paste0("Hello",x))
}


parLapply(cl, 1:100,fun = Hello)

stopCluster(cl)
