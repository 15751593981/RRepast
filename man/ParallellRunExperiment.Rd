% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rrepast-parallel.R
\name{ParallellRunExperiment}
\alias{ParallellRunExperiment}
\title{ParallellRunExperiment}
\usage{
ParallellRunExperiment(modeldir, datasource, maxtime, r = 1, design, FUN,
  default = NULL)
}
\arguments{
\item{modeldir}{The installation directory of some repast model}

\item{datasource}{The name of any model aggregate dataset}

\item{maxtime}{The total simulated time}

\item{r}{The number of experiment replications}

\item{design}{The desing matrix holding parameter sampling}

\item{FUN}{THe calibration function.}

\item{default}{The alternative values for parameters which should be kept fixed}
}
\value{
A list with output and dataset
}
\description{
Run the model multiple times for different parameters
given by design matrix function parameter.
}
\details{
The FUN function must return zero for perfect fit and values
greater than zero otherwise.
}
\examples{
\dontrun{
   my.cost<- function(params, results) { # your best fit calculation, being 0 the best metric.  }
   d<- "/usr/models/your-model-directory"
   f<- AddFactor(name="cyclePoint",min=40,max=90)
   f<- AddFactor(factors=f, name="conjugationCost",min=1,max=80)
   d<- AoE.LatinHypercube(factors=f)
   v<- ParallellRunExperiment()}

}
