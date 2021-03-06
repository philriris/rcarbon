% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aggregation.R
\name{poolDates}
\alias{poolDates}
\title{Combine radiocarbon ages from the same event.}
\usage{
poolDates(x, errors, id = NULL, F14C = TRUE)
}
\arguments{
\item{x}{A vector of uncalibrated radiocarbon ages}

\item{errors}{A vector of standard deviations corresponding to each estimated radiocarbon age}

\item{id}{A vector of event/object identifiers to be matched with radiocarbon ages. If not supplied all radiocarbon ages are assumed to be from the same event/object.}

\item{F14C}{Whether calculations are carried out in F14C space or not. Default is TRUE.}
}
\value{
A data.frame containing the weighted radiocarbon ages and errors for each event and the associated T-values and P-values.
}
\description{
Computes a combined weighted mean and error and carries out a statistical test for internal consistency.
}
\details{
The function calculates combined weighted error mean and standard error for each set of radiocarbon ages associated with the same event or object and computes a significance test for evaluating internal consistency following Ward and Wilson's method (1978). This is equivalent to OxCal's R_Combine routine.
}
\examples{
x = c(4300,4330,5600,5603,5620)
errors = c(20,30,30,30,45)
id = c(1,1,2,2,2)
poolDates(x,errors,id)
}
\references{
Ward, G. K., & Wilson, S. R. (1978). Procedures for Comparing and Combining Radiocarbon Age Determinations: A Critique. Archaeometry, 20(1), 19–31. https://doi.org/10.1111/j.1475-4754.1978.tb00208.x
}
