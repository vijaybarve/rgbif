\name{providers}
\alias{providers}
\title{Get data providers and their unique keys.}
\usage{
  providers(name = "", isocountrycode = NA,
    modifiedsince = NA, startindex = NA, maxresults = NA,
    url = "http://data.gbif.org/ws/rest/provider/list",
    ..., curl = getCurlHandle())
}
\arguments{
  \item{name}{data provider name search string, by default
  searches all data providers by defining name = ''}

  \item{isocountrycode}{return only providers from the
  country identified by the supplied 2-letter ISO code.}

  \item{modifiedsince}{return only records which have been
  indexed or modified on or after the supplied date (format
  YYYY-MM-DD, e.g. 2006-11-28)}

  \item{startindex}{return the subset of the matching
  records that starts at the supplied (zero-based index).}

  \item{maxresults}{max number of results to return}

  \item{url}{the base GBIF API url for the function (should
  be left to default)}

  \item{...}{optional additional curl options (debugging
  tools mostly)}

  \item{curl}{If using in a loop, call getCurlHandle()
  first and pass the returned value in here (avoids
  unnecessary footprint)}
}
\description{
  Beware: It takes a while to retrieve the full list of
  providers - so go get more coffee. #'
}
\examples{
\dontrun{
# Test the function for a few providers
providers(maxresults=10)
#'# All data providers
providers()
}
}

