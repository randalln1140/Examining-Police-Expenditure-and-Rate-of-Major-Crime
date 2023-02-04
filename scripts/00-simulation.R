##for simulating the original reported crimes data
set.seed(110)
simulated_reported_crimes_data <-
  tibble(
    # Use 1 through to 151 to represent each division
    "_id" = 1:2701,
    "ObjectId" = 1:2701,
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
    "Count_" = sample(
      x = 100000:300000,
      size = 2701,
      replace = TRUE
    ),
    "CountCleared" = sample(
      x = 1000:100000,
      size = 2701,
      replace = TRUE
    )
  )
    

simulated_reported_crimes_data


##for simulating the original police expenditure data
set.seed(111)
simulated_police_expenditure_data <-
  tibble(
    "id" = 1:128,
    "object_id" = 1:128,
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
    "category" = "Expenditures",
    "division" = sample(
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
    "expense_amount" = sample(
      x = 1:10000000000,
      size = 128,
      replace = TRUE
    )
  )
simulated_police_expenditure_data