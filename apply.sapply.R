m <- matrix(data=cbind(rnorm(30, 0), rnorm(30, 2), rnorm(30, 5)), nrow=30, ncol=3)
apply(m, 1, mean)
apply(m, 2, mean)
apply(m, 2, function(x) length(x[x<0]))
apply(m, 2, function(x) is.matrix(x))
apply(m, 2, function(x) is.vector(x))
apply(m, 2, is.vector)
apply(m, 2, function(x) mean(x[x>0]))

# Here we will use sapply, which works on a list or vector of data
sapply(1:3, function(x) x^2)

#lapply is very similar, however it will return a list rather than a vector
lapply(1:3, function(x) x^2)

#Passing simplify=FALSE to sapply will also give you a list
sapply(1:3, function(x) x^2, simplify=F)

#And you can use unlist with lapply to get a vector
unlist(lapply(1:3, function(x) x^2))


sapply(1:3, function(x) mean(m[,x]))
sapply(1:3, function(x, y) mean(y[,x]), y=m)

