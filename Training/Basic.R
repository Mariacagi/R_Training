# 3 - Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91.

seq_mean_sum <- function(seq1, seq2, mean1, mean2, sum1, sum2){
  result1 <- seq(seq1,seq2)

  result2 <- mean(mean1:mean2)

  result3 <- sum(sum1:sum2)
  
  return (list(result1, result2, result3))
  
}  
  
seq_mean_sum(20, 50, 20, 60, 51, 90)


# 4 - Write a R program to create a vector which contains 10 random integer values between -50 and +50.


vector_random <- function(n1, n2, random1){
  result1 <- sample(-50:50, 10, replace=TRUE)
  
  return (result1)
}

vector_random(-50, 50, 10)


# 5 -  Write a R program to get the first 10 Fibonacci numbers.

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]

print(Fibonacci)


#  Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.

