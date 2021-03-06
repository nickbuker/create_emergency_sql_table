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
  WHERE
    type LIKE '%Aid%'
  GROUP BY
    neighborhood) as sub
LIMIT
  10;
