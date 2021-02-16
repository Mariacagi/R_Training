# 1 - Write a R program to create an empty data frame.

df = data.frame(col1 = integer(), col2 = double())
                
dataframe_empty <- function(df01) {
  return(str(df01))
}

dataframe_empty(df)                
                

# 2 - Write a R program to create a data frame from four given vectors.

dataframe_empty <- function(elem01, elem02, elem03, elem04) {
  
  test01 <- data.frame(elem01, elem02, elem03, elem04)  
  return(test01)
}

dataframe_empty(c("M","H","S","L"), c("Mariposa", "Hormiga", "Saltamontes", "Libelula"), 
                c("R","N","V","A"), c("Rosa", "Negro", "Verde", "Azul")) 


# 3 - Write a R program to get the structure of a given data frame.

dataframe_str <- function(elem01, elem02, elem03, elem04) {
  
  test01 <- data.frame(elem01, elem02, elem03, elem04)  
  return(str(test01))
}

dataframe_str(c("M","H","S","L"), c("Mariposa", "Hormiga", "Saltamontes", "Libelula"), 
                c("R","N","V","A"), c("Rosa", "Negro", "Verde", "Azul")) 


# 4 - Write a R program to get the statistical summary and nature of the data of a given data frame.

dataframe_summary <- function(elem01, elem02, elem03, elem04) {
  
  test01 <- data.frame(elem01, elem02, elem03, elem04)  
  return(summary(test01))
}

dataframe_summary(c("M","H","S","L"), c("Mariposa", "Hormiga", "Saltamontes", "Libelula"), 
              c("R","N","V","A"), c("Rosa", "Negro", "Verde", "Azul")) 


# 5 - Write a R program to extract specific column from a data frame using column name. (NO FUNCIONA)

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                  col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


dataframe_column <- function(df01, name_column1, name_column2) {
  
  test01 <- data.frame(df01[[name_column1]], df01[[name_column2]]) 
  return(test01)
}

dataframe_column(df1, "col3", "col4") 


# 6 - Write a R program to extract first two rows from a given data frame.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


dataframe_rows <- function(df01, n1, n2) {
  
  test01 <- df01[n1:n2,]
  return(test01)
}

dataframe_rows(df1, 1, 2)



# 7 - Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


dataframe_rows_cols <- function(df01, n1, n2, n3, n4) {
  
  test01 <- df01[n1:n2,n3:n4]
  return(test01)
}

dataframe_rows_cols(df1, 3, 5, 1, 3)


# 8 - Write a R program to add a new column in a given data frame.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


dataframe_addcol <- function(df01, name_col, inside_col) {
  
  df01[[name_col]] = inside_col
  return(df01)
}

dataframe_addcol(df1, "col5", c(TRUE, FALSE, TRUE, TRUE))


# 9 - Write a R program to add new row(s) to an existing data frame.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))

df2 = data.frame(col1 = c("A"), col2 = c("Araña"), col3 = c("N"), col4 = c("Negro"))


dataframe_addrow <- function(df01, df02) {
  
  test01 <- rbind(df01, df02)
  return(test01)
}

dataframe_addrow(df1, df2)


# 10 - Write a R program to drop column(s) by name from a given data frame. (NO FUNCIONA)

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


dataframe_drop_cols <- function(df01, select_drops) {
  
  test01 <- subset(df01, select = -c(col2, col4))
  return(test01)

}

dataframe_drop_cols(df1)

# 11 - Write a R program to drop row(s) by number from a given data frame.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


dataframe_drop_rows <- function(df01, rows) {
  
  test01 <- df01[rows, ]
  return(test01)
}

dataframe_drop_rows(df1, rows = -c(2, 3))

# 12 - Write a R program to sort a given data frame by multiple column(s).

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"),
                 col3 = c("R","N","V","A"), col4 = c("Rosa", "Negro", "Verde", "Azul"))


test01 <- df1[with(df1, order(col1, col3)), ]
print(test01)


# 13 - Write a R program to create inner, outer, left, right join(merge) from given two data frames.

df1 = data.frame(col1 = c("M","H","S","L"), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula"))
df2 = data.frame(col1 = c("R","N","V","A"), col2 = c("Rosa", "Negro", "Verde", "Azul"))

dataframe_inner <- function(df01, df02, n, col_1) {
  
  if (n == 1) {
    result <- merge(df01, df02, by = col_1, all.x = TRUE)
    return(result)
  }
  else if (n == 2) {
    result <- merge(df01, df02, by = col_1, all.y = TRUE)
    return(result)
  }
  else if (n == 3) {
    result = merge(df01, df02, by = col_1, all = TRUE)
    return(result)
  }
  else if (n == 4) {
    result = merge(df01, df02, by = NULL)
    return(result)
  }
}

dataframe_inner(df1, df2, n<-3, "col1")


# 14 - Write a R program to replace NA values with 3 in a given data frame. (NO FUNCIONA)

df1 = data.frame(col1 = c("M","H","S","L", NaN), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula", NaN),
                 col3 = c("R","N","V","A", NaN), col4 = c("Rosa", "Negro", "Verde", "Azul", "Amarillo"))


dataframe_replace_na <- function(df01) {
  
  df01[is.na(df01)] = 3
  
  return(df01)
}

dataframe_replace_na(df1)



# 15 - Write a R program to change a column name of a given data frame.

df1 = data.frame(col1 = c("M","H","S","L", NaN), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula", NaN),
                 col3 = c("R","N","V","A", NaN), col4 = c("Rosa", "Negro", "Verde", "Azul", "Amarillo"))


dataframe_change_name <- function(df01, col_tochange, new_name) {
  
  colnames(df01)[which(names(df01) == col_tochange)] = new_name
  
  return(df01)
}

dataframe_change_name(df1,"col1", "col_prueba")


# 16 -  Write a R program to change more than one column name of a given data frame.

df1 = data.frame(col1 = c("M","H","S","L", NaN), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula", NaN),
                 col3 = c("R","N","V","A", NaN), col4 = c("Rosa", "Negro", "Verde", "Azul", "Amarillo"))


dataframe_change_names <- function(df01, col_tochange01, new_name01, col_tochange02, new_name02) {
  
  colnames(df01)[which(names(df01) == col_tochange01)] = new_name01
  colnames(df01)[which(names(df01) == col_tochange02)] = new_name02
  
  return(df01)
}

dataframe_change_names(df1,"col1", "col_prueba", "col3", "col_prueba2")


# 17 - Write a R program to select some random rows from a given data frame.

df1 = data.frame(col1 = c("M","H","S","L", NaN), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula", NaN),
                 col3 = c("R","N","V","A", NaN), col4 = c("Rosa", "Negro", "Verde", "Azul", "Amarillo"))


dataframe_random_rows <- function(df01) {
  
  result <- (df01[sample(nrow(df01), 3),])
  return(result)
}
  
dataframe_random_rows(df1)


# 18 - Write a R program to reorder an given data frame by column name.

df1 = data.frame(col1 = c("M","H","S","L", NaN), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula", NaN),
                 col3 = c("R","N","V","A", NaN), col4 = c("Rosa", "Negro", "Verde", "Azul", "Amarillo"))


dataframe_random_rows <- function(df01, vector_cols) {
  
  result <- df01[vector_cols]
  return(result)
}

dataframe_random_rows(df1, c("col1","col3", "col2"))


# 19 - Write a R program to compare two data frames to find the row(s) in first data frame that are not present in second data frame.

df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)

df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)


dataframe_setdiff <- function(df01, df02) {
  
  result <- setdiff(df01,df02)
  return(result)
}

dataframe_setdiff(df_90, df_91)


# 20 - Write a R program to find elements which are present in two given data frames.

df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)

df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)


dataframe_two <- function(df01, df02) {
  
  result <- intersect(df01,df02)
  return(result)
}

dataframe_two(df_90, df_91)



# 21 - Write a R program to find elements come only once that are common to both given data frames.

df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)

df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)


dataframe_union <- function(df01, df02) {
  
  result <- union(df01,df02)
  return(result)
}

dataframe_union(df_90, df_91)

# 22 - Write a R program to save the information of a data frame in a file and display the information of the file.

df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)


dataframe_two <- function(df01) {
  
  save(df01,file="data.rda")
  load("data.rda")
  result <- file.info("data.rda") 
  return(result)
}

dataframe_two(df_91)


# 23 - Write a R program to count the number of NA values in a data frame column. (NO FUNCIONA)


df1 = data.frame(col1 = c("M","H","S","L", NaN), col2 = c("Mariposa", "Hormiga", "Saltamontes", "Libelula", NaN),
                 col3 = c("R","N","V","A", NaN), col4 = c("Rosa", "Negro", "Verde", "Azul", "Amarillo"))

dataframe_isna <- function(df01, col_name) {
  
  result <- sum(is.na(df01[[col_name])) 
  return(result)
}

dataframe_isna(df1, "col1")

# 24- Write a R program to create a data frame using two given vectors and display the duplicated elements and unique rows of the said data frame.

a = c(10,20,10,10,40,50,20,30)
b = c(10,30,10,20,0,50,30,30)


dataframe_two_vectors <- function(v01, v02, n) {
  
  df01 <- data.frame(v01,v02)
  
  if (n == 1) {
    result <- duplicated(df01)
  }
  else if (n ==2) {
    result <- unique(df01)
  }
  
  return(result)
}

dataframe_two_vectors(a, b, 2)


# 25 - Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or not? Order the entire data frame by the first and second column.

df1 = airquality

print(class(df1))

result = df1[order(df1[,1]),]
print(result)


# 26 - Write a R program to call the (built-in) dataset airquality. Remove the variables 'Solar.R' and 'Wind' and display the data frame.

df1 = airquality

df1[,c("Solar.R")]=NULL
df1[,c("Wind")]=NULL

df1

