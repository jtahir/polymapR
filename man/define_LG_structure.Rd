% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exported_functions.R
\name{define_LG_structure}
\alias{define_LG_structure}
\title{Generate linkage group and homologue structure of SxN markers}
\usage{
define_LG_structure(cluster_list, LOD_chm, LOD_hom, LG_number, log = NULL)
}
\arguments{
\item{cluster_list}{A list of cluster_stacks, the output of \code{cluster_SN_markers}.}

\item{LOD_chm}{Integer. The LOD threshold specifying at which LOD score the markers divide into chromosomal groups}

\item{LOD_hom}{Integer. The LOD threshold specifying at which LOD score the markers divide into homologue groups}

\item{LG_number}{Integer. Expected number of chromosomes (linkage groups). Note that if this number of clusters are not
present at LOD_chm, the function will abort.}

\item{log}{Character string specifying the log filename to which standard output should be written. If NULL log is send to stdout.}
}
\value{
A data.frame with markers classified by homologue and linkage group.
}
\description{
Function which organises the output of \code{cluster_SN_markers} into a data frame of numbered linkage groups and homologues.
Only use this function if it is clear from the graphical output of \code{cluster_SN_markers} that there are LOD scores present which define both chromosomes (lower LOD)
and homologues (higher LOD).
}
\examples{
data("P1_homologues")
ChHomDf<-define_LG_structure(cluster_list=P1_homologues,LOD_chm=3.5,LOD_hom=5,LG_number=5)
}
