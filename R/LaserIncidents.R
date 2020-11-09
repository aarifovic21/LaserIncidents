#' Laser Incidents Reported by the FAA
#'
#' This package contains specifications for Laser incidents
#' reported by Federal Aviation Administration
#' @docType package
#' @name LaserIncidents
#' @aliases LaserIncidents LaserIncidents-package
NULL

#' "Laser Incidents"
#'
#' A data set containing Laser Incidents reported by
#' the Federal Aviation Administration
#' from 2015-2019
#'
#' @source \url{https://www.faa.gov/about/initiatives/lasers/laws/}
#' @format A dataframe with 33296 elements
#' \describe{
#'   \item{aircraft}{Airplane Name}
#'   \item{airport}{Airport Location}
#'   \item{altitude}{Airplane Height (in ft)}
#'   \item{city}{Airport City}
#'   \item{flight_id}{Flight ID}
#'   \item{incident_date}{Date of Laser Pointer Incident (Y/M/D)}
#'   \item{injury}{Injuries noted due to Laser}
#'   \item{laser_color}{Laser Color}
#'   \item{state}{Airport State}
#' }
"LaserIncidents"
