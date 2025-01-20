# correlationr
This package provides functions for executing robust correlation analysis. 
Functions inlcude: 
1. Median Absolute Deviation Correlation
2. Median Based Correlation

Pearson’s correlation (r) is widely-employed statistic for assessing bivariate linearity. This correlation is not robust against outliers, violations of normality, and when X and Y are not linearly related. 

Median Absolute Deviation correlation can be used to examine whether two continuous variables (X and Y) are linearly related using a deviate estimation. The median deviation is more robust than the conventional standard deviation (SD) estimate.

Median Based Correlation can be used to examine whether two continuous variables (X and Y) are linearly related using a median correlation coefficient. It is a A derivative of the Median Absolute Deviation and the median correlation coefficient is more robust than the conventional standard deviation (SD) estimate. 

For more information on the functions included within the package please visit the following citation:
Li, J. C. (2022). Supplementary materials to: Bootstrap confidence intervals for 11 robust correlations in the presence of outliers and leverage observations [Simulation code, application example]. PsychOpen GOLD. https://doi.org/10.23668/psycharchives.7051
