SELECT
  RANK() OVER(ORDER BY SUM(freq) DESC) AS rank
  ,SUM(freq) AS num_emer
  ,zone1
  ,zone2
  ,zone3
  ,zone4
  ,zone5
  ,zone6
  ,zone7
FROM
  counted_emergency
GROUP BY
  zone1
  ,zone2
  ,zone3
  ,zone4
  ,zone5
  ,zone6
  ,zone7;
