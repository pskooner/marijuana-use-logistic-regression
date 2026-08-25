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

The initial full model included all four candidate predictors:

- Alcohol use
- Cigarette use
- Gender
- Race

An intercept-only model was also fitted to assess whether inclusion of the explanatory variables improved model fit.

Three variable-selection approaches were evaluated:

1. Forward selection
2. Backward elimination
3. Stepwise selection

Model fit and parsimony were compared using likelihood-based tests and information criteria, including the Akaike Information Criterion (AIC) and Bayesian Information Criterion (BIC).

---

## Results

### Full Logistic Regression Model

The full logistic regression model included alcohol use, cigarette use, gender, and race as predictors of marijuana use.

The overall model was statistically significant compared with the intercept-only model:

- **Likelihood-ratio χ²(4):** 855.91
- **p-value:** < 0.0001
- **Full-model AIC:** 2253.378
- **Intercept-only model AIC:** 3101.293

The substantially lower AIC for the full model indicated improved fit relative to the intercept-only model.

### Predictor Results

The full multivariable logistic regression model produced the following key results:

| Predictor | Odds Ratio | Statistical Significance | Interpretation |
|---|---:|---:|---|
| Alcohol use | 19.83 | p < 0.001 | Alcohol use was strongly associated with higher odds of marijuana use. |
| Cigarette use | 17.45 | p < 0.001 | Cigarette use was strongly associated with higher odds of marijuana use. |
| Gender (Female vs. Male) | 0.72 | p = 0.001 | Females had lower odds of marijuana use than males after adjustment for the other predictors. |
| Race | — | p = 0.138 | Race was not statistically significant after adjustment for the other predictors. |

---

## Variable Selection

### Forward Selection

Forward selection used a p-value threshold of 0.05 for entry.

The procedure retained:

- Alcohol use
- Cigarette use
- Gender

Race was not included in the final forward-selection model.

The final forward-selection model had an AIC of **2253.573**.

### Backward Elimination

Backward elimination began with the full model and evaluated variables for removal.

Race was removed because it did not meet the retention criterion.

The final backward-selection model retained:

- Alcohol use
- Cigarette use
- Gender

The final backward-selection model had an AIC of **2253.573**.

### Stepwise Selection

Stepwise selection combined forward and backward procedures using entry and removal criteria.

The procedure retained:

- Alcohol use
- Cigarette use
- Gender

Race was excluded from the final model.

The final stepwise-selection model had an AIC of **2253.573**.

---

## Final Model Comparison

All three variable-selection procedures converged on the same reduced model.

| Selection Method | Variables Retained | Log-Likelihood | AIC | BIC |
|---|---|---:|---:|---:|
| Forward | Alcohol, Cigarette, Gender | -1122.787 | 2253.573 | 2276.494 |
| Backward | Alcohol, Cigarette, Gender | -1122.787 | 2253.573 | 2276.494 |
| Stepwise | Alcohol, Cigarette, Gender | -1122.787 | 2253.573 | 2276.494 |

The identical log-likelihood, AIC, and BIC values indicate that forward, backward, and stepwise selection produced the same final model.

---

## Key Findings

- Alcohol use and cigarette use were strong predictors of marijuana use in the multivariable analysis.
- Gender remained statistically significant after adjustment for the other predictors.
- Race was not statistically significant in the full model and was excluded during variable selection.
- The full logistic regression model provided substantially better fit than the intercept-only model.
- Forward selection, backward elimination, and stepwise selection all identified the same reduced model.
- The final selected model contained alcohol use, cigarette use, and gender.
- The agreement across all three selection procedures indicates that the selected model was stable across the evaluated approaches.

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

---

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
- BIC-based model comparison
- Cross-software implementation in R and Stata

---

## Reproducibility

The repository contains:

- The analysis dataset
- An R implementation
- A Stata implementation
- Model-selection summaries

The scripts can be used to reproduce the main analyses presented in the project.

### R

The R analysis can be found at:

`code/marijuana_use_analysis.R`

### Stata

The Stata analysis can be found at:

`code/marijuana_use_analysis.do`

### Data

The dataset used for the analysis can be found at:

`data/Substance2.dat`

---

## Academic Context

This analysis was completed as part of graduate coursework in Categorical Data Analysis in the Department of Biostatistics and Data Science at UTHealth Houston School of Public Health.
