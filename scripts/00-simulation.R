##for simulating the original reported crimes data
set.seed(110)
simulated_reported_crimes_data <-
  tibble(
    # Use 1 through to 2701 to represent each unique case
    "_id" = 1:2701,
    "ObjectId" = 1:2701,
    #randomize reported crime's year from 2014 to 2021
    "ReportedYear" = sample(
      x = c(
        "2014",
        "2015",
        "2016",
        "2017",
        "2018",
        "2019",
        "2020",
        "2021"
      ),
      size = 2701,
      replace = TRUE
    ),
    #randomize each cases' responsible division
    "GeoDivision" = sample(
      x = c(
        "D11",
        "D12",
        "D13",
        "D14",
        "D22",
        "D23",
        "D31",
        "D32",
        "D33",
        "D41",
        "D42",
        "D43",
        "D51",
        "D52",
        "D53",
        "D54&55",
        "NSA"
      ),
      size = 2701,
      replace = TRUE
    ),
    #randomize reported crimes' categories
    "Category" = sample(
      x = c(
        "Controlled Drugs and Substances Act",
        "Crimes Against Property",
        "Crimes Against the Person",
        "Criminal Code Traffic",
        "Other Criminal Code Violations",
        "Other Federal statute Violations"
      ),
      size = 2701,
      replace = TRUE
    ),
    #randomize subtypes of the specific reported crime
    "Subtype" = sample(
      x = c(
        "Assault",
        "Attempted Murder",
        "Auto Theft",
        "Break & Enter-Apartment",
        "Break & Enter-Commercial",
        "Break & Enter-House",
        "Break & Enter-Other",
        "Fraud",
        "Other",
        "Other Criminal Violations - Offensive Weapons",
        "Robbery-Financial",
        "Robbery-Other",
        "Sexual Violation",
        "Theft Over $5000",
        "Theft Under $5000"
      ),
      size = 2701,
      replace = TRUE
    ),
    #randomize amount of crime in a very large number in each category
    "Count_" = sample(
      x = 100000:300000,
      size = 2701,
      replace = TRUE
    ),
    #randomize amount of crime cleared in each category but they will always be smaller than the amount of crime
    "CountCleared" = sample(
      x = 1:100000,
      size = 2701,
      replace = TRUE
    )
  )
  
simulated_reported_crimes_data

##testing for simulated reported crimes data

##to check if Category is the right class "character":
simulated_reported_crimes_data$Category |>
  class()
##to check if the year does not go above 2021:
simulated_reported_crimes_data$ReportedYear |>
  max() <= 2021
##to check if the year does not go below 2014:
simulated_reported_crimes_data$ReportedYear |>
  min() >= 2014
##to check if the maximum amount of cleared crime don't exceed the amount of reported crime
max(simulated_reported_crimes_data$CountCleared) <= max(simulated_reported_crimes_data$Count_)

##for simulating the original police expenditure data
set.seed(111)
simulated_police_expenditure_data <-
  tibble(
    # Use 1 through to 128 to represent each unique case
    "id" = 1:128,
    "object_id" = 1:128,
    #randomize expenditure year from 2014 to 2021
    "year" = sample(
      x = c(
        "2014",
        "2015",
        "2016",
        "2017",
        "2018",
        "2019",
        "2020",
        "2021"
      ),
      size = 128,
      replace = TRUE
      ),
    #the only value in category is expenditure due to the nature of data set
    "category" = "Expenditures",
    "division" = sample(
      #randomize divisions 
      x = c(
           "D11",
           "D12",
           "D13",
           "D14",
           "D22",
           "D23",
           "D31",
           "D32",
           "D33",
           "D41",
           "D42",
           "D43",
           "D51",
           "D52",
           "D53",
           "D54&55" 
      ),
      size = 128,
      replace = TRUE
    ),
    #randomize command related to division data
    "command" = sample(
      x = c(
           "Area",
           "Central",
           "East",
           "West"
      ),
      size = 128,
      replace = TRUE
    ),
    #randomize expense amount but no negative number
    "expense_amount" = sample(
      x = 0:10000000000,
      size = 128,
      replace = TRUE
    )
  )
simulated_police_expenditure_data

##testing for simulated police expenditure data

#to check if division has the correct type "character":
simulated_police_expenditure_data$division |>
  class()
#to check if the year does not go above 2021:
simulated_reported_crimes_data$ReportedYear |>
  max() <= 2021
#to check if the year does not go below 2014:
simulated_reported_crimes_data$ReportedYear |>
  min() >= 2014
#to check if command has the correct type "character":
simulated_police_expenditure_data$command |>
  class()
#to check if no division's expenses go to negative numbers:
simulated_police_expenditure_data$division |>
  min() >= 0
