COPY
  emergency
  (id_num
  ,Address
  ,Type
  ,Datetime
  ,Latitude
  ,Longitude
  ,"Report Location"
  ,"Incident Number"
  ,dt_crop
  ,date
  ,time
  ,date2
  ,time2
  ,mariners_home
  ,seahawks_home
  ,sounders_home
  ,trav_holiday
  ,dang_holiday
  ,weekday
  ,night
  ,Monday
  ,Saturday
  ,Sunday
  ,Thursday
  ,Tuesday
  ,Wednesday
  ,day_num
  ,seasonality
  ,neighborhood
  ,zone1
  ,zone2
  ,zone3
  ,zone4
  ,zone5
  ,zone6
  ,zone7
  ,zone8)
FROM
  '/home/nick/Desktop/projects/seattle_emergency/data/features_seattle_911_no_dup_hoods.csv'
  HEADER
  CSV;
