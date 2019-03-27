rm(iterations)
rm(random_numbers)
rm(in_range)
rm(result)

iterations <- 1000

random_numbers <- rnorm(iterations)

filter_random_numbers <- mapply(function(X) {if (X > -1 && X < 1) return (TRUE) else return(FALSE)}, random_numbers)

in_range <- random_numbers[filter_random_numbers == TRUE]

result = (length(in_range) / iterations) * 100

print(paste(c(result, "%"), collapse = ""))