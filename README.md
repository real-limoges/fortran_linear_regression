This is the README file for writing Fortran 77 code to compute an Ordinary Linear Regression (OLS) with one feature.

I wanted to learn a little Fortran 77 since it is heavily used in linear algebra packages in other languages - better to not let the language die :)

I recommend installing a LaTeX rendering extension for your browser to read this README. It'll make it easier to parse my calculations.


Calculation of Linear Regression
--------------------------------

An OLS Regression with a single feature can be efficiently calculated on one pass. This is an extension of the efficient calculation of a variance (saving both $\sum X$ and $\sum X^{2}$.)


