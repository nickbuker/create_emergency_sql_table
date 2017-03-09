SELECT
  freq
  ,RANK() OVER(ORDER BY freq DESC)
  ,neighborhood
FROM
  (SELECT
    COUNT(*) as freq
    ,neighborhood
  FROM
    emergency
  GROUP BY neighborhood) as sub
LIMIT
  10;
