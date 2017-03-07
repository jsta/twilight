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
sunsetrise_yr(year = 2015,
              lon_deg = 80,
              lon_min = 26,
              lat_deg = 25,
              lat_min = 5,
              tz = 5)
#>           Jan.      Feb.      Mar.      Apr.       May      June      July
#> 2  y Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set
#> 3     h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m  h m
#> 4    1707 0343 1704 0406 1645 0423 1614 0438 1546 0451 1532 0507 1535 0516
#> 5    1707 0344 1704 0406 1644 0424 1613 0438 1545 0452 1532 0507 1536 0516
#> 6    1707 0344 1704 0407 1643 0424 1611 0439 1545 0452 1532 0508 1536 0516
#> 7    1708 0345 1703 0408 1642 0425 1610 0439 1544 0453 1531 0508 1536 0516
#> 8    1708 0346 1703 0408 1641 0425 1609 0439 1543 0453 1531 0509 1537 0516
#> 9    1708 0346 1702 0409 1640 0426 1608 0440 1543 0454 1531 0509 1537 0516
#> 10   1708 0347 1701 0410 1639 0426 1607 0440 1542 0454 1531 0510 1538 0516
#> 11   1708 0348 1701 0411 1638 0427 1606 0441 1541 0455 1531 0510 1538 0515
#> 12   1708 0349 1700 0411 1637 0427 1605 0441 1541 0455 1531 0510 1538 0515
#> 13   1709 0349 1700 0412 1636 0428 1604 0442 1540 0456 1531 0511 1539 0515
#> 14   1709 0350 1659 0413 1635 0428 1603 0442 1540 0456 1531 0511 1539 0515
#> 15   1709 0351 1658 0413 1634 0429 1603 0442 1539 0457 1531 0512 1540 0515
#> 16   1709 0351 1658 0414 1633 0429 1602 0443 1538 0457 1531 0512 1540 0515
#> 17   1709 0352 1657 0414 1632 0430 1601 0443 1538 0458 1531 0512 1541 0515
#> 18   1709 0353 1656 0415 1631 0430 1600 0444 1537 0459 1532 0513 1541 0514
#> 19   1709 0354 1656 0416 1630 0431 1559 0444 1537 0459 1532 0513 1542 0514
#> 20   1709 0354 1655 0416 1629 0431 1558 0445 1536 0500 1532 0513 1542 0514
#> 21   1708 0355 1654 0417 1628 0431 1557 0445 1536 0500 1532 0513 1542 0514
#> 22   1708 0356 1653 0418 1627 0432 1556 0446 1536 0501 1532 0514 1543 0513
#> 23   1708 0357 1652 0418 1626 0432 1555 0446 1535 0501 1532 0514 1543 0513
#> 24   1708 0357 1652 0419 1625 0433 1554 0447 1535 0502 1533 0514 1544 0513
#> 25   1708 0358 1651 0419 1624 0433 1553 0447 1534 0502 1533 0514 1544 0512
#> 26   1708 0359 1650 0420 1623 0434 1553 0448 1534 0503 1533 0515 1545 0512
#> 27   1707 0400 1649 0420 1622 0434 1552 0448 1534 0503 1533 0515 1545 0511
#> 28   1707 0400 1648 0421 1621 0435 1551 0448 1533 0504 1534 0515 1546 0511
#> 29   1707 0401 1647 0422 1620 0435 1550 0449 1533 0504 1534 0515 1546 0510
#> 30   1706 0402 1647 0422 1619 0435 1549 0449 1533 0505 1534 0515 1547 0510
#> 31   1706 0403 1646 0423 1618 0436 1548 0450 1533 0505 1534 0515 1547 0509
#> 32   1706 0403           1617 0436 1548 0450 1532 0506 1535 0515 1548 0509
#> 33   1705 0404           1616 0437 1547 0451 1532 0506 1535 0516 1548 0508
#> 34   1705 0405           1615 0437           1532 0507           1549 0508
#> 35                                                                        
#>         Aug.     Sept.      Oct.      Nov.      Dec.
#> 2  Rise  Set Rise  Set Rise  Set Rise  Set Rise  Set
#> 3   h m  h m  h m  h m  h m  h m  h m  h m  h m  h m
#> 4  1549 0507 1602 0442 1614 0410 1629 0342 1650 0332
#> 5  1550 0507 1603 0441 1614 0409 1630 0341 1650 0332
#> 6  1550 0506 1603 0440 1615 0408 1630 0341 1651 0332
#> 7  1551 0505 1604 0439 1615 0407 1631 0340 1652 0332
#> 8  1551 0505 1604 0438 1615 0406 1632 0339 1653 0332
#> 9  1551 0504 1604 0437 1616 0405 1632 0339 1653 0332
#> 10 1552 0503 1605 0435 1616 0404 1633 0338 1654 0332
#> 11 1552 0503 1605 0434 1617 0403 1634 0338 1655 0332
#> 12 1553 0502 1605 0433 1617 0402 1634 0337 1655 0332
#> 13 1553 0501 1606 0432 1618 0401 1635 0337 1656 0333
#> 14 1554 0501 1606 0431 1618 0400 1636 0336 1657 0333
#> 15 1554 0500 1607 0430 1618 0359 1636 0336 1657 0333
#> 16 1555 0459 1607 0429 1619 0358 1637 0335 1658 0334
#> 17 1555 0458 1607 0428 1619 0357 1638 0335 1658 0334
#> 18 1556 0457 1608 0427 1620 0356 1638 0334 1659 0334
#> 19 1556 0457 1608 0426 1620 0355 1639 0334 1700 0335
#> 20 1556 0456 1608 0425 1621 0354 1640 0334 1700 0335
#> 21 1557 0455 1609 0424 1621 0353 1640 0333 1701 0335
#> 22 1557 0454 1609 0423 1622 0352 1641 0333 1701 0336
#> 23 1558 0453 1610 0422 1622 0351 1642 0333 1702 0336
#> 24 1558 0452 1610 0420 1623 0350 1643 0333 1702 0337
#> 25 1559 0451 1610 0419 1623 0350 1643 0332 1703 0337
#> 26 1559 0450 1611 0418 1624 0349 1644 0332 1703 0338
#> 27 1559 0449 1611 0417 1624 0348 1645 0332 1704 0338
#> 28 1600 0449 1611 0416 1625 0347 1645 0332 1704 0339
#> 29 1600 0448 1612 0415 1626 0346 1646 0332 1705 0339
#> 30 1601 0447 1612 0414 1626 0346 1647 0332 1705 0340
#> 31 1601 0446 1613 0413 1627 0345 1648 0332 1705 0340
#> 32 1601 0445 1613 0412 1627 0344 1648 0332 1706 0341
#> 33 1602 0444 1613 0411 1628 0343 1649 0332 1706 0342
#> 34 1602 0443           1629 0343           1707 0342
#> 35
```

### Day length data

``` r
tw_daylength(year = 2015,
              lon_deg = 80,
              lon_min = 26,
              lat_deg = 25,
              lat_min = 5,
              tz = 5)
#>    Jan. Feb. Mar. Apr.  May June July Aug. Sept. Oct. Nov. Dec.
#> 1  1036 1102 1178 1224 1305 1375 1381 1358  1240 1196 1113 1082
#> 2  1037 1102 1180 1225 1307 1375 1380 1357  1238 1195 1111 1082
#> 3  1037 1103 1181 1228 1307 1376 1380 1356  1237 1193 1111 1081
#> 4  1037 1105 1183 1229 1309 1377 1380 1354  1235 1192 1109 1080
#> 5  1038 1105 1184 1230 1310 1378 1379 1354  1234 1191 1107 1079
#> 6  1038 1107 1186 1232 1311 1378 1379 1353  1233 1189 1107 1079
#> 7  1039 1109 1187 1233 1312 1379 1378 1351  1230 1188 1105 1078
#> 8  1040 1110 1189 1235 1314 1379 1377 1351  1229 1186 1104 1077
#> 9  1041 1111 1190 1236 1314 1379 1377 1349  1228 1185 1103 1077
#> 10 1040 1112 1192 1238 1316 1380 1376 1348  1226 1183 1102 1077
#> 11 1041 1154 1193 1239 1316 1380 1376 1347  1225 1182 1100 1076
#> 12 1042 1155 1195 1239 1318 1381 1375 1346  1223 1141 1100 1076
#> 13 1042 1156 1196 1241 1319 1381 1375 1304  1222 1139 1098 1076
#> 14 1043 1157 1198 1242 1320 1381 1374 1303  1221 1138 1097 1076
#> 15 1044 1159 1199 1244 1322 1381 1373 1301  1219 1136 1096 1075
#> 16 1045 1160 1201 1285 1322 1381 1372 1301  1218 1135 1095 1035
#> 17 1045 1161 1202 1287 1364 1381 1372 1300  1217 1133 1094 1035
#> 18 1047 1163 1203 1288 1364 1381 1372 1298  1215 1132 1093 1034
#> 19 1048 1165 1205 1290 1365 1382 1370 1297  1214 1130 1092 1035
#> 20 1049 1166 1206 1291 1366 1382 1370 1295  1212 1129 1091 1034
#> 21 1049 1167 1208 1293 1367 1381 1369 1294  1210 1127 1090 1035
#> 22 1050 1168 1209 1294 1368 1381 1368 1292  1209 1127 1089 1034
#> 23 1051 1170 1211 1295 1369 1382 1367 1291  1207 1125 1088 1035
#> 24 1093 1171 1212 1296 1369 1382 1366 1290  1206 1124 1087 1034
#> 25 1093 1173 1214 1297 1371 1381 1365 1249  1205 1122 1087 1035
#> 26 1094 1175 1215 1299 1371 1381 1364 1248  1203 1120 1086 1034
#> 27 1096 1175 1216 1300 1372 1381 1363 1246  1202 1120 1085 1035
#> 28 1097 1177 1218 1302 1372 1381 1362 1245  1200 1118 1084 1035
#> 29 1097 <NA> 1219 1302 1374 1380 1361 1244  1199 1117 1084 1035
#> 30 1099 <NA> 1221 1304 1374 1381 1360 1242  1198 1115 1083 1036
#> 31 1100 <NA> 1222 <NA> 1375 <NA> 1359 1241  <NA> 1114 <NA> 1035
#> 32 <NA> <NA> <NA> <NA> <NA> <NA> <NA> <NA>  <NA> <NA> <NA> <NA>
```

Contributors
------------

Contributions welcome in the form of pull requests and issues!
