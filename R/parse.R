#' tw_daylength
#' @description Daylength in hhmm format
#' @export
#' @param ... arguments passed to sunsetrise_yr
#' @examples \dontrun{
#' tw_daylength(year = 2015, lon_deg = 80, lon_min = 26, lat_deg = 25, lat_min = 5, tz = 5)
#'
#' tw_daylength(year = 2015, state = "FL", city = "Key Largo")
#' }
tw_daylength <- function(...){
  res <- sunsetrise_yr(...)

  day_from_rise_set <- function(x){
    x <- c(
      as.numeric(strsplit(x, " ")[[1]][1]),
      as.numeric(strsplit(x, " ")[[1]][2]))

    if(any(is.na(x))){
      NA
    }else{
      daylen <- x[1] - x[2]

      if(daylen < 0){
        abs(daylen)
      }else{
        2400 - daylen
      }
    }
  }

  ind <- seq_len(nrow(res))[-1 * c(1, 2)]
  # ind <- 3:nrow(res)
  dt <- res[ind,]
  res[ind,] <- apply(dt, 2, function(x) sapply(x, day_from_rise_set))
  res <- res[c(-1, -2),]
  row.names(res) <- 1:nrow(res)
  res
}
