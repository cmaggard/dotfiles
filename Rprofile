loadTSV <- function(filename) {
  read.table(filename, header=TRUE, sep="\t")
}

analyzeCol <- function(vec) {
  table(vec, useNA="always")
}

nPr <- function(n, r) { return(factorial(n)/factorial(n - r)) }
nCr <- function(n, r) { return(nPr(n,r)/factorial(r)) }
