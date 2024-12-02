#' @title MARS_API_Directory
#'
#' @description This function pulls a dataframe for all of the reports, their corresponding slug ids , and relevant metadata.
#'
#' @param takes no arguments
#'
#' @examples
#' #Pull the report/table directory
#'
#' MARS_Table_Directory()
#'

#Get Report Directory/Slug ID Dataframe
MARS_Table_Directory <- function(){

  MARS_EndPt_Svcs <- "https://marsapi.ams.usda.gov/services/v1.2/reports/"

  MMN_Reports <- httr::GET(MARS_EndPt_Svcs,httr::authenticate(user = Sys.getenv("MARS_API_KEY"), password = "", type = "basic"))

  Data <- jsonlite::fromJSON(rawToChar(MMN_Reports$content))

  return(Data)

}
