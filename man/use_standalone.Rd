% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use-standalone.R
\name{use_standalone}
\alias{use_standalone}
\title{Use a standalone file from another repo}
\usage{
use_standalone(repo_spec, file = NULL, ref = NULL, host = NULL)
}
\arguments{
\item{repo_spec}{A string identifying the GitHub repo in one of these forms:
\itemize{
\item Plain \code{OWNER/REPO} spec
\item Browser URL, such as \code{"https://github.com/OWNER/REPO"}
\item HTTPS Git URL, such as \code{"https://github.com/OWNER/REPO.git"}
\item SSH Git URL, such as \code{"git@github.com:OWNER/REPO.git"}
}}

\item{file}{Name of standalone file. The \verb{standalone-} prefix and file
extension are optional. If omitted, will allow you to choose from the
standalone files offered by that repo.}

\item{ref}{The name of a branch, tag, or commit. By default, the file at
\code{path} will be copied from its current state in the repo's default branch.
This is extracted from \code{repo_spec} when user provides a URL.}

\item{host}{GitHub host to target, passed to the \code{.api_url} argument of
\code{\link[gh:gh]{gh::gh()}}. If \code{repo_spec} is a URL, \code{host} is extracted from that.

If unspecified, gh defaults to "https://api.github.com", although gh's
default can be customised by setting the GITHUB_API_URL environment
variable.

For a hypothetical GitHub Enterprise instance, either
"https://github.acme.com/api/v3" or "https://github.acme.com" is
acceptable.}
}
\description{
A "standalone" file implements a minimum set of functionality in such a way
that it can be copied into another package. \code{use_standalone()} makes it easy
to get such a file into your own repo.

It always overwrites an existing standalone file of the same name, making
it easy to update previously imported code.
}
