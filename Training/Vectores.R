# VECTOR EXERCISE
# 3 - Write a R program to append value to a given empty vector.

vector <- c()
values <- c(seq(1, 10))
for (i in 1:length(values))
  vector[i] <- values[i]
print(vector)

# 6 - Write a R program to find Sum, Mean and Product of a Vector.

operations <- function(vec_01) {
  Sum_01 <- sum(vec_01)
  Mean_01 <- mean(vec_01)
  Product_01 <- prod(vec_01)
  return(c(Sum_01, Mean_01, Product_01))
}

operations(c(10,20))

# 7 - Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.

operations2 <- function(vec_01) {
  Sum_01 <- sum(vec_01, na.rm=TRUE)
  Mean_01 <- mean(vec_01, na.rm=TRUE)
  Product_01 <- prod(vec_01, na.rm=TRUE)
  return(c(Sum_01, Mean_01, Product_01))
}

operations2(c(10,20, NaN, NA))

# 8 - Write a R program to find the minimum and the maximum of a Vector.

min_and_max <- function(vec_01) {
  Max_01 <- max(vec_01)
  Min_01 <- min(vec_01)
  return(c(Max_01, Min_01))
}

min_and_max(c(10,20, NaN, NA))

# 9 - Write a R program to sort a Vector in ascending and descending order.

ascending_descending <- function(vec_01) {
  asc_01 <- sort(vec_01)
  des_01 <- sort(vec_01, decreasing=TRUE)
  return(c(asc_01, des_01))
}

ascending_descending(c(10,20, NaN, NA))

# 10 - Write a R program to test whether a given vector contains a specified element.

testing_element <- function(vec_01, element_to_test) {
  test_01 <- is.element(element_to_test, vec_01)

  return(test_01)
}

testing_element(c(10,20, NaN, NA), 10)


# 12 - Write a R program to access the last value in a given vector. 

last_element <- function(vec_01) {
  test_01 <- tail(vec_01, n=1)
  
  return(test_01)
}

last_element(c(10,20, NaN, NA, 5))


# 13 - Write a R program to find second highest value in a given vector.

second_element <- function(vec_01) {
  l = length(vec_01)
  test_01 <- sort(vec_01, partial = l-1)[l-1]
  
  return(test_01)
}

second_element(c(10,20, 5))


# 14 - Write a R program to find nth highest value in a given vector.

highest_element <- function(vec_01, x) {
  test_01 <- sort(vec_01, decreasing = TRUE)[x]
  
  return(test_01)
}

highest_element(c(10,20, 5), 3)


# 16 - Write a R program to convert given dataframe column(s) to a vector. (NO FUNCIONA)

convert_dataframe <- function(data_cols_01, data_cols_02) {
  dataframe_01 <- data.frame(col1=head(data_cols_01, n=1):tail(data_cols_01, n=1), col2=head(data_cols_02, n=1):tail(data_cols_02, n=1))
  
  return(dataframe_01)
}

convert_dataframe(c(10,20, 5), c(5, 20, 15))

# 20 - Write a R program to reverse the order of given vector.

reverse_vector <- function(vec_01) {
  test_01 <- rev(vec_01)
  
  return(test_01)
}

reverse_vector(c(10,20, 5))

# 23 - Write a R program to convert two columns of a data frame to a named vector.

df_insectos = data.frame(ABREVIATURA = c("M","H","S","L"), 
                TIPO = c("Mariposa", "Hormiga", "Saltamontes", "Libelula")
)

df_insectos

convert_vector <- function(df, col1, col2) {
test_01 <- setNames(as.character(df[[col1]]), df[[col2]])
  
  return(test_01)
}

convert_vector(df = df_insectos, col1 = "ABREVIATURA", col2 = "TIPO")
