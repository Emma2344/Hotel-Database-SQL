/*
DROP TABLE INVOICE;
DROP TABLE RESERVATION_SERVICES;
DROP TABLE SERVICE;
DROP TABLE RESERVATION;
DROP TABLE ROOM;
DROP TABLE GUEST;
*/

CREATE TABLE GUEST(
    GuestID             VARCHAR(10)              NOT NULL,                 
    Fname               VARCHAR(50)              NOT NULL,
    Lname               VARCHAR(25)              NOT NULL,
    Minit               CHAR(1),                    
    PhoneNum		    VARCHAR(25),
    Email				VARCHAR(256),
    PRIMARY KEY(GuestID));
    
CREATE TABLE ROOM(
    RoomNum             INT                 NOT NULL,
    RoomType            VARCHAR(15)         NOT NULL,
    Rate                DECIMAL(10, 2)      NOT NULL,
    MaxGuest		    INT 		        NOT NULL,
    Beds		        INT                 NOT NULL,
    RoomStatus          VARCHAR(25)         NOT NULL,
    PRIMARY KEY (RoomNum));
    
CREATE TABLE RESERVATION(
    ReservationNum      INT                 NOT NULL,
    GuestID             VARCHAR(10)         NOT NULL,                 
    RoomNum             INT                 NOT NULL,
    CheckInDate         DATE                NOT NULL,
    CheckOutDate        DATE                NOT NULL,
    TotalGuest          INT                 NOT NULL,  
    ReservationStatus   VARCHAR(25)         NOT NULL,
    PRIMARY KEY(ReservationNum),
    FOREIGN KEY (GuestID) REFERENCES GUEST(GuestID)
        ON DELETE CASCADE,
    FOREIGN KEY (RoomNum) REFERENCES ROOM(RoomNum)
        ON DELETE CASCADE);

CREATE TABLE INVOICE(
    InvoiceID           INT                NOT NULL,
    ReservationNum      INT                 NOT NULL,
    TotalCost           DECIMAL(10, 2)      NOT NULL,
    PaymentStatus       VARCHAR(50),
    PaymentMethod       VARCHAR(50),
    PRIMARY KEY (InvoiceID),
    FOREIGN KEY (ReservationNum) REFERENCES RESERVATION(ReservationNum)
        ON DELETE CASCADE);
    
CREATE TABLE SERVICE(
    ServiceID           INT                  NOT NULL,
    ServiceType         VARCHAR(50)         NOT NULL,
    Cost                DECIMAL(10, 2)       NOT NULL,
    PRIMARY KEY (ServiceID));

CREATE TABLE RESERVATION_SERVICES(
    ReservationNum      INT             NOT NULL,
    ServiceID           INT             NOT NULL,
    ServiceDate         DATE                  NOT NULL,
    PRIMARY KEY (ReservationNum, ServiceID),
    FOREIGN KEY (ReservationNum) REFERENCES RESERVATION(ReservationNum)
        ON DELETE CASCADE,           
    FOREIGN KEY (ServiceID) REFERENCES SERVICE(ServiceID)
        ON DELETE CASCADE  );