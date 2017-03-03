#' sunsetrise_yr
#' @importFrom rvest html_nodes html_text
#' @param year integer
#' @param lon_sign integer -1 for west
#' @param lon_deg integer degree
#' @param lon_min integer minute
#' @param lat_sign integer -1 for south
#' @param lat_deg integer degree
#' @param lat_min integer minute
#' @param tz integer timezone
#' @param tz_sign integer
#' @export
#' @references \url{http://aa.usno.navy.mil/data/docs/RS_OneYear.php}
#' @return A 3 x 365 data.frame of sunrise, sunset, date where times are in GMT
#' @examples \dontrun{
#' sunsetrise_yr(year = 2015, lon_deg = 80, lon_min = 26, lat_deg = 25, lat_min = 5, tz = 5)
#' }

sunsetrise_yr <- function(year, lon_sign = -1, lon_deg, lon_min, lat_sign = 1, lat_deg, lat_min, tz, tz_sign = 1){

  url <- "http://aa.usno.navy.mil"

  query <-   list(
    ID = "JS",
    year = year,
    task = 0,
    lon_sign = lon_sign,
    lon_deg = lon_deg,
    lon_min = lon_min,
    lat_sign = lat_sign,
    lat_deg = lat_deg,
    lat_min = lat_min,
    tz = tz,
    tz_sign = tz_sign)

  rs <- httr::GET(url, path = "cgi-bin/aa_rstablew.pl", query = query)

  rs <- rvest::html_nodes(
          xml2::read_html(
            httr::content(rs, "text")
        ), css = "pre")
  rs <- rvest::html_text(rs)
  rs <- strsplit(rs, "\n")

  header <- read_header(rs)
  body <- read_body(rs)

  # message(header)
  body
}
