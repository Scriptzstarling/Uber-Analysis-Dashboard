
#1. Retrieve all successful bookings:

SELECT * from bookings
Where Booking_Status = 'Success';

#2. Find the average ride distance for each vehicle type:

SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

#3. Get the total number of cancelled rides by customers:

select count(*) from bookings
where Booking_Status = 'Canceled_Rides_by_Customer';

#4. List the top 5 customers who booked the highest number of rides:


select Customer_ID, count(Booking_ID) as total_rides
From bookings
Group by Customer_ID
Order by total_rides DESC LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:


select count(*) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:


select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:


select * from bookings
where Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:

 
select Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:

 
select sum(Booking_Value) as total_successful_ride_value
from bookings
where Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:

 
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';



