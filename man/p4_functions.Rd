% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/p4_functions.R
\name{p4_functions}
\alias{p4_functions}
\alias{p4_1.0_1.0}
\alias{p4_1.0_1.1}
\alias{p4_1.0_1.2}
\alias{p4_1.0_1.3}
\alias{p4_1.0_2.0}
\alias{p4_1.0_2.1}
\alias{p4_1.0_2.2}
\alias{p4_1.1_1.1}
\alias{p4_1.1_1.2}
\alias{p4_1.1_1.3}
\alias{p4_1.1_2.2}
\alias{p4_1.2_1.2}
\alias{p4_1.2_2.1}
\alias{p4_1.2_2.2}
\alias{p4_1.3_1.2}
\alias{p4_1.3_1.3}
\alias{p4_1.3_2.1}
\alias{p4_1.3_2.2}
\alias{p4_2.0_1.1}
\alias{p4_2.0_1.2}
\alias{p4_2.0_1.3}
\alias{p4_2.0_2.0}
\alias{p4_2.0_2.1}
\alias{p4_2.0_2.2}
\alias{p4_2.1_2.2}
\alias{p4_2.2_2.2}
\title{Calculate recombination frequency, LOD and log-likelihood from frequency tables in a preferential pairing tetraploid}
\usage{
p4_1.0_1.0(x, p1, p2, ncores = 1)

p4_1.0_1.1(x, p1, p2, ncores = 1)

p4_1.0_1.2(x, p1, p2, ncores = 1)

p4_1.0_1.3(x, p1, p2, ncores = 1)

p4_1.0_2.0(x, p1, p2, ncores = 1)

p4_1.0_2.1(x, p1, p2, ncores = 1)

p4_1.0_2.2(x, p1, p2, ncores = 1)

p4_1.1_1.1(x, p1, p2, ncores = 1)

p4_1.1_1.2(x, p1, p2, ncores = 1)

p4_1.1_1.3(x, p1, p2, ncores = 1)

p4_1.1_2.2(x, p1, p2, ncores = 1)

p4_1.2_1.2(x, p1, p2, ncores = 1)

p4_1.2_2.1(x, p1, p2, ncores = 1)

p4_1.2_2.2(x, p1, p2, ncores = 1)

p4_1.3_1.2(x, p1, p2, ncores = 1)

p4_1.3_1.3(x, p1, p2, ncores = 1)

p4_1.3_2.1(x, p1, p2, ncores = 1)

p4_1.3_2.2(x, p1, p2, ncores = 1)

p4_2.0_1.1(x, p1, p2, ncores = 1)

p4_2.0_1.2(x, p1, p2, ncores = 1)

p4_2.0_1.3(x, p1, p2, ncores = 1)

p4_2.0_2.0(x, p1, p2, ncores = 1)

p4_2.0_2.1(x, p1, p2, ncores = 1)

p4_2.0_2.2(x, p1, p2, ncores = 1)

p4_2.1_2.2(x, p1, p2, ncores = 1)

p4_2.2_2.2(x, p1, p2, ncores = 1)
}
\arguments{
\item{x}{A frequency table of the different classes of dosages in the progeny. The column names start with \code{"n_"}. Followed by the dosage of the first marker and then of the second.}

\item{p1}{Preferential pairing parameter for parent 1, numeric value in range 0 <= p1 < 2/3}

\item{p2}{Preferential pairing parameter for parent 2, numeric value in range 0 <= p2 < 2/3}

\item{ncores}{Number of cores to use for parallel processing (deprecated).}
}
\value{
A list with the following items:
\item{r_mat}{A matrix with recombination frequencies for the different phases}
\item{LOD_mat}{A matrix with LOD scores for the different phases}
\item{logL_mat}{A matrix with log likelihood ratios for the different phases}
\item{phasing_strategy}{A character string specifying the phasing strategy. \code{"MLL"} for maximum likelihood en \code{"MINR"} for minimum recombination frequency.}
\item{possible_phases}{The phases between markers that are possible. Same order and length as column names of output matrices.}
}
\description{
This group of functions is called by \code{\link{linkage}}.
}
