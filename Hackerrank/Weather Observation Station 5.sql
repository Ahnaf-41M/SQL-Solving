 SELECT CITY, LENGTH(CITY) 
 FROM STATION
 WHERE 
      CITY = ( 
                SELECT CITY
                FROM STATION
                WHERE LENGTH(CITY) = ( SELECT MIN(LENGTH(CITY)) FROM STATION )
                ORDER BY CITY ASC
                LIMIT 1
             ) 
             OR
      CITY = ( 
                SELECT CITY
                FROM STATION
                WHERE LENGTH(CITY) = ( SELECT MAX(LENGTH(CITY)) FROM STATION )
                ORDER BY CITY ASC
                LIMIT 1
             ); 