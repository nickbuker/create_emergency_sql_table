WITH
tmp1 AS
(SELECT
  COUNT(*) AS medic
  ,neighborhood
FROM
  emergency
WHERE
  type LIKE '%Medic%'
GROUP BY
  neighborhood),
tmp2 AS
(SELECT
  COUNT(*) AS responses
  ,neighborhood
FROM
  emergency
GROUP BY
  neighborhood)

SELECT
  (CAST(tmp1.medic AS float) / tmp2.responses) AS prop_medic
  ,tmp2.neighborhood
FROM
  tmp1 FULL JOIN tmp2
ON
  tmp1.neighborhood = tmp2.neighborhood
ORDER BY
  prop_medic DESC
LIMIT 10;
