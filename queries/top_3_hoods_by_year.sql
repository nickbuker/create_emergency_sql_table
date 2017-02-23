SELECT
  *
FROM
  (SELECT
    *
    ,RANK() OVER(PARTITION BY year
                 ORDER BY freq DESC)
  FROM
    (SELECT
      DATE_PART('year', Datetime) AS year
      ,neighborhood
      ,COUNT(Latitude) AS freq
    FROM
      emergency
    GROUP BY
      year
      ,neighborhood) AS sub1) AS sub2
WHERE
  rank <= 3
;
