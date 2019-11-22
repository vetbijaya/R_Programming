# Vectors - Numerical
vec_num <- c(10,20,30)
vec_num

# Characters
vec_char <- c("a","b", "c")
vec_char

# Boolean
vec_bool <- c(TRUE, FALSE, TRUE)
vec_bool

# Create the vectors for arithmatic calculation
vect_1 <- c(2, 4, 6)
vect_2 <- c(1, 3, 5)
sum_vect <- vect_1 + vect_2
#Print out total vectors
sum_vect

# Slice the first five rows of the vector
slice_vector <- c(1,2,3,4,5,6,7,8,9,10)
slice_vector[1:5]

#Faster way to create adjacent values
c(1:10)

# Arithmetc Operators
# Addition
5+6
# Substraction
50-10
# Multiplication
10*3
# Create a logical vector from 1 to 10
logical_vector <- c(1:10)
logical_vector>5

# Print value strictly above 5
logical_vector [(logical_vector>5)]

# Print 5 and 6
logical_vector[(logical_vector>4) & (logical_vector<7)]


x <- 5
y <- 7
!(!(x < 4) & !!! (y>12))

# li_df is pre-loaded in your workspace

# Select the second column, named day2, from li_df: second
second <- li_df$day2

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
sum(extremes)

# Solve it with a one-liner
sum(li_df$day2 > 25 | li_df$day2 < 5)
