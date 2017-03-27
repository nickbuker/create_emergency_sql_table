WITH
aid AS
  (SELECT
    COUNT(*) count_aid
    ,date
    ,neighborhood
  FROM
    emergency
  WHERE
    type LIKE '%Aid%'
  GROUP BY
    date
    ,neighborhood)
,medic AS
  (SELECT
    COUNT(*) count_medic
    ,date
    ,neighborhood
  FROM
    emergency
  WHERE
    type LIKE '%Medic%'
  GROUP BY
    date
    ,neighborhood)

SELECT
  date
  ,neighborhood
  ,COALESCE(count_aid, 0) AS count_aid
  ,COALESCE(count_medic, 0) AS count_medic
FROM
  (SELECT
    *
  FROM
    aid FULL OUTER JOIN medic
  USING(date, neighborhood)) as sub1;
