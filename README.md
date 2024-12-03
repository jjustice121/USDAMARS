# USDAMARS: Obtain USDA-AMS Market News Data
# Background
The USDA Market News program has reported on price and sales information to assist in the marketing and distribution of agricultural commodities for over 100 years.

# Usage Description
The `USDAMARS` package provides access to the report data in MARS through R. All data available in MARS is can be obtained using the `USDAMARS` package.

`MARS_API_Key` is the function used to set your API key for the current R session

  - `MARS_API_Key` takes a single input, your API key (obtained here: https://mymarketnews.ams.usda.gov/mymarketnews-api)

`MARS_Table_Pull` is the primary function in the USDAMARS package for making data requests.

  - `MARS_Table_Pull` takes three inputs, the slugid (required), the report section (optional) and, the date/date range (optional).

  - slugid: Users can request data based on slugid. For example, users can request data from the report of "Dry Whey - Europe" by setting the slugid equal to 1034.
  - section: Users can choose the section of a report, such as "Report Detail" by setting section equal to "Report Detail".
  - date: Users can choose the date of a report, such as "09/30/2024" or range of dates "09/30/2024:11/01/2024" by setting date equal to "09/30/2024" or "09/30/2024:11/01/2024".

The `USDAMARS` package also contains a function called `MARS_Table_Directory` which pulls a data set with details (e.g., slugid, report frequency, and publication date) for all of the USDA Market News reports.

# Examples
Below are some examples for the functions above should be used.

Example 1: Setting your API Key
        
          MARS_API_Key("YOUR API KEY")

Example 2: Retrieving the Table Directory

          Directory <- MARS_Table_Directory()

Example 3: Retrieving a Table/Report

          Report <- MARS_Table_Pull(slugid = 1034)

Example 4: Retrieving a Table/Report with Section and Date

          Report <- MARS_Table_Pull(slugid = 3668, section = "Report Detail", date = "09/30/2024")

# Installation
Currently, the package is only available through GitHub and can be installed using the code below
          
          devtools::install_github("jjustice121/USDAMARS")

Note: You need to install the `devtools` package before you can install the `USDAMARS` package using `install.packages("devtools")`.

