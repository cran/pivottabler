% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{processIdentifier}
\alias{processIdentifier}
\title{Handle an identifier that may be illegal (e.g. containing spaces).}
\usage{
processIdentifier(identifier)
}
\arguments{
\item{identifier}{The identifier that may be illegal.}
}
\value{
The identifier wrapped in backticks (if illegal) or unchanged.
}
\description{
\code{processIdentifier} is a utility function that wraps an illegal
identifier in backticks.
}
