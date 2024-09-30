#' @title rMAD
#'
#' @description Performs a median-absolute-deviation correlation
#'
#' @param x A continuous variable
#' @param y A continuous variable
#' @param U=(x-median(x))/(sqrt(2)*mad(x))+(y-median(y))/(sqrt(2)*mad(y))
#' @param V=(x-median(x))/(sqrt(2)*mad(x))-(y-median(y))/(sqrt(2)*mad(y))
#'
#' @return A median-absolute-deviation correlation value
#'
#' @examples
#' data(SwimLessons)
#' x <- SwimLessons$Temp
#' y <- SwimLessons$SwimTime
#'
#' @export
#' rMAD <- function(x, y){
#' U = (x-median(x))/(sqrt(2)*mad(x))+(y-median(y))/(sqrt(2)*mad(y));
#' V = (x-median(x))/(sqrt(2)*mad(x))-(y-median(y))/(sqrt(2)*mad(y));
#' r_corr <- (mad(U)^2-mad(V)^2)/(mad(U)^2+mad(V)^2);
#' return(r_corr);
#' }
#'
#' @importFrom dplyr "%>%"
