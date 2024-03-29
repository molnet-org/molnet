% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_documentations.R
\docType{data}
\name{metabolite_protein_interaction}
\alias{metabolite_protein_interaction}
\title{Metabolite protein interaction data}
\format{
A data frame with 3 columns.
\describe{
  \item{pubchemID}{Pubchem IDs defining interacting metabolites}
  \item{STRING_id}{STRING IDs defining interacting proteins}
  \item{combined_score}{Score describing the strength of metabolite-protein interaction}
}
}
\source{
STITCH DB: \url{http://stitch.embl.de/}

Pubchem IDs: \url{https://pubchem.ncbi.nlm.nih.gov}

STRING DB: \url{https://string-db.org/}
}
\usage{
metabolite_protein_interaction
}
\description{
Data frame providing interactions of metabolites and proteins. The data was taken
from the STITCH Database.
}
\keyword{datasets}
