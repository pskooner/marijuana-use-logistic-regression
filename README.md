# Logistic Regression and Model Selection of Marijuana Use Among High School Seniors

## Overview

This project examines factors associated with marijuana use among high school seniors using binary logistic regression and multiple model-selection procedures.

The analysis evaluates alcohol use, cigarette use, gender, and race as potential predictors of marijuana use.

Both R and Stata implementations are included to demonstrate equivalent categorical-data analysis workflows across two statistical software environments.

---

## Research Question

Which behavioral and demographic characteristics are associated with marijuana use among high school seniors?

---

## Objectives

The objectives of the analysis were to:

- Fit a multivariable binary logistic regression model
- Estimate associations between marijuana use and selected predictors
- Interpret odds ratios
- Compare the full model with an intercept-only model
- Apply forward variable selection
- Apply backward elimination
- Apply stepwise variable selection
- Compare selected models using information criteria
- Evaluate the consistency of variable selection across procedures

---

## Dataset

The analysis uses the `Substance2` dataset.

The data are aggregated observations classified according to:

- Alcohol use
- Cigarette use
- Marijuana use
- Gender
- Race
- Frequency count

The `count` variable represents the number of observations corresponding to each categorical combination.

---

## Outcome Variable

**Marijuana use**

Binary outcome:

- Yes
- No

---

## Predictor Variables

The candidate predictors were:

- Alcohol use
- Cigarette use
- Gender
- Race

---

## Statistical Methods

A binary logistic regression model was used to estimate associations between the explanatory variables and marijuana use.

The initial full model included all four candidate predictors.

An intercept-only model was also fitted to assess the improvement in model fit attributable to the explanatory variables.

Three variable-selection approaches were evaluated:

1. Forward selection
2. Backward elimination
3. Stepwise selection

Model fit and parsimony were compared using likelihood-based tests and information criteria including AIC.

---

## Key Findings

Alcohol use and cigarette use were strongly associated with marijuana use.

Gender was also retained as an important predictor.

Race was not statistically significant after adjustment for the other variables and was excluded during model selection.

Forward selection, backward elimination, and stepwise selection all converged on the same reduced model containing:

- Alcohol use
- Cigarette use
- Gender

The consistency across the three approaches indicates that the selected model was stable under the evaluated model-selection procedures.

---

## Repository Structure

```text
marijuana-use-logistic-regression/
│
├── README.md
├── .gitignore
│
├── data/
│   ├── Substance2.dat
│   └── README.md
│
├── code/
│   ├── marijuana_use_analysis.R
│   ├── marijuana_use_analysis.do
│   └── README.md
│
├── results/
│   ├── model_summary.md
│   └── README.md
│
└── docs/
    └── project_notes.md
```
## Analysis Workflow

### 1. Data Preparation

The dataset was prepared for analysis by defining categorical variables and their reference levels.

### 2. Full Logistic Regression Model

A multivariable logistic regression model was fitted with marijuana use as the response variable and alcohol use, cigarette use, gender, and race as explanatory variables.

### 3. Null Model Comparison

The full model was compared with an intercept-only model using likelihood-based testing and AIC.

### 4. Forward Selection

Predictors were added sequentially according to the specified entry criterion.

### 5. Backward Elimination

The full model was reduced by removing variables that did not meet the retention criterion.

### 6. Stepwise Selection

Forward and backward procedures were combined using entry and removal thresholds.

### 7. Model Comparison

The final models obtained from forward, backward, and stepwise selection were compared using log-likelihood, AIC, and BIC.

---

## Software

### R

The R analysis uses:

- `glm()`
- Binomial logistic regression
- Odds ratio estimation
- `step()`
- AIC comparison

### Stata

The Stata analysis uses:

- `logistic`
- Frequency weights
- `stepwise`
- `lrtest`
- `estat ic`
- Stored-model comparison

---

## Methods Demonstrated

This project demonstrates:

- Categorical data analysis
- Binary logistic regression
- Odds ratios
- Multivariable modeling
- Frequency-weighted analysis
- Likelihood-ratio testing
- Forward variable selection
- Backward elimination
- Stepwise selection
- AIC-based model comparison
- Cross-software implementation in R and Stata

---

## Reproducibility

The repository contains:

- The analysis dataset
- An R implementation
- A Stata implementation
- Model-selection summaries

The scripts can be used to reproduce the main analyses presented in the project.

---

## Academic Context

This analysis was completed as part of graduate coursework in Categorical Data Analysis in the Department of Biostatistics and Data Science at UTHealth Houston School of Public Health.

The coursework analysis was reorganized into a standalone reproducible statistical project for educational and portfolio purposes.
