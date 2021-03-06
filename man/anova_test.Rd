% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anova_test.R
\name{anova_test}
\alias{anova_test}
\title{Anova Test}
\usage{
anova_test(data, formula, ...)
}
\arguments{
\item{data}{a data.frame containing the variables in the formula.}

\item{formula}{a formula of the form \code{x ~ group} where \code{x} is a
numeric variable giving the data values and \code{group} is a factor with
one or multiple levels giving the corresponding groups. For example,
\code{formula = TP53 ~ cancer_group}.}

\item{...}{other arguments to be passed to the function
\code{\link[stats]{aov}}.}
}
\value{
return a data frame with the following columns: \itemize{ \item
 \code{.y.}: the y variable used in the test. \item \code{term}: the grouping
 variable. \item \code{statistic}: Test statistic (F-statistic) used to compute the
 p-value. \item \code{p}: p-value.
 \item \code{method}: the statistical test used to compare groups.}
}
\description{
Provides a pipe-friendly framework to perform ANOVA tests.
 Wrapper around the function \code{\link[stats]{aov}()}.
}
\examples{
# Load data
#:::::::::::::::::::::::::::::::::::::::
data("ToothGrowth")
df <- ToothGrowth

# One-way Anova test
#:::::::::::::::::::::::::::::::::::::::::
df \%>\% anova_test(len ~ dose)

# Two-way Anova test
#:::::::::::::::::::::::::::::::::::::::::
df \%>\% anova_test(len ~ supp*dose)

}
