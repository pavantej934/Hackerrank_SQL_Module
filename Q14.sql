select DISTINCT CITY from STATION where substring(CITY,1,1) not in ("A","E","I","O","U");