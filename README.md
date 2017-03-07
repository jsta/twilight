<!-- README.md is generated from README.Rmd. Please edit that file -->
twilight
========

[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/twilight)](https://cran.r-project.org/package=twilight) [![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/twilight)](https://cran.r-project.org/package=twilight) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/jsta/twilight?branch=master&svg=true)](https://ci.appveyor.com/project/jsta/twilight) [![Travis-CI Build Status](https://travis-ci.org/jsta/twilight.svg?branch=master)](https://travis-ci.org/jsta/twilight)

The goal of twilight is to provide an R wrapper for the sun/moon rise/set data at <http://aa.usno.navy.mil/data/docs/RS_OneYear.php>

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("jsta/twilight")
```

Usage
-----

### Load package

``` r
library(twilight)
```

### Geographic Coordinates

#### Raw Sunrise/set

``` r
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

#### Day Length

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

### United State Place Names

#### Raw Sunrise/set

``` r
head(
  sunsetrise_yr(year = 2015,
                state = "FL",
                city = "Key Largo")
)
#>          Jan.      Feb.      Mar.      Apr.       May      June      July
#> 2 y Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set
#> 3    h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m
#> 4   0707 1744 0705 1806 0645 1824 0613 1838 0546 1852 0532 1908 0535 1916
#> 5   0707 1744 0704 1807 0644 1824 0612 1838 0545 1852 0532 1908 0536 1916
#> 6   0707 1745 0704 1808 0643 1825 0611 1839 0545 1853 0531 1908 0536 1916
#> 7   0708 1746 0703 1808 0642 1825 0610 1839 0544 1853 0531 1909 0536 1916
#>        Aug.     Sept.      Oct.      Nov.      Dec.
#> 2 Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set
#> 3  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m
#> 4 0549 1907 0602 1841 0614 1809 0629 1741 0650 1731
#> 5 0549 1906 0603 1840 0614 1808 0630 1740 0650 1731
#> 6 0550 1905 0603 1839 0615 1807 0630 1740 0651 1732
#> 7 0550 1905 0604 1838 0615 1806 0631 1739 0652 1732
```

#### Day Length

``` r
head(
  tw_daylength(year = 2015,
                state = "FL",
                city = "Key Largo")
)
#>   Jan. Feb. Mar. Apr.  May June July Aug. Sept. Oct. Nov. Dec.
#> 1 1037 1101 1179 1225 1306 1376 1381 1358  1239 1195 1112 1081
#> 2 1037 1103 1180 1226 1307 1376 1380 1357  1237 1194 1110 1081
#> 3 1038 1104 1182 1228 1308 1377 1380 1355  1236 1192 1110 1081
#> 4 1038 1105 1183 1229 1309 1378 1380 1355  1234 1191 1108 1080
#> 5 1038 1106 1185 1231 1311 1378 1379 1353  1233 1190 1107 1079
#> 6 1039 1108 1186 1232 1311 1379 1379 1352  1231 1188 1106 1079
```

Contributors
------------

Contributions welcome in the form of pull requests and issues!
