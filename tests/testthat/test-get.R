context("twilight works")


test_that("arguments are valid", {
  expect_error(tw_daylength(year = 2015, lon_deg = 80, lon_min = 26,
                            lat_deg = 25, lat_min = 5, tz = 5, state = "FL",
                            city = "Key Largo"),
               "Must specify either a state/city or
 geographic coordinates but not both.", fixed = TRUE)
})
