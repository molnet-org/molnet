% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipeline_functions.R
\name{make_connection}
\alias{make_connection}
\title{Specify connection between two individual layers}
\usage{
make_connection(from, to, connect_on, weight = 1, group = "both")
}
\arguments{
\item{from}{Character string referring to the name of the layer **from** which the connection
should be established}

\item{to}{Character string referring to the name of the layer **to** which the connection
should be established}

\item{connect_on}{Specifies how the two layers should be connected. This can be based on a
mutual ID or a table specifying interactions:
* __Mutual ID__: Character string specifying the name of an identifier that is present in
both layers (e.g., `NCBI ID` to connect proteins and mRNA).
* __Interaction table__: A table mapping two identifiers of two layers. The columns have
exactly the same names as the identifiers of the layers. Has to contain an additional column
specifying the weight between two components/nodes (see `weight` argument)}

\item{weight}{Specifies the edge weight between the layers. This can be supplied as a number
applied to every connection or a column of the interaction table:
* __Fixed weight__: number specifying the weight of every connection between the layers.
* __Based on interaction table__: Character string specifying the name of a column in the
table passed as the `by` parameter which is used as edge weight.}

\item{group}{Group for which to apply the connection. One of `both`, `1` or `2`.}
}
\value{
A named list (i.e., an inter-layer connection), that can be supplied to
\code{\link{start_pipeline}}.
}
\description{
Helper function to transform input data to a required pipeline input format. This helper
function creates a list that specifies the connection between two layers.
}
\details{
The connection can be based on IDs present in the identifiers of both layer or an interaction
table containing mapping the connections and edge weights.
Additionally, the supplied input is checked. Allows easy conversion of raw data into the
structure accepted by \code{\link{start_pipeline}}.

__IMPORTANT:__ if a connection is established based on \code{id} this ID has to be present in
the identifiers of both layers, have to be named identically and IDs have to be formatted
identically as these are matched by an inner join operation (refer to \code{\link{make_layer}}).
}
\examples{
data(metabolite_protein_interaction)
inter_layer_connections = list(
make_connection(from = 'mrna', to = 'protein', connect_on = 'gene_name'),
make_connection(from = 'protein', to = 'phosphoprotein', connect_on = 'gene_name'),
make_connection(from = 'protein', to = 'metabolite',
connect_on = metabolite_protein_interaction,
weight = 'combined_score'))

}
