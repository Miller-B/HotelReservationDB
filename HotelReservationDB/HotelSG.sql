CREATE DATABASE IF NOT EXISTS HotelsOfBrokenDreams;

USE HotelsOfBrokenDreams;

CREATE TABLE IF NOT EXISTS Person(
	PersonID INT NOT NULL auto_increment,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    PRIMARY KEY (PersonID)
);

CREATE TABLE IF NOT EXISTS Address(
	AddressID INT NOT NULL auto_increment,
    AddressNumber VARCHAR(30) NOT NULL,
    Street VARCHAR(30) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State VARCHAR(2) NOT NULL,
    ZipCode VARCHAR(10) NOT NULL,
    PRIMARY KEY (AddressID)
);

CREATE TABLE IF NOT EXISTS Customer(
	CustomerID INT NOT NULL auto_increment,
    PersonID INT NOT NULL,
    Phone VARCHAR(12) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    PRIMARY KEY (CustomerID),
    CONSTRAINT fk_Customer_PersonID
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE IF NOT EXISTS Customer_Address(
	CustomerAddressID INT NOT NULL auto_increment,
    CustomerID INT NOT NULL,
    AddressID INT NOT NULL,
    PRIMARY KEY (CustomerAddressID),
    CONSTRAINT fk_Customer_Address_CustomerID
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CONSTRAINT fk_Customer_Address_AddressID
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);

CREATE TABLE IF NOT EXISTS Guest(
	GuestID INT NOT NULL auto_increment,
    PersonID INT NOT NULL,
    DateOfBirth DATE NOT NULL,
    PRIMARY KEY (GuestID),
    CONSTRAINT fk_Guest_PersonID
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);

CREATE TABLE IF NOT EXISTS TaxRate(
	TaxRateID INT NOT NULL auto_increment,
    Rate DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (TaxRateID)
);

CREATE TABLE IF NOT EXISTS Hotel(
	HotelID INT NOT NULL auto_increment,
    HotelName VARCHAR(30) NOT NULL,
    AddressID INT NOT NULL,
    TaxRateID INT NOT NULL, /*adding missing taxrate which is needed for calculating the bill*/
    TotalFloors INT NOT NULL, /*added per Pat's Slack Consider this....! #1*/
    IsChain BOOLEAN NOT NULL,/*added per Pat's Slack Consider this....! #1*/
    PRIMARY KEY (HotelID),
    CONSTRAINT fk_Hotel_AddressID
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID),
    CONSTRAINT fk_Hotel_TaxRateID
    FOREIGN KEY (TaxRateID) REFERENCES TaxRate(TaxRateID)
);

CREATE TABLE IF NOT EXISTS Employee(
	EmployeeID INT NOT NULL auto_increment,
    PersonID INT NOT NULL,
    AddressID INT NOT NULL,
    HotelID INT NOT NULL,
    PRIMARY KEY (EmployeeID),
    CONSTRAINT fk_Employee_PersonID
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    CONSTRAINT fk_Employee_AddressID
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID),
    CONSTRAINT fk_Employee_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE IF NOT EXISTS TypeDescription(
	TypeDescriptionID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    MaxCapacity INT NOT NULL,
    PRIMARY KEY (TypeDescriptionID)
);

CREATE TABLE IF NOT EXISTS TypeRate(
	TypeRateID INT NOT NULL auto_increment,
    TypeDescriptionID INT NOT NULL,
    HotelID INT NOT NULL,/*added HotelID to TypeRate since we may need to keep up with possibly different hotels*/
    Rate DECIMAL(10,2) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (TypeRateID),
    CONSTRAINT fk_TypeRate_TypeDescriptionID
    FOREIGN KEY (TypeDescriptionID) REFERENCES TypeDescription(TypeDescriptionID),
    CONSTRAINT fk_TypeRate_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE IF NOT EXISTS Location( /*added for Pat Slack item # 6*/
	LocationID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    PRIMARY KEY (LocationID)
);

CREATE TABLE IF NOT EXISTS LocationRate(/*added for Pat Slack item # 6*/
	LocationRateID INT NOT NULL auto_increment,
    LocationID INT NOT NULL,
    HotelID INT NOT NULL,
    Rate DECIMAL(10,2) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (LocationRateID),
    CONSTRAINT fk_LocationRate_LocationID
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
    CONSTRAINT fk_LocationRate_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE IF NOT EXISTS Room(
	RoomID INT NOT NULL auto_increment,
    RoomNumber VARCHAR(30) NOT NULL,
    Floor VARCHAR(30) NOT NULL,
    /*TypeDescriptionID INT NOT NULL,  removed from here and made bridge table for Pat Slack item # 9*/
    LocationID INT NOT NULL,/*added for Pat Slack item # 6*/
    HotelID INT NOT NULL,
    PRIMARY KEY (RoomID),
    /*CONSTRAINT fk_Room_TypeDescriptionID
    FOREIGN KEY (TypeDescriptionID) REFERENCES TypeDescription(TypeDescriptionID),*/
    CONSTRAINT fk_Room_LocationID
    FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
    CONSTRAINT fk_Room_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE IF NOT EXISTS Room_TypeDescription(/*added for Pat Slack item # 9*/
	RoomTypeDescriptionID INT NOT NULL auto_increment,
    RoomID INT NOT NULL,
    TypeDescriptionID INT NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NULL,
    PRIMARY KEY (RoomTypeDescriptionID),
    CONSTRAINT fk_Room_TypeDescription_RoomID
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    CONSTRAINT fk_Room_TypeDescription_TypeDescriptionID
    FOREIGN KEY (TypeDescriptionID) REFERENCES TypeDescription(TypeDescriptionID)
);

CREATE TABLE IF NOT EXISTS Amenity(
	AmenityID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    PRIMARY KEY (AmenityID)
);

CREATE TABLE IF NOT EXISTS AmenityRate( /*changed this from Room_Amentity to AmenityRate, and made new Room_Amenity bridge table*/
	AmenityRateID INT NOT NULL auto_increment,
    HotelID INT NOT NULL,
    AmenityID INT NOT NULL,
    Rate DECIMAL(10,2) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (AmenityRateID),
    CONSTRAINT fk_AmenityRateID_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
    CONSTRAINT fk_AmenityRateID_AmenityID
    FOREIGN KEY (AmenityID) REFERENCES Amenity(AmenityID)
);

CREATE TABLE IF NOT EXISTS Room_Amenity( /*new Room_Amenity bridge table*/
	RoomAmenityID INT NOT NULL auto_increment,
    RoomID INT NOT NULL,
    AmenityID INT NOT NULL,
    PRIMARY KEY (RoomAmenityID),
    CONSTRAINT fk_Room_Amenity_RoomID
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    CONSTRAINT fk_Room_Amenity_AmenityID
    FOREIGN KEY (AmenityID) REFERENCES Amenity(AmenityID)

);

CREATE TABLE IF NOT EXISTS Service(/* slit original service table into service and servicerate*/
	ServiceID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    PRIMARY KEY (ServiceID)
);

CREATE TABLE IF NOT EXISTS ServiceRate( /* slit original service table into service and servicerate*/
	ServiceRateID INT NOT NULL auto_increment,
    ServiceID INT NOT NULL,
    HotelID INT NOT NULL,
    Rate DECIMAL(10,2) NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (ServiceRateID),
    CONSTRAINT fk_ServiceRate_ServiceID
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID),
    CONSTRAINT fk_ServiceRate_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE IF NOT EXISTS Room_Service( /*Changed this from Billing_SrerviceRate to Room_Service bridge table*/
	RoomServiceID INT NOT NULL auto_increment,
    RoomID INT NOT NULL,
    ServiceID INT NOT NULL,
    ServiceDate DATETIME NOT NULL,/*add date so we can know when the service was actually ordered/performed */
    PRIMARY KEY (RoomServiceID),
    CONSTRAINT fk_Room_Service_BillingID
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    CONSTRAINT fk_Room_Service_ServiceID
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);

CREATE TABLE IF NOT EXISTS Maintenance(
	MaintenanceID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    PRIMARY KEY (MaintenanceID)
);

CREATE TABLE IF NOT EXISTS Room_Maintenance(
	RoomMaintenanceID INT NOT NULL auto_increment,
    RoomID INT NOT NULL,
    MaintenanceID INT NOT NULL,
    EmployeeID INT NOT NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (RoomMaintenanceID),
    CONSTRAINT fk_Room_Maintenance_RoomID
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    CONSTRAINT fk_Room_Maintenance_MaintenanceID
    FOREIGN KEY (MaintenanceID) REFERENCES Maintenance(MaintenanceID),
    CONSTRAINT fk_Room_Maintenance_EmployeeID
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE IF NOT EXISTS DiscountType(
	DiscountTypeID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    PRIMARY KEY (DiscountTypeID)
);

CREATE TABLE IF NOT EXISTS PromoCode(
	PromoCodeID INT NOT NULL auto_increment,
    Description VARCHAR(30) NOT NULL,
    DiscountTypeID INT NOT NULL,
    HotelID INT NOT NULL,
    ValueOfDiscount DECIMAL(10,2) NULL,
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    PRIMARY KEY (PromoCodeID),
    CONSTRAINT fk_PromoCode_DiscountTypeID
    FOREIGN KEY (DiscountTypeID) REFERENCES DiscountType(DiscountTypeID),
    CONSTRAINT fk_PromoCode_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID)
);

CREATE TABLE IF NOT EXISTS Reservation(
	ReservationID INT NOT NULL auto_increment,
    HotelID INT NOT NULL,
    CustomerID INT NOT NULL,
    IsCancelled BOOLEAN NULL,/*added for Pat Slack item # 7*/
    CancelDate DATETIME NULL,/*added for Pat Slack item # 7*/
    PRIMARY KEY (ReservationID),
    CONSTRAINT fk_Reservation_HotelID
    FOREIGN KEY (HotelID) REFERENCES Hotel(HotelID),
    CONSTRAINT fk_Reservation_CustomerID
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE IF NOT EXISTS Reservation_PromoCode( /*added for Pat Slack item # 10*/
	ReservationPromoCodeID INT NOT NULL auto_increment,
    ReservationID INT NOT NULL,
    PromoCodeID INT NOT NULL,
    PRIMARY KEY (ReservationPromoCodeID),
    CONSTRAINT fk_Reservation_PromoCode_ReservationID
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    CONSTRAINT fk_Reservation_PromoCode_PromoCodeID
    FOREIGN KEY (PromoCodeID) REFERENCES PromoCode(PromoCodeID)
);

CREATE TABLE IF NOT EXISTS Room_Reservation(
	RoomReservationID INT NOT NULL auto_increment,
    ReservationID INT NOT NULL,
    RoomID INT NOT NULL,
    /*TypeRateID INT NOT NULL,  Randell has us add this here, but it is already tied in through simply having the RoomID*/
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    IsCancelled BOOLEAN NULL,/*added for Pat Slack item # 7*/
    CancelDate DATETIME NULL,/*added for Pat Slack item # 7*/
    PRIMARY KEY (RoomReservationID),
    CONSTRAINT fk_Room_Reservation_ReservationID
    FOREIGN KEY (ReservationID) REFERENCES Reservation(ReservationID),
    CONSTRAINT fk_Room_Reservation_RoomID
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
    /*CONSTRAINT fk_Room_Reservation_TypeRateID
    FOREIGN KEY (TypeRateID) REFERENCES TypeRate(TypeRateID),
    CONSTRAINT fk_Room_Reservation_PromoCodeID
    FOREIGN KEY (PromoCodeID) REFERENCES PromoCode(PromoCodeID) */
);

CREATE TABLE IF NOT EXISTS Room_Reservation_PromoCode( /*added for Pat Slack item # 10*/
	RoomReservationPromoCodeID INT NOT NULL auto_increment,
    RoomReservationID INT NOT NULL,
    PromoCodeID INT NOT NULL,
    PRIMARY KEY (RoomReservationPromoCodeID),
    CONSTRAINT fk_Room_Reservation_PromoCode_RoomReservationID
    FOREIGN KEY (RoomReservationID) REFERENCES Room_Reservation(RoomReservationID),
    CONSTRAINT fk_Room_Reservation_PromoCode_PromoCodeID
    FOREIGN KEY (PromoCodeID) REFERENCES PromoCode(PromoCodeID)
);

CREATE TABLE IF NOT EXISTS Room_Reservation_AmenityWaiver( /*added for Pat Slack item # 11*/
	RoomReservationAmenityWaiverID INT NOT NULL auto_increment,
    RoomReservationID INT NOT NULL,
    AmenityID INT NOT NULL,
    WaiverDate DATETIME NOT NULL,
    PRIMARY KEY (RoomReservationAmenityWaiverID),
    CONSTRAINT fk_RoomReservationAmenityWaiver_RoomReservationID
    FOREIGN KEY (RoomReservationID) REFERENCES Room_Reservation(RoomReservationID),
    CONSTRAINT fk_Room_Reservation_AmenityWaiver_AmenityID
    FOREIGN KEY (AmenityID) REFERENCES Amenity(AmenityID)
);

CREATE TABLE IF NOT EXISTS Room_Reservation_ServiceWaiver( /*added for Pat Slack item # 11*/
	RoomReservationServiceWaiverID INT NOT NULL auto_increment,
    RoomReservationID INT NOT NULL,
    ServiceID INT NOT NULL,
    WaiverDate DATETIME NOT NULL,
    PRIMARY KEY (RoomReservationServiceWaiverID),
    CONSTRAINT fk_Room_Reservation_ServiceWaiver_RoomReservationID
    FOREIGN KEY (RoomReservationID) REFERENCES Room_Reservation(RoomReservationID),
    CONSTRAINT fk_Room_Reservation_ServiceWaiver_ServiceID
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID)
);

CREATE TABLE IF NOT EXISTS Room_Reservation_Guest( /*Corrected from Reservation_Guest to Room_Reservation_Guest because the guest is associated with a room, not just a reservation*/
	RoomReservationGuestID INT NOT NULL auto_increment,
    RoomReservationID INT NOT NULL,
    GuestID INT NOT NULL,
    PRIMARY KEY (RoomReservationGuestID),
    CONSTRAINT fk_Room_Reservation_Guest_ReservationID
    FOREIGN KEY (RoomReservationID) REFERENCES Room_Reservation(RoomReservationID),
    CONSTRAINT fk_Room_Reservation_Guest_GuestID
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID)
);

CREATE TABLE IF NOT EXISTS Billing(
	BillingID INT NOT NULL auto_increment,
    RoomReservationID INT NOT NULL,/*Changed so rooms on same reservation can check in/out on different days and settle up their bills - Pat Slack item # 8*/
    CheckInDate DATETIME NOT NULL,
    CheckOutDate DATETIME NOT NULL,
    PRIMARY KEY (BillingID),
    CONSTRAINT fk_Billing_RoomReservationID
    FOREIGN KEY (RoomReservationID) REFERENCES Room_Reservation(RoomReservationID)
);