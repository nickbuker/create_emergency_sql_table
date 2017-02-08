SELECT
  neighborhood
  ,latitude
  ,DENSE_RANK() OVER(PARTITION BY neighborhood
               ORDER BY latitude) AS rank
FROM
  raw_emergency;
