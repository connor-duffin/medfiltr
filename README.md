# medfiltr

This package contains a single function `MedianFilter` to run the [median filter](https://en.wikipedia.org/wiki/Median_filter) on a numeric vector. If it behaves like a numeric vector, then this function should work on it.

The single function looks like this:

``` r
library(medfiltr)
MedianFilter(c(2, 3, 1, 5, 6, 6))
# [1] 2 2 3 5 6 6
```
## Installation

You can install the development version of medfiltr from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("connor-duffin/medfiltr")
```
