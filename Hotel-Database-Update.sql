--Change the first name 'John' to 'Jhonny'.
UPDATE GUEST
SET Fname = 'Johnny'
WHERE Fname  = 'John';
 
--Change the type of the room to 'Twin' where the room rate is 150.
UPDATE ROOM
SET Rate = 150
WHERE RoomType = 'Twin';

--Changes the check out date to November 30th, 2024 for the reservation number '200'
UPDATE RESERVATION
SET CheckOutDate = '30-NOV-24'
WHERE ReservationNum = 200;

--Change to cost of 'Travel Desk' to 70.
UPDATE SERVICE
SET Cost = 70
WHERE ServiceType = 'Travel Desk';

--Changes the ServiceId 7(Day Spa) for ReservationNum 205 to the 24th of April 2024.
UPDATE RESERVATION_SERVICES
SET ServiceDate = '26-APR-24'
WHERE ReservationNum = 205 AND ServiceID = 7;

--Sets the total cost to 700 for InvoiceID 111.
UPDATE INVOICE
SET TotalCost = 700
WHERE InvoiceID = 111;