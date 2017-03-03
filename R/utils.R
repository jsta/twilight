read_header <- function(rs){
  header_begin <- grep("astronomical", tolower(rs[[1]]))
  header_end   <- grep("jan", tolower(rs[[1]])) - 1
  header <- trimws(rs[[1]][header_begin:header_end])
  header
}

read_body <- function(rs){
  body_begin <- grep("jan", tolower(rs[[1]]))
  body <- rs[[1]][body_begin:length(rs[[1]])]
  body <- lapply(body, function(x) substring(x, 3, nchar(x)))

  field_length <- 11
  starts <- seq(1, nchar(body[[1]]), by = field_length)
  body <- lapply(body, function(x)
            sapply(starts, function(ii)
              trimws(substring(x, ii, ii + field_length - 1))))

  body <- data.frame(do.call("rbind", body), stringsAsFactors = FALSE)
  body_names <- body[1,]
  names(body) <- body_names

  body[-1,]
}
