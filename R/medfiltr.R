#' Compute the median filter through zero-padding.
#'
#' @param x A numeric vector representing the input signal.
#' @param window An odd integer specifying the size of the moving window
#'   (default is 3).
#' @param na.rm Logical; if \code{TRUE}, missing values are removed before
#'   computing the median.
#' @return A numeric vector of the same length as \code{x}, containing the
#'   median-filtered signal.
#'
#' @export
MedianFilter <- function(x, window = 3, na.rm = FALSE) {
  stopifnot(is.numeric(x), is.numeric(window), length(window) == 1, window >= 1)
  if (window %% 2 == 0) stop("Window size must be odd.")
  if (length(x) < window) stop("Input shorter than window size.")

  n <- length(x)
  pad <- window %/% 2
  x_padded <- c(rep(0, pad), x, rep(0, pad))
  x_filt <- numeric(n)

  for (i in seq_along(x_filt)) {
    j <- i + pad
    x_sub <- x_padded[(j - pad):(j + pad)]
    x_filt[i] <- median(x_sub, na.rm = na.rm)
  }

  return(x_filt)
}
