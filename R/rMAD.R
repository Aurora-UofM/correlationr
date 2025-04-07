#' Median Absolute Deviation (MAD) Correlations
#'
#' @description Performs a median-absolute-deviation correlation which is
#' used to examine whether two continuous variables (X and Y) are linearly related
#' using a deviate estimation, called the median absolute deviation.
#'
#' @param x a continuous variable
#' @param y a continuous variable
#'
#' @return a correlation value (r) that ranges from -1 to +1
#' @export
#'
#' @examples rMAD()
#' @examples rMAD(SwimLessons$Temp, SwimLessons$SwimTime)

rMAD <- function(x, y){
  U = (x-median(x))/(sqrt(2)*mad(x))+(y-median(y))/(sqrt(2)*mad(y))
  V = (x-median(x))/(sqrt(2)*mad(x))-(y-median(y))/(sqrt(2)*mad(y))
  r_corr <- (mad(U)^2-mad(V)^2)/(mad(U)^2+mad(V)^2)
  return(r_corr)
}


