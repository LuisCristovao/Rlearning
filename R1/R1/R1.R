a<-c(2.0,1.0,3.3)
print(a)
print(class(a))
bla<-c('hi','there','how', 'are','you','?')
print(bla)
print(class(bla))
b<-0:5
print(b)
bc<-as.character(b)
print(bc)
bc
###################################################### 
my_list <- list(22, "ab", TRUE, 1 + 2i)
my_list[[1]]

my_matrix <- matrix(1:6, nrow=3, ncol=2)
my_matrix
my_matrix[,1]

df <- data.frame(name = c("ash","jane","paul","mark"), score = c(67,56,87,91))
df
df[['name']]
df[,1]
df[1,]
df[,2]
df[['score']]
#######################################################

age<-c(1:6)
age
dim(age)
dim(age)<-c(2,3)
age
dim(age)

x <- c(1, 2, 3, 4, 5, 6)
y <- c(10,20, 30, 40, 50, 60)
xy<-cbind(x,y)
xy
####################################################

#initialize a variable
N <- 10

#check if this variable * 5 is > 40
if (N * 5 > 40){
  print("This is easy!")
} else {
  print ("It's not easy!")
}


##################################################
for(i in 1:4){
  print (y[i])
}
y[1]
