% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/download_catch_rates.R
\name{download_catch_rates}
\alias{download_catch_rates}
\title{Compile and harmonize fish survey data}
\usage{
download_catch_rates(survey = "Eastern_Bering_Sea", add_zeros = TRUE,
  species_set = 10, error_tol = 1e-12, localdir = NULL)
}
\arguments{
\item{survey}{name of survey to be queried}

\item{add_zeros}{Boolean, whether to add zeros for species in samples that were conducted but where the species was not encountered (recommended: TRUE)}

\item{species_set}{either a character vector (giving scientific names of species) or a integer (giving number of most-frequently sighted species) to be queried}

\item{error_tol}{tolerance for errors when error-checking the algorithm for adding zeros}

\item{localdir}{local directory to save and load data from regional databases (to potentially avoid download times or problems without internet access)}
}
\value{
A data frame of survey data with the following columns
\describe{
  \item{Sci}{Scientific name}
  \item{Year}{Calendar year}
  \item{TowID}{UniqueID associated with each sampling occasion}
  \item{Lat}{Latitude}
  \item{Long}{Longitude}
  \item{Wt}{Catch in KG (may be standardized by effort, check survey for details)}
  \item{Num}{Catch in numbers (may be standardized by effort, check survey for details)}
  \item{...}{Potentially other column labels}
}
}
\description{
\code{download_catch_rates} queries and harmonizes fish survey data from public databases
}

