% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/styleParsing.R
\name{parseCssBorder}
\alias{parseCssBorder}
\title{Parse a CSS border value.}
\usage{
parseCssBorder(text)
}
\arguments{
\item{text}{The border declaration to parse.}
}
\value{
A list containing three elements: width, style and color.
}
\description{
\code{parseCssBorder} parses the CSS combined border declarations (i.e.
border, border-left, border-right, border-top, border-bottom) and returns a
list containing the width, style and color as separate elements.
}
