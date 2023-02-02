library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("police-annual-statistical-report-gross-expenditures-by-division")
package

# get all resources for this package
police_expenditure_resources <- list_package_resources("police-annual-statistical-report-gross-expenditures-by-division")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(police_expenditure_resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
police_expenditure_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
police_expenditure_data


# get package
package <- show_package("police-annual-statistical-report-reported-crimes")
package

# get all resources for this package
reported_crimes_resources <- list_package_resources("police-annual-statistical-report-reported-crimes")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(reported_crimes_resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
reported_crimes_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
reported_crimes_data


##write code to save data as a csv file into inputs/data
##commit then push this to git