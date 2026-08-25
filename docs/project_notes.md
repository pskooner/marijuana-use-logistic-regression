# Project Notes

## Academic Context

This analysis was originally completed as part of graduate coursework in Categorical Data Analysis at UTHealth Houston School of Public Health.

The original assignment focused on logistic regression model selection using the `Substance2` dataset.

For this repository, the analysis has been reorganized into a standalone reproducible statistical project.

## Analysis Question

The primary analytic question is:

Which behavioral and demographic variables are associated with marijuana use among high school seniors?

The candidate explanatory variables are:

- Alcohol use
- Cigarette use
- Gender
- Race

## Statistical Approach

Binary logistic regression was used because marijuana use is a binary outcome.

A full multivariable model was first estimated.

Three model-selection procedures were then compared:

- Forward selection
- Backward elimination
- Stepwise selection

Model fit and parsimony were evaluated using likelihood-based methods and information criteria.

## Software

The analysis was implemented independently in:

- R
- Stata
