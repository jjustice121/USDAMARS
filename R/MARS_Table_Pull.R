#' @title MARS_Table_Pull
#'
#' @description This function pulls a dataframe for a single report/slug id.
#'
#' @param slugid The slug id for the report containing the data you want to pull
#' @param section Optional, the report section
#' @param date Optional, the report date or range of dates
#'
#' @examples
#' #Pull the report/table directory
#' Df <- MARS_Table_Pull(slugid, section, date)
#'
#'

MARS_Table_Pull <- function(slugid, section, date){

  if(missing(section) & missing(date)) {

    MARS_EndPt_Svcs <- paste0("https://marsapi.ams.usda.gov/services/v1.2/reports/",as.character(slugid))

  } else if(missing(date)) {

    section <- gsub(" ","%20",section)

    MARS_EndPt_Svcs <- paste0("https://marsapi.ams.usda.gov/services/v1.2/reports/",as.character(slugid),"/",section)

  } else if(missing(section)){

    MARS_EndPt_Svcs <- paste0("https://marsapi.ams.usda.gov/services/v1.2/reports/",as.character(slugid),"?q=report_begin_date=",date)

  }
  else {

    section <- gsub(" ","%20",section)

    MARS_EndPt_Svcs <- paste0("https://marsapi.ams.usda.gov/services/v1.2/reports/",as.character(slugid),"/",section,"?q=report_begin_date=",date)
  }


  MARS_Reports <- httr::GET(MARS_EndPt_Svcs,httr::authenticate(user = Sys.getenv("MARS_API_KEY"), password = "", type = "basic"))

  Data <- jsonlite::fromJSON(rawToChar(MARS_Reports$content))

  Data <- Data$results

  return(Data)

}

