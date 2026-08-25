# Marijuana Use Logistic Regression Analysis

# Section 1: Read the Data

data <- read.table(
  "data/Substance2.dat",
  header = TRUE
)


# Section 2: Rename Columns

colnames(data) <- c(
  "alcohol",
  "cigarette",
  "marijuana",
  "race",
  "gender",
  "count"
)


# Section 3: Convert Variables to Numeric

data$alcohol   <- as.numeric(data$alcohol)
data$cigarette <- as.numeric(data$cigarette)
data$marijuana <- as.numeric(data$marijuana)
data$race      <- as.numeric(data$race)
data$gender    <- as.numeric(data$gender)


# Section 4: Convert Variables to Factors

data$alcohol <- factor(
  data$alcohol,
  levels = c(1, 2),
  labels = c("Yes", "No")
)

data$cigarette <- factor(
  data$cigarette,
  levels = c(1, 2),
  labels = c("Yes", "No")
)

data$marijuana <- factor(
  data$marijuana,
  levels = c(1, 2),
  labels = c("Yes", "No")
)

data$race <- factor(
  data$race,
  levels = c(1, 2),
  labels = c("White", "Other")
)

data$gender <- factor(
  data$gender,
  levels = c(1, 2),
  labels = c("Female", "Male")
)


# Section 5: Set Reference Categories

data$alcohol <- relevel(
  data$alcohol,
  ref = "No"
)

data$cigarette <- relevel(
  data$cigarette,
  ref = "No"
)

data$marijuana <- relevel(
  data$marijuana,
  ref = "No"
)

data$race <- relevel(
  data$race,
  ref = "Other"
)

data$gender <- relevel(
  data$gender,
  ref = "Male"
)


# Section 6: Fit Full Logistic Regression Model

full_model <- glm(
  marijuana ~ alcohol + cigarette + gender + race,
  data = data,
  family = binomial,
  weights = count
)

summary(full_model)


# Section 7: Calculate Odds Ratios

exp(coef(full_model))


# Section 8: Backward Model Selection

backward_model <- step(
  full_model,
  direction = "backward"
)


# Section 9: Fit Intercept-Only Model

null_model <- glm(
  marijuana ~ 1,
  data = data,
  family = binomial,
  weights = count
)


# Section 10: Forward Model Selection

forward_model <- step(
  null_model,
  scope = list(
    lower = null_model,
    upper = full_model
  ),
  direction = "forward"
)


# Section 11: Stepwise Model Selection

stepwise_model <- step(
  null_model,
  scope = list(
    lower = null_model,
    upper = full_model
  ),
  direction = "both"
)


# Section 12: Compare Models Using AIC

AIC(
  full_model,
  backward_model,
  forward_model,
  stepwise_model
)


# Section 13: Function to Print Model Results

print_model_results <- function(model, name) {

  cat("\n=====================================\n")
  cat("           ", name, "\n")
  cat("=====================================\n\n")

  cat("----- Model Summary -----\n")
  print(summary(model))

  cat("\n----- Odds Ratios -----\n")
  print(exp(coef(model)))

  cat("\n\n")
}


# Section 14: Print Results for All Models

print_model_results(
  full_model,
  "FULL MODEL"
)

print_model_results(
  backward_model,
  "BACKWARD MODEL"
)

print_model_results(
  forward_model,
  "FORWARD MODEL"
)

print_model_results(
  stepwise_model,
  "STEPWISE MODEL"
)
