#' @title MARS_Table_Pull
#'
#' @description This function pulls a dataframe for a single report/slug id.
#'
#' @param slugid The slug id for the report containing the data you want to pull
#'
#' @examples
#' #Pull the report/table directory
#' Df <- MARS_Table_Pull(slugid)
#'
#'

MARS_Table_Pull <- function(slugid){

  MARS_EndPt_Svcs <- paste0("https://marsapi.ams.usda.gov/services/v1.2/reports/",as.character(slugid))

  MARS_Reports <- httr::GET(MARS_EndPt_Svcs,httr::authenticate(user = Sys.getenv("MARS_API_KEY"), password = "", type = "basic"))

  Data <- jsonlite::fromJSON(rawToChar(MARS_Reports$content))

  Data <- Data$results

  return(Data)

}

