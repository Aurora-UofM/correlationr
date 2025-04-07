#' Median Based (MED) Correlations
#'
#' @description Performs a median based correlation which is used to examine
#' whether two continuous variables (X and Y) are linearly related using a
#' median correlation coefficient.
#'
#' @param x a continuous variable
#' @param y a continuous variable
#'
#' @return
#' @export
#'
#' @examples
rMED <- function(x, y){
  U = (x-median(x))/(median(abs(x-median(x))))+(y-median(y))/(median(abs(y-median(y))))
  V = (x-median(x))/(median(abs(x-median(x))))-(y-median(y))/(median(abs(y-median(y))))
  r_corr <- (median(abs(U))^2-median(abs(V))^2)/(median(abs(U))^2+median(abs(V))^2)
  return(r_corr)
}

