# USDAMARS
#Background
The USDA Market News program has reported on price and sales information to assist in the marketing and distribution of agricultural commodities for over 100 years.

#Usage Description
The USDAMARS package provides access to the report data in MARS through R. All data available in MARS is can be obtained using the USDAMARS package.

MARS_API_Key is the function used to set your API key for the current R session

MARS_API_Key takes a single input, your API key (obtained here: https://mymarketnews.ams.usda.gov/mymarketnews-api)

MARS_Table_Pull is the primary function in the USDAMARS package for making data requests.

MARS_Table_Pull takes a single input, the slug ID.

slug ID: Users can request data based on slug ID. For example, users can request data from the report of "Dry Whey - Europe" by setting the slug ID equal to 1034.

The USDAMARS package also contains a function called MARS_Table_Directory which pulls a data set with details(e.g., slug ID, report frequency, and publication date) for all of the USDA Market News reports.
