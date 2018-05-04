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
library(compare)
ex1 <- read_excel("./excel/Bla.xlsx")
ex2 <- read_excel("./excel/Bla.xlsx")
ex2[1,3]=0
ex3 <- read_excel("./excel/Bla.xlsx")
comparison <- compare(ex1,ex2,allowAll=TRUE)
comparison2 <- compare(ex1,ex3,allowAll=TRUE)
print(comparison)
print(comparison2)
###########################################################
ex1 <- as.data.frame(read_excel("./excel/Bla.xlsx"))
print(ex1$V1)
plot(ex1$V1,ex1$V2)
plot(1:100,1:100)
plot()
##############################################
MyClass <- setRefClass(
  "MyClass",
  fields = list(
    x = "ANY",
    y = "numeric",
    z = "character"
  ),
  methods = list(
    initialize = function(x = NULL, y = 1:10, z = letters)
    {
      "This method is called when you create an instance of the class."
      x <<- x
      y <<- y
      z <<- z
      print("You initialized MyClass!")
    },
    hello = function()
    {
      "This method returns the string 'hello'."
      "hello"
    },
    doubleY = function()
    {
      2 * y
    },
    printInput = function(input)
    {
      if(missing(input)) stop("You must provide some input.")
      print(input)
    }
  )
)

obj1 <- MyClass$new()
obj1$hello()
obj1$doubleY()

obj2 <- MyClass$new(x = TRUE, z = "ZZZ")
obj2$printInput("I'm printing a line!")

###############################################################
library(readxl)
PlotClass <- setRefClass(
  "PlotClass",
  fields = list(
    path = "character",
    column = "character",
    end_index = "numeric",
    actual_index = "numeric",
    data = "ANY",
    col_names="ANY",
    step = "numeric"
  ),
  methods = list(
    initialize=function(path_,column_,step_){
      path<<-path_
      column<<-column_
      step<<-step_
      actual_index<<-1
      end_index<<-step
      ReadDF()
    },
    ReadDF=function(){
      data<<-as.data.frame(read_excel(path,sheet = 1,cell_rows(actual_index:end_index)))
      col_names<<-colnames(data) 
      actual_index<<-end_index
      end_index<<-end_index+step
    },
    UpdataDF=function(){
      new_data<-as.data.frame(read_excel(path,sheet = 1,cell_rows(actual_index:end_index),col_names = col_names))
      if(length(new_data)>0){
        actual_index <<- end_index
        end_index<<-end_index+step
        data <<- rbind(new_data, data)  
      }
      
    },
    Plot=function(){
      plot(1:length(data[[column]]),data[[column]],type = 'l',xlab = "time",ylab = column)
    }
  )
)
obj=PlotClass$new("./excel/Bla.xlsx","V1",10)
obj$Plot()
obj2=PlotClass$new("./excel/Bla.xlsx","V2",20)
obj2$Plot()
obj$UpdataDF()
obj$Plot()
###String Compare################################
st1="Cancel"
st2="Delete"
st3="Cancel"
print(st1==st2)
print(st1==st3)