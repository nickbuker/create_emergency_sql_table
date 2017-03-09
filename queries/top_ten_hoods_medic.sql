SELECT
  freq
  ,RANK() OVER(ORDER BY freq DESC)
  ,neighborhood
FROM
  (SELECT
    COUNT(*) AS freq
    ,neighborhood
  FROM
    emergency
  WHERE
    type LIKE '%Medic%'
  GROUP BY
    neighborhood) AS sub
LIMIT
  10;
