SELECT
  COUNT(id_num) AS num_emergency
  ,response
  ,neighborhood
FROM
  (SELECT
    id_num
    ,'aid' AS response
    ,neighborhood 
  FROM
    emergency
  WHERE
    type LIKE '%Aid%'
UNION ALL
  SELECT
    id_num
    ,'medic' AS response
    ,neighborhood
  FROM
    emergency
  WHERE
    type LIKE '%Medic%') as sub
GROUP BY
  neighborhood
  ,response;
