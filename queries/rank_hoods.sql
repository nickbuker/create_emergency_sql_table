SELECT
  neighborhood
  ,COUNT(latitude) AS count
  ,RANK() OVER(ORDER BY COUNT(latitude) DESC) AS RANK
FROM
  raw_emergency
GROUP BY
  neighborhood;
