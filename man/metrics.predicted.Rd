% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metrics.predicted.R
\name{metrics.predicted}
\alias{metrics.predicted}
\title{Predicted Metrics}
\usage{
metrics.predicted(fun.df)
}
\arguments{
\item{fun.df}{data frame of station IDs and site predictors.}
}
\value{
Returns a data frame of stations and predicted metric values.
}
\description{
This function allows you to generate predicted metric scores based on data frame of stationIDs and site predictors.
Generate predicted metric scores based on site location predictors in O/E (RandomForest) model.  Output is table (stations by metrics).
}
\details{
input data frame: 
head(NV.predictors)  
[1] "Sitecode"   "ELVmax_WS"  "PrdCond"    "SQ_KM"      "Tmax_WS"    "Pmin_WS"  
[7] "WDmax_WS"   "BFI_WS"     "HYDR_WS"    "Pmax_PT"    "ELVmin_WS"  "Tmax_PT"   
[13] "ELVcv_PT"   "ELVmean_WS" "Pmax_WS"    "Slope_WS"
}
\examples{
# Location of files.
path <- getwd()
setwd(path)

library("MMIcalcNV")

# Load Station Predictors
#prednew <- read.csv("predictors.20170215.csv")
prednew <- NV.predictors
head(prednew)
# Run function to get predicted metrics
new.metrics.pred <- metrics.predicted(prednew)
# Save the file
#write.csv(new.metrics.pred,"metrics_predicted.csv",row.names=FALSE)
}
\keyword{MMI,}
\keyword{NV,}
\keyword{Nevada,}
\keyword{forest}
\keyword{metrics,}
\keyword{predicted,}
\keyword{random}

