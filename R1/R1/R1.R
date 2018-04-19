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
df[1:2,]
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

################################
hi<-c(1:10)
buf<-c()
for (i in hi){
  print(i)
  if(hi[i]>5){
    buf<-c(buf,hi[i])
  }
}
print(buf)
###################
#strings manipulation
text<-'Hello World'
text2<-'my name is Tiago'
con<-paste0(text,text2)
print(con)
sp<-strsplit(text,split = 'l')
print(sp[[1]][1])
#######################
count<-0
count<-count+1
count
###########################
bla<-"AA"
if(class(bla)=="character"){
  print("it is character!")
}
n<-32
if(class(n)=="numeric"){
  print("it is a number!")
}

if(bla!=""){
  print('not empty')
}
######################################
df<-data.frame(
                  ID_UserType=c(1,2,3),
                  Description=c('Admin','Developer','Guest')
                )
vals<-c(1,2,3)

name<-which(df[['ID_UserType']]==3)
print(df[['Description']][name])
###########################################
nrows<-100
rows_per_turn<-10
n_iterations<-nrows/rows_per_turn
print(n_iterations)
for(i in 1:n_iterations){
  start_index<-(i-1)*rows_per_turn+1
  final_index<-rows_per_turn*i  
  for(j in start_index:final_index){
    print(j)
  }
  print("Next Batch!!!!!!!!!!!!")
}
####################################################
library(readxl)
ex <- read_excel("./excel/Bla.xlsx")
print(ex)
