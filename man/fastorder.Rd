% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fastorder.R
\name{fastorder}
\alias{fastorder}
\title{Sort ordering numeric vectors}
\usage{
fastorder(x)
}
\arguments{
\item{x}{numeric vector.}
}
\value{
\code{fastorder} returns a list with two elements:
\itemize{
  \item \code{x}: numeric vector. The ordered version of the vector.
  \item \code{ix}: numeric vector. The corresponding indices.
}
}
\description{
Order a numeric vector in ascending order. Identical values are ordered in
descending order of occurrence.
}
\examples{
out <- fastorder(mtcars$cyl)
}
