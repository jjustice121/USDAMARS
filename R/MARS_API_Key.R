#' @title MARS_API_Key
#'
#' @description This function sets a variable in your R environment for your MARS API Key
#'
#' @param key your API Key obtained from (https://mymarketnews.ams.usda.gov/mymarketnews-api)
#'
#' @examples
#' #set your API Key
#' MARS_API_Key(key = "Your API Key")
#'

#This function sets an environmental variable for your MARS API Key
MARS_API_Key <- function(key){

  Sys.setenv("MARS_API_KEY" = as.character(key))
}

