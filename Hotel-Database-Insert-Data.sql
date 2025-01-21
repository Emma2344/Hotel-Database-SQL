--GUEST
INSERT INTO GUEST VALUES ('G10', 'John', 'Doe', NULL, '908-123-2343', 'john.doe@gmail.com');
INSERT INTO GUEST VALUES ('G16', 'Heather', 'Brown', 'A', '908-444-3932', 'hbrown@gmail.com');
INSERT INTO GUEST VALUES ('G24', 'Michelle', 'Cruz', 'M', '610-904-2903', 'mstar@yahoo.com');
INSERT INTO GUEST VALUES ('G67', 'Nathan', 'Tims', NULL, '862-163-7643', 'tims123@outlook.com');
INSERT INTO GUEST VALUES ('G99', 'Leah', 'Shaw', 'N', '973-095-6583', 'lele27@gmail.com');

--ROOM
INSERT INTO ROOM VALUES (101, 'Twin', 100.00, 2, 2,'Available');
INSERT INTO ROOM VALUES (102,'Double Queen', 150.00, 4, 2, 'Available');
INSERT INTO ROOM VALUES (103,'Suite', 250.00, 4, 2, 'Available');
INSERT INTO ROOM VALUES (104,'Single Queen', 120.00, 2, 1, 'Available');
INSERT INTO ROOM VALUES (105,'Double Queen', 180.00, 4, 2, 'Available');
INSERT INTO ROOM VALUES (106,'Single Queen', 110.00, 2, 1, 'Available');
INSERT INTO ROOM VALUES (107,'Double Queen', 200.00, 4, 2, 'Available');

--RESERVATION
INSERT INTO RESERVATION VALUES (200, 'G16', 102, '24-NOV-2024', '26-NOV-2024', 3, 'Reserved');
INSERT INTO RESERVATION VALUES (201, 'G10', 101, '24-NOV-2024', '26-NOV-2024', 2, 'Reserved');
INSERT INTO RESERVATION VALUES (202, 'G99', 103, '30-DEC-2024', '06-JAN-2025', 4, 'Reserved');
INSERT INTO RESERVATION VALUES (203, 'G67', 104, '26-FEB-2024', '01-MAR-2024', 1, 'Reserved');
INSERT INTO RESERVATION VALUES (204, 'G24', 107, '04-JUN-2024', '11-JUN-2024', 2, 'Reserved');
INSERT INTO RESERVATION VALUES (205, 'G16', 101, '24-APR-2024', '01-MAY-2024', 2, 'Reserved');

--SERVICE
INSERT INTO SERVICE VALUES (7, 'Day Spa', 120.00);
INSERT INTO SERVICE VALUES (8, 'Car Rental', 100.00);
INSERT INTO SERVICE VALUES (9, 'Room Service', 50.00);
INSERT INTO SERVICE VALUES (10, 'Travel Desk', 50.00);
INSERT INTO SERVICE VALUES (11, 'Parking', 20.00);
INSERT INTO SERVICE VALUES (12, 'Gym', 15.00);

--RESERVATION_SERVICES
INSERT INTO RESERVATION_SERVICES VALUES (200, 8, '25-NOV-2024');
INSERT INTO RESERVATION_SERVICES VALUES (200, 9, '25-NOV-2024');
INSERT INTO RESERVATION_SERVICES VALUES (201, 9, '24-NOV-2024');
INSERT INTO RESERVATION_SERVICES VALUES (204, 9, '24-APR-2024');
INSERT INTO RESERVATION_SERVICES VALUES (202, 11, '06-JAN-2025');
INSERT INTO RESERVATION_SERVICES VALUES (205, 7, '25-APR-2024');
INSERT INTO RESERVATION_SERVICES VALUES (205, 10, '26-APR-2024');

--INVOICE
INSERT INTO INVOICE VALUES (111, 200, 350.00, 'Paid in full', 'Debit Card');
INSERT INTO INVOICE VALUES (112, 201, 250.00, 'Paid in full', 'Cash');
INSERT INTO INVOICE VALUES (113, 202, 50.00, 'Pending', NULL);
INSERT INTO INVOICE VALUES (114, 204, 500.00, 'Pending', NULL);
INSERT INTO INVOICE VALUES (115, 205, 0, 'Pending', 'Bank Transfer');