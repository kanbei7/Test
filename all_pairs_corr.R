my.data <- read.table ("gene_expression_n438x978.txt", sep="\t", header=T)
print (dim (my.data))
dimnames(my.data)[[1]] <- my.data[,1]
my.data <- my.data[, -1]


curr.max <- -1
curr.min <- 1
for (i in 1:ncol(my.data)) {
	ret.cor <- apply (my.data[, -i], 2, function(x) { cor(my.data[, i], x) })
	curr.max <- max(c(curr.max, ret.cor))
	curr.min <- min (c(curr.min, ret.cor))
}

print (paste ("Max correlation = ", curr.max, sep=""))
print (paste ("Min correlation = ", curr.min, sep=""))
