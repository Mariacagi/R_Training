# 1 - Write a R program to create a list containing strings, numbers, vectors and a logical values.

list_elements <- function(elem01, elem02, elem03, elem04) {
  test_01 <- list(elem01, elem02, elem03, elem04)
  
  return(test_01)
}

list_elements("Python", c(5, 7, 9, 11), TRUE, 125)


# 8 - Write a R program to merge two given lists into one list.

merge_list <- function(list01, list02) {
  test_01 <- c(list01, list02)
  
  return(test_01)
}

merge_list( list("M","H","S","L"), list("Mariposa", "Hormiga", "Saltamontes", "Libelula"))


# 10 - Write a R program to create a list of dataframes and access each of those dataframes from the list.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"))
df2 = data.frame(col1 = c("R","N","V","A"), col2 = c("Rosa", "Negro", "Verde", "Azul"))


merge_dataframes <- function(df01, df02) {
  test_01 <- list(df01, df02)
  
  return(test_01)
}

merge_dataframes(df1, df2)


# 11 - Write a R program to count number of objects in a given list.

count_list <- function(list01) {
  test_01 <- length(list01)
  
  return(test_01)
}

count_list( list("M","H","S","L"))

# 12 - Write a R program to convert a given dataframe to a list by rows.

df2 = data.frame(col1 = c("R","N","V","A"), col2 = c("Rosa", "Negro", "Verde", "Azul"))

frame_to_list <- function(df01) {
  test_01 <- split(df01, seq(nrow(df01)))
  
  return(test_01)
}

frame_to_list(df2)

# 14 - Write a R program to assign NULL to a given list element.


assign_null <- function(list01, n) {
  
  list01[[n]] <- list(NULL)
  
  return(list01)
}

assign_null( list("M","H","S","L"), 2)

