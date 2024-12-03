# USDAMARS: Obtain current and historical USDA-AMS Market News Data
# Background
The USDA Market News program has reported on price and sales information to assist in the marketing and distribution of agricultural commodities for over 100 years.

# Usage Description
The USDAMARS package provides access to the report data in MARS through R. All data available in MARS is can be obtained using the USDAMARS package.

1. MARS_API_Key is the function used to set your API key for the current R session

  - MARS_API_Key takes a single input, your API key [obtained here: https://mymarketnews.ams.usda.gov/mymarketnews-api]

2. MARS_Table_Pull is the primary function in the USDAMARS package for making data requests.

  - MARS_Table_Pull takes a single input, the slugid.

  - slug ID: Users can request data based on slugid. For example, users can request data from the report of "Dry Whey - Europe" by setting the slugid equal to 1034.

3. The USDAMARS package also contains a function called MARS_Table_Directory which pulls a data set with details(e.g., slugid, report frequency, and publication date) for all of the USDA Market News reports.

# Examples
Below are some examples for the functions above should be used.

Example 1: Setting your API Key
        
          MARS_API_Key("YOUR API Key")

Example 2: Retrieving the Table Directory

          Directory <- MARS_Table_Directory()

Example 3: Retrieving a Table/Report

          Report <- MARS_Table_Pull(slugid = 1034)
