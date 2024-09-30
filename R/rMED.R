#' @title rMED
#'
#' @description Performs a median-based correlation
#'
#' @param x A continuous variable in your dataset of interest
#' @param y A continuous variable in your dataset of interest
#' @param U2=(x-median(x))/(median(abs(x-median(x))))+(y-median(y))/(median(abs(y-median(y))))
#' @param V2=(x-median(x))/(median(abs(x-median(x))))-(y-median(y))/(median(abs(y-median(y))))
#'
#' @return A median-based correlation value
#'
#' @examples
#' data(SwimLessons)
#' x <- SwimLessons$Temp
#' y <- SwimLessons$SwimTime
#'
#' @export
#' rMED <- function(x, y){
#' U2 = (x-median(x))/(median(abs(x-median(x))))+(y-median(y))/(median(abs(y-median(y))));
#' V2 = (x-median(x))/(median(abs(x-median(x))))-(y-median(y))/(median(abs(y-median(y))));
#' rm_corr <- (median(abs(U2))^2-median(abs(V2))^2)/(median(abs(U2))^2+median(abs(V2))^2);
#' return(rm_corr);
#' }
#'
#' @importFrom dplyr "%>%"
