# Random Sampling Methods in R (Simulation Lab)

This repository contains an R lab project focused on random number generation and simulation techniques.  
It covers sampling from common distributions, discrete simulations (dice), and classic sampling algorithms (Inverse CDF and Acceptance–Rejection).

## Contents

### 1) Continuous Distributions
- Generate **5000 samples from Uniform(0,1)** using `runif()`
- Generate **3000 samples from Normal(mean=100, sd=15)** using `rnorm()`
- Visualize results with:
  - Histograms
  - Kernel density estimates (`density()`)

### 2) Dice Simulation (Uniform → Discrete Mapping)
- Generate **600 Uniform(0,1)** values and map them to a fair die outcome (1–6)
- Compute:
  - Mean and variance of simulated dice results
  - Frequency table of outcomes
- Alternative approach using:
  - `sample(1:6, size=600, replace=TRUE)`

### 3) Discrete Distribution Sampling with Custom Probabilities
- Sample from values `k = {0,1,2,3}` with probabilities:
  - `p = {0.15, 0.25, 0.50, 0.10}`
- Display frequency distribution with `table()`

### 4) Built-in Discrete Distributions
- **Binomial:** 100 samples from Binomial(n=10, p=0.3) using `rbinom()`
- **Geometric:** 50 samples from Geometric(p=0.4) using `rgeom()`
  - Note: `rgeom()` returns the number of failures before first success (starts at 0), so `+1` is applied to represent trial count.

### 5) Sampling Algorithms
#### 5a) Inverse CDF Method
- Implements a custom generator:
  - `X = 2 * sqrt(U)` where `U ~ Uniform(0,1)`
- Generates 200 realizations

#### 5b) Acceptance–Rejection Method
- Generates samples on `[0,2]` using accept–reject logic:
  - Propose `x ~ Uniform(0,2)` and `y ~ Uniform(0,2)`
  - Accept if `y <= x`
- Generates 200 realizations

## How to Run

### Requirements
- R (recommended: R 4.x or newer)
- No external packages required (base R only)

### Run script
From the repository root:
```bash
Rscript src/lab04.R
```