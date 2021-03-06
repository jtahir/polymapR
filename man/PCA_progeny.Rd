% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{PCA_progeny}
\alias{PCA_progeny}
\title{Perform a PCA on progeny}
\usage{
PCA_progeny(dosage_matrix, highlight = NULL, colors = NULL, log = NULL)
}
\arguments{
\item{dosage_matrix}{An integer matrix with markers in rows and individuals in columns.}

\item{highlight}{A list of character vectors specifying individual names that should be highlighted}

\item{colors}{Highlight colors. Vector of the same length as \code{highlight}.}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\description{
Principal component analysis in order to identify individuals that deviate from the population.
}
\details{
Missing values are imputed by taking the mean of marker dosages per marker.
}
\examples{
data("ALL_dosages")
PCA_progeny(dosage_matrix=ALL_dosages, highlight=list(c("P1", "P2")), colors="red")
}
