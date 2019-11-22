# R-loops
# Repeat loop
v <- c("Hello", "loop")
count <- 2
repeat {
  print (v)
  count <- count+1
  
  if (count > 5) {
    break # loop control statement-break
  }
}
# while loop
v <- c("Hello", "while loop")
cnt <-2
while(cnt < 7 ){
  print(v)
  cnt = cnt +1
}
# For loop
v <- LETTERS[1:4]
for (i in v) {
  print(i)
}
#loop control statement-next
v <-LETTERS[1:6]
for (i in v) {
  if (i=="D"){
    next
  }
  print(i)
}

