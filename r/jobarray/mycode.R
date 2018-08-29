args <- commandArgs(trailingOnly = TRUE)

x <- rnorm(10, 0, 1)
y <- rnorm(10, 0, 2)
X <- cbind(x, y)   # the columns of X keep the names "x" and "y"
out <- apply(X, 2, mean)
name = paste("./output/Run",args[1],".txt", sep="")
write.table(out, file = name)
