# R-Decision Making
# R-if statement
x <- 40L
if(is.integer(x)){
  print("x is an integer")
}
# If...Else statement
x <- c("what", "is", "cloud")
if ("Cloud" %in% x){
  print("Cloud is good")
}else{
  print("Cloud is not good")
}
# if...elseif...else statement
x <- c("what", "is", "cloud")
if ("Cloud" %in% x){
  print("Cloud is good for first use")
}else if ("cloud" %in% x){
  print("cloud is good for second use")
}else{
  print("No cloud is good to use")
}
# switch statement
x <- switch(
  2,
  "first",
  "second",
  "third",
  "fourth"
)
print(x)