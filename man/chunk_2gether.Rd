% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/network_reduction.R
\name{chunk_2gether}
\alias{chunk_2gether}
\title{Create chunks from two vectors for parallel computing}
\source{
modified from: https://stackoverflow.com/questions/3318333/split-a-vector-into-chunks
}
\usage{
chunk_2gether(x, y, n)
}
\arguments{
\item{x, y}{vectors}

\item{n}{length of chunks}
}
\value{
A list of lists. Each second level list contains a list of chunks of length n of each
input vector.
}
\description{
(INTERNAL)
}
