# Functions are created using function() directive and are stored as R objects
# Functions in R are "first class objects"
#syntax: f <- function(<arguments>){ do something interesting }
f <- function(a,b){
  a^2
}
f(2)

# create a function to print squares of numbers in sequence
new.function <- function(x){
  for (i in 1:x) {
    y <- i^2
    print(y)
  }
}

#calling a user defined function new.function supplying 6 as an argument
new.function(6)

#calling a function without an argument
new.function <- function(){
  for (i in 1:5) {
    print(i^2)
  }
}

# call the function without supplying an argument
new.function()

# Create a function with arguments values(by position and by name)
# create a function with arguments
test.function <- function(x, y, z) {
  result <- x * y + z
  print(result)
}

# call the function by position of arguments
test.function(2,4,6)

#call the function by names of the arguments
test.function(x = 5, y= 10, z = 30)

# calling a function with default arguments
# create a function with arguments
test.function <- function(x=3, y=6) {
  return <- x * y
  print(return)
}

# call the function without giving any argument
test.function()

# call the function with giving new values of the argument
test.function(5,10)

# lazy evaluation of function
# create a function with arguments
test.function <- function(x, y) {
  print(x^3)
  print(x)
  print(y)
}

# Evaluate the function without aupplying one of the arguments
test.function(8) # it gives an error printing y: "y" is missing with no default
