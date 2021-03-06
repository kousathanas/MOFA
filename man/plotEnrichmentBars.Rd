% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FSEA.R
\name{plotEnrichmentBars}
\alias{plotEnrichmentBars}
\title{Barplot of Feature Set Enrichment Analysis results}
\usage{
plotEnrichmentBars(fsea.results, alpha = 0.05)
}
\arguments{
\item{fsea.results}{output of \link{runEnrichmentAnalysis} function}

\item{alpha}{FDR threshold for calling enriched feature sets. Default is 0.05}
}
\value{
a \link{ggplot2} object
}
\description{
Method to generate a barplot with the number of enriched feature sets per factor
}
\examples{
# Example on the CLL data
filepath <- system.file("extdata", "CLL_model.hdf5", package = "MOFAdata")
MOFAobject <- loadModel(filepath)

# perform Enrichment Analysis on mRNA data using pre-build Reactome gene sets
data("reactomeGS", package = "MOFAdata")
fsea.results <- runEnrichmentAnalysis(MOFAobject, view="mRNA", feature.sets=reactomeGS)

# Plot overview of number of enriched pathways per factor at an FDR of 1\%
plotEnrichmentBars(fsea.results, alpha=0.01)
}
