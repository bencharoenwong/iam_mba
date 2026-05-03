# Mathematical Symbol Glossary — Investments & Asset Management

This document serves as a standard reference for the mathematical notation used throughout the lecture notes. It is intended to help AI models and human readers interpret equations consistently.

## Return & Risk Measures

- **$r_i$**: The return of asset $i$.
- **$E(r_i)$ or $\mu_i$**: The expected return of asset $i$.
- **$r_f$**: The risk-free rate (typically proxied by 1-month or 3-month Treasury bills).
- **$r_m$**: The return of the market portfolio.
- **$r_i - r_f$**: The excess return of asset $i$ over the risk-free rate (risk premium).
- **$\sigma_i$**: The standard deviation of asset $i$, often referred to as "volatility."
- **$\sigma^2_i$**: The variance of asset $i$.
- **$\sigma_{ij}$**: The covariance between assets $i$ and $j$.
- **$\rho_{ij}$**: The correlation coefficient between assets $i$ and $j$.
- **$\varepsilon$**: The residual or idiosyncratic error term in a regression.

## Portfolio Construction

- **$w_i$**: The weight (percentage of capital) allocated to asset $i$ in a portfolio.
- **$r_p$**: The return of a portfolio.
- **$E(r_p)$**: The expected return of a portfolio ($E(r_p) = \sum w_i E(r_i)$).
- **$\sigma_p$**: The volatility of a portfolio.
- **$y$**: The fraction of wealth allocated to a risky portfolio vs. the risk-free asset.
- **$\Sigma$ or $\mathbf{\Sigma}$**: The variance-covariance matrix of asset returns.
- **$\boldsymbol{\mu}$**: The vector of expected returns.

## Factor Models & Linear Regression

- **$\alpha$ (Alpha)**: The intercept in a regression; represents excess return not explained by the model factors.
- **$\beta$ (Beta)**: The slope coefficient; represents the sensitivity of an asset's return to a specific factor (usually the market).
- **$\lambda$ (Lambda)**: The factor risk premium or the price of risk associated with a factor.
- **$R^2$**: The coefficient of determination; the percentage of variance explained by the model.

## Investor Preferences & Utility

- **$U$**: Utility.
- **$A$ or $\gamma$**: The coefficient of relative risk aversion. Higher values indicate greater aversion to risk.
- **Sharpe Ratio**: $\frac{E(r_p) - r_f}{\sigma_p}$ — the reward-to-volatility ratio.

## AI Interpretation Guidelines

When parsing equations in this repository:
1. **Context:** Assume a discrete-time finance context unless continuous-time calculus is explicitly mentioned.
2. **Units:** Returns ($r$) and volatilities ($\sigma$) are typically expressed in decimal format (e.g., 0.05 for 5%) but may be discussed as percentages in text.
3. **Optimization:** Assume mean-variance optimization (Markowitz) as the default framework for portfolio choice discussions.
4. **Vectors/Matrices:** Bold symbols (e.g., $\mathbf{w}$, $\mathbf{\Sigma}$) represent vectors or matrices.
5. **Factors:** In "Ch 08: Factor Investing," $\beta$ may refer to multiple coefficients (e.g., $\beta_{SMB}$, $\beta_{HML}$) in a multi-factor model.
