SELECT
  neighborhood
  ,COUNT(latitude) AS num_emer
  ,RANK() OVER(ORDER BY COUNT(latitude) DESC) AS rank
FROM
  raw_emergency
GROUP BY
  neighborhood
ORDER BY
  rank
LIMIT
  10;
