% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pfa.gbm.R
\name{pfa.gbm.extractTree}
\alias{pfa.gbm.extractTree}
\title{pfa.gbm.extractTree}
\usage{
pfa.gbm.extractTree(gbm, whichTree = 1)
}
\arguments{
\item{gbm}{an object of class "gbm"}

\item{whichTree}{the number of the tree to extract}
}
\value{
tree that is extracted from gbm object
}
\description{
Extracts a tree from a forest made by the gbm library.
}
\examples{
X1 <- runif(100)
X2 <- rnorm(100)
Y <- rexp(100,5) + 5 * X1 - 4 * X2 
Y <- Y > 0
zz <- gbm(Y ~ X1 + X2)
zz$problemType <- "Classification"
zz1 <- pfa.gbm.extractTree(zz)
}

