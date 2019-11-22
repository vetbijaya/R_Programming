#matrix(data, nrow, ncol, byrow = FALSE)
#Arguments:
#data: The collection of elements that R will arrange into the rows and columns of the matrix
#nrow: Number of rows			
#ncol: Number of columns
#byrow: The rows are filled from the left to the right. We use `byrow = FALSE` (default values), if we want the matrix to be filled by the columns i.e. the values are filled top to bottom.	

# Construct a matrix with 5 rows that contain the numbers 1 up to 10 and byrow =  TRUE 
matrix_a <-matrix(1:10, byrow = TRUE, nrow = 5)
matrix_a

# Print dimension of a matrix with dim()
dim(matrix_a)

# Construct a matrix with 5 rows that contain the numbers 1 up to 10 and byrow =  FALSE
matrix_b <-matrix(1:10, byrow = FALSE, nrow = 5)
matrix_b
dim(matrix_b)

matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
matrix_c
dim(matrix_c)

# Concatenate c(1:5) to a matrix_a
matrix_a1 <-cbind(matrix_a, c(1:5))
# Check the dimension
dim(matrix_a1)
matrix_a1

# The dimension of the new matrix will be 4x6 with number from 1 to 24.
matrix_a2 <-matrix(13:24, byrow = FALSE, ncol = 3)
matrix_a2

matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
matrix_d <-cbind(matrix_a2, matrix_c)
dim(matrix_d)

matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
# Create a vector of three columns
add_row <- c(1:3)
# Append to the matrix
matrix_c <-rbind(matrix_b, add_row)
# Check the dimension
dim(matrix_c)

# Slicing the matrix
matrix_c[1,2]
matrix_c[1,]
matrix_c[,1]
