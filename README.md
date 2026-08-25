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
