% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{convert_marker_dosages}
\alias{convert_marker_dosages}
\title{Convert marker dosages to the basic types.}
\usage{
convert_marker_dosages(dosage_matrix, outname, ploidy = 4, ploidy2 = NULL,
  parent1 = "P1", parent2 = "P2", marker_conversion_info = FALSE,
  log = NULL)
}
\arguments{
\item{dosage_matrix}{An integer matrix with markers in rows and individuals in columns.}

\item{outname}{output filename (deprecated for now)}

\item{ploidy}{ploidy level of the plant species. If parents have different ploidy level, ploidy of parent1.}

\item{ploidy2}{ploidy level of the second parent. NULL if both parents have the same ploidy level.}

\item{parent1}{Character string specifying the first (usually maternal) parentname.}

\item{parent2}{Character string specifying the second (usually paternal) parentname.}

\item{marker_conversion_info}{Logical. Should marker conversion information be returned?}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\value{
A modified dosage matrix. If \code{marker_swap_info = TRUE}, this function returns a list.
}
\description{
Convert marker dosages to the basic types which hold the same information and for which linkage calculations can be performed.
}
\examples{
data("ALL_dosages")
conv<-convert_marker_dosages(dosage_matrix=ALL_dosages)
}
