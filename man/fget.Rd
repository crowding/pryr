\name{fget}
\alias{fget}
\title{Find a function with specified name.}
\usage{
  fget(name, env = parent.frame())
}
\arguments{
  \item{name}{length one character vector giving name}

  \item{env}{environment to start search in.}
}
\description{
  Find a function with specified name.
}
\examples{
c <- 10
fget("c")
}

