Select *from zomata;

# Unique cities
select distinct City from zomata;

# Count of restaurants per city
select city,count(*) as TotalRestaurants 
from zomata
group by city
order by TotalRestaurants Desc;

# Count of restaurants by cuisine type
SELECT Cuisines, COUNT(*) AS RestaurantCount
FROM zomata
GROUP BY Cuisines
ORDER BY RestaurantCount DESC
LIMIT 10;

# Restaurants with online delivery and table booking
select restaurantname,city,Has_Online_delivery,Has_Table_booking
from zomata
where Has_Online_delivery = 'Yes' and Has_Table_booking = 'Yes';

# Average rating by restaurantname
select restaurantname,avg(Rating) as avgRating
from zomata
group by restaurantname
order by avgRating desc limit 10;

# Restaurant with highest cost for two
select restaurantname,average_cost_for_two,currency
 from zomata
 order by Average_Cost_for_two desc limit 5;
 
 # Ratings into 1-2,2-3,3-4,4-5
SELECT 
  CASE 
    WHEN Rating BETWEEN 1 AND 2 THEN '1-2'
    WHEN Rating BETWEEN 2 AND 3 THEN '2-3'
    WHEN Rating BETWEEN 3 AND 4 THEN '3-4'
    WHEN Rating BETWEEN 4 AND 5 THEN '4-5'
    ELSE 'Unrated'
  END AS Ratings,
  COUNT(*) AS TotalRestaurants
FROM zomata
GROUP BY Ratings
ORDER BY Ratings;




