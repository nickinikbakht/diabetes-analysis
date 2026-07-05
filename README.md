# Diabetes Dataset: Statistical Analysis and Regression Modeling

This project analyzes the Pima Indians Diabetes dataset from two angles:
a statistical-testing / exploratory pass, and a linear-regression modeling
pass.

## Dataset

`data/diabetes.csv` contains diagnostic measurements (`Pregnancies`,
`Glucose`, `BloodPressure`, `SkinThickness`, `Insulin`, `BMI`,
`DiabetesPedigreeFunction`, `Age`) and the binary `Outcome` label
(diabetic / not diabetic).

## Contents

### Notebooks (Python)

- `notebook/01_eda_and_statistical_testing.ipynb`
  - Builds a contingency table of `Glucose` vs `Outcome`.
  - Runs a chi-square test of independence between the two.
  - Removes biologically invalid zero readings (`Glucose`, `BloodPressure`)
    and re-explores the cleaned data (unique values, counts, missing
    values, data types).
  - Applies min-max and standard scaling to the cleaned dataset.

- `notebook/02_linear_regression_modeling.ipynb`
  - Visualizes the correlation matrix and pairwise feature relationships.
  - Fits linear regression models predicting `Outcome` from
    `Glucose` + `BMI`, and from `Glucose` alone, using both scikit-learn
    and a statsmodels OLS summary.
  - Plots residuals and reports MAE / MSE / RMSE / MAPE for the fitted
    models.

### R script

`r-scripts/chi_square_test.R` reproduces the contingency table and
chi-square test in R, for comparison with the Python version.

Run it from inside the `r-scripts/` folder (it references the dataset as
`../data/diabetes.csv`).

<-- ## Notes on this cleanup

The code and results are unchanged. A few regression cells in
`02_linear_regression_modeling.ipynb` reference variables (`X2`, `Y`)
that are not defined within the visible code of that cell — this reflects
the original notebook's interactive execution order (some variables were
created in an earlier run of the kernel) and has been left exactly as it
was, including its original output.
-->
