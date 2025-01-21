--1. Find the number of registrations for each guest
SELECT GuestID, COUNT(ReservationNum)
FROM (GUEST G NATURAL JOIN RESERVATION R)
GROUP BY GuestID;

--2. Select all ReservationNum that have more than one service registered
SELECT ReservationNum              
FROM (RESERVATION R NATURAL JOIN RESERVATION_SERVICES RS)
GROUP BY ReservationNum 
HAVING COUNT(*) > 1;

--3. Return the RoomNum and Rate for the most expensive room
SELECT RoomNum, R1.Rate
FROM ROOM R1
WHERE R1.Rate >= ALL (SELECT R2.Rate
                    FROM ROOM R2);

--4. Select the ReservationNum for all reservations where the RoomType is double queen
SELECT RE.ReservationNum
FROM RESERVATION RE
WHERE RE.RoomNum IN (SELECT R.RoomNum
                     FROM ROOM R
                     WHERE R.RoomType = 'Double Queen');   