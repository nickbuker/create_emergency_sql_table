SELECT
  neighborhood
  ,latitude
  ,DENSE_RANK() OVER(PARTITION BY neighborhood
                     ORDER BY latitude)
FROM
  raw_emergency;
