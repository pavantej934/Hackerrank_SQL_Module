select ((select count(CITY) from STATION) - (select count(DISTINCT CITY) from STATION)) as DIFFERENCE;