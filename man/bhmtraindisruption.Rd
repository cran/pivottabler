% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{bhmtraindisruption}
\alias{bhmtraindisruption}
\title{Birmingham Train Disruptions, Dec 2016-Feb 2017.}
\format{
A data frame with 2982 rows and  10 variables:
\describe{
  \item{ServiceId}{Unique train identifier}
  \item{LastCancellationAt}{Time of the last cancellation}
  \item{LastCancellationLocation}{3-letter code denoting the location of the
  last cancellation}
  \item{LastCancellationReasonCategory}{The broad reason why the train was
  cancelled}
  \item{LastCancellationReasonDesc}{A more specific reason why the train was
  cancelled}
  \item{LastReinstatedAt}{Time of the last reinstatement}
  \item{LastChangeOfOriginAt}{Time of the last change of origin}
  \item{LastChangeOfOriginLocation}{3-letter code denoting the location of
  the last change of origin}
  \item{LastChangeOfOriginReasonCategory}{The broad reason why the origin was
  changed}
  \item{LastChangeOfOriginReasonDesc}{A more specific reason why the origin
  was changed}
}
}
\source{
\url{https://www.recenttraintimes.co.uk/}
}
\usage{
bhmtraindisruption
}
\description{
A dataset containing details of the trains in the
bhmtrains dataset that were partially/wholly
cancelled and/or reinstated.
}
\keyword{datasets}
