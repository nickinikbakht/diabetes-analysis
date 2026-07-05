# Load the diabetes dataset
data1 <- read.csv("../data/diabetes.csv", stringsAsFactors = FALSE)

# Contingency table: count of records for each combination of Glucose
# level and Outcome
observed <- table(data1$Glucose, data1$Outcome)
observed

# Chi-square test of independence between Glucose and Outcome
chisq.test(observed)
