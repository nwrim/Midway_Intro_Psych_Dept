mat0 <- matrix(c(1:15), nrow=5, ncol=3)
mat1 <- matrix(c(1:15), nrow=3, ncol=5)

result <- mat0 %*% mat1

print(result)
