USE hotelsofbrokendreams;

/*1*/
SELECT p.FirstName, p.LastName, rm.RoomNumber, rm.Floor, h.HotelName
FROM Person p
	INNER JOIN Customer c ON p.PersonID = c.PersonID
    INNER JOIN Reservation res ON c.CustomerID = res.CustomerID
	INNER JOIN Room_Reservation rr ON res.ReservationID = rr.ReservationID
    INNER JOIN Room rm ON rr.RoomID = rm.RoomID
    INNER JOIN Hotel h ON rm.HotelID = h.HotelID;

/*2*/ 
SELECT pc.Description, pc.ValueOfDiscount, dt.Description
FROM PromoCode pc
	INNER JOIN DiscountType dt ON pc.DiscountTypeID = dt.DiscountTypeID;
 
 
/*3*/


/*4*/
SELECT s.Description, sr.Rate, rs.ServiceDate
FROM Service s
	INNER JOIN ServiceRate sr ON s.ServiceID = sr.ServiceID
	INNER JOIN Room_Service rs ON sr.ServiceID = rs.ServiceID
WHERE rs.RoomID = 20;

/*5*/

/*6*/

/*7*/
SELECT rr.ReservationID, r.RoomNumber, rr.StartDate, rr.EndDate, rr.IsCancelled, rr.CancelDate
FROM Room r
	INNER JOIN Room_Reservation rr ON r.RoomID = rr.RoomID
WHERE rr.IsCancelled = true;

/*8*/
SELECT rr.ReservationID, r.RoomNumber, b.CheckInDate, b.CheckOutDate
FROM Room r
	INNER JOIN Room_Reservation rr ON r.RoomID = rr.RoomID
    INNER JOIN Billing b ON rr.RoomReservationID = b.RoomReservationID;
    
/*9*/
SELECT r.RoomNumber, a.Description, ar.Rate
FROM Room r
	INNER JOIN Room_Amenity ra ON r.RoomID = ra.RoomID
    INNER JOIN Amenity a ON ra.AmenityID = a.AmenityID
    INNER JOIN AmenityRate ar ON a.AmenityID = ar.AmenityID;
    
    
/*10*/
SELECT rr.ReservationID, r.RoomNumber, pc.Description, pc.ValueOfDiscount, dt.Description
FROM Room r
	INNER JOIN Room_Reservation rr ON r.RoomID = rr.RoomID
    INNER JOIN Room_Reservation_PromoCode rpc ON rr.RoomReservationID = rpc.RoomReservationID
    INNER JOIN PromoCode pc ON rpc.PromoCodeID = pc.PromoCodeID
    INNER JOIN DiscountType dt ON pc.DiscountTypeID = dt.DiscountTypeID;

/*11*/

    
    
    