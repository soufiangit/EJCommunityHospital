# Hospital Data Analysis Script
# Required packages
install.packages(c("DBI", "odbc", "tidyverse", "lubridate"))
library(DBI)
library(odbc)
library(tidyverse)
library(lubridate)

# Database connection
con <- dbConnect(odbc(),
                Driver = "SQL Server",
                Server = "YOUR_SERVER_NAME",
                Database = "ElijahCommunityHospital",
                trusted_connection = "yes")

# Example analyses

# 1. Patient Demographics
patient_demographics <- dbGetQuery(con, "
  SELECT 
    YEAR(DOB) as birth_year,
    Gender,
    COUNT(*) as count
  FROM PATIENT
  GROUP BY YEAR(DOB), Gender
  ORDER BY birth_year
")

# Visualize age distribution by gender
ggplot(patient_demographics, aes(x = birth_year, y = count, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  theme_minimal() +
  labs(title = "Patient Age Distribution by Gender",
       x = "Birth Year",
       y = "Number of Patients")

treatment_analysis <- dbGetQuery(con, "
  SELECT 
    t.TreatmentDescription,
    COUNT(pt.PatientID) as patient_count,
    AVG(t.TreatmentCost) as avg_cost
  FROM TREATMENT t
  LEFT JOIN PATIENT_TREATMENT pt ON t.TreatmentCode = pt.TreatmentCode
  GROUP BY t.TreatmentDescription
  ORDER BY avg_cost DESC
")

ggplot(treatment_analysis, 
       aes(x = reorder(TreatmentDescription, avg_cost), 
           y = avg_cost)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  theme_minimal() +
  labs(title = "Average Cost by Treatment Type",
       x = "Treatment",
       y = "Average Cost ($)")


test_results <- dbGetQuery(con, "
  SELECT 
    t.TestDescription,
    pt.Result,
    COUNT(*) as count
  FROM TEST t
  JOIN PATIENT_TEST pt ON t.TestCode = pt.TestCode
  GROUP BY t.TestDescription, pt.Result
")

ggplot(test_results, 
       aes(x = TestDescription, y = count, fill = Result)) +
  geom_bar(stat = "identity", position = "stack") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Test Results Distribution",
       x = "Test Type",
       y = "Number of Tests")

dbDisconnect(con)