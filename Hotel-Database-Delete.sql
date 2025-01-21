--Delete guest with GuestID 'G10'.
DELETE FROM GUEST
WHERE GuestID = 'G10';

--Delete all rooms with RoomNum greater than 105.
DELETE FROM ROOM
WHERE RoomNum > 105;

--Delete all records for all reservations that checked out before may 1st 2024.
DELETE FROM RESERVATION     
WHERE CheckOutDate < '01-MAY-24';

--Delete all services where the cost is greater than 100.
DELETE FROM SERVICE
WHERE Cost > 100;

DELETE FROM RESERVATION_SERVICES
WHERE ServiceID IN (SELECT S.ServiceID
                    FROM SERVICE S
                    WHERE ServiceType = 'Car Rental');

--Deletes entry where the InvoiceID is 115 from the invoice relation
DELETE FROM INVOICE
WHERE InvoiceID = 115;