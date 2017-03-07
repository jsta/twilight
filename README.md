<!-- README.md is generated from README.Rmd. Please edit that file -->
twilight
========

[![Project Status: WIP - Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/twilight)](https://cran.r-project.org/package=twilight) [![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/twilight)](https://cran.r-project.org/package=twilight) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/jsta/twilight?branch=master&svg=true)](https://ci.appveyor.com/project/jsta/twilight) [![Travis-CI Build Status](https://travis-ci.org/jsta/twilight.svg?branch=master)](https://travis-ci.org/jsta/twilight)

The goal of twilight is to provide an R wrapper for the sun/moon rise/set data at <http://aa.usno.navy.mil/data/docs/RS_OneYear.php>

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("jsta/twilight")
```

Usage
-----

### Raw sun set/rise data

``` r
library(twilight)
head(
  sunsetrise_yr(year = 2015,
              lon_deg = 80,
              lon_min = 26,
              lat_deg = 25,
              lat_min = 5,
              tz = 5)
)
#>          Jan.      Feb.      Mar.      Apr.       May      June      July
#> 2 y Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set
#> 3    h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m
#> 4   1707 0343 1704 0406 1645 0423 1614 0438 1546 0451 1532 0507 1535 0516
#> 5   1707 0344 1704 0406 1644 0424 1613 0438 1545 0452 1532 0507 1536 0516
#> 6   1707 0344 1704 0407 1643 0424 1611 0439 1545 0452 1532 0508 1536 0516
#> 7   1708 0345 1703 0408 1642 0425 1610 0439 1544 0453 1531 0508 1536 0516
#>        Aug.     Sept.      Oct.      Nov.      Dec.
#> 2 Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set
#> 3  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m
#> 4 1549 0507 1602 0442 1614 0410 1629 0342 1650 0332
#> 5 1550 0507 1603 0441 1614 0409 1630 0341 1650 0332
#> 6 1550 0506 1603 0440 1615 0408 1630 0341 1651 0332
#> 7 1551 0505 1604 0439 1615 0407 1631 0340 1652 0332
```

### Day length data

``` r
head(
  tw_daylength(year = 2015,
              lon_deg = 80,
              lon_min = 26,
              lat_deg = 25,
              lat_min = 5,
              tz = 5)
)
#>   Jan. Feb. Mar. Apr.  May June July Aug. Sept. Oct. Nov. Dec.
#> 1 1036 1102 1178 1224 1305 1375 1381 1358  1240 1196 1113 1082
#> 2 1037 1102 1180 1225 1307 1375 1380 1357  1238 1195 1111 1082
#> 3 1037 1103 1181 1228 1307 1376 1380 1356  1237 1193 1111 1081
#> 4 1037 1105 1183 1229 1309 1377 1380 1354  1235 1192 1109 1080
#> 5 1038 1105 1184 1230 1310 1378 1379 1354  1234 1191 1107 1079
#> 6 1038 1107 1186 1232 1311 1378 1379 1353  1233 1189 1107 1079
```

Contributors
------------

Contributions welcome in the form of pull requests and issues!
