CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(255),
    UserType VARCHAR(50),
    Email VARCHAR(255),
    Password VARCHAR(255),
    ProfilePicture VARCHAR(255),
    OtherUserInfo VARCHAR(255)
);


CREATE TABLE Hosts (
    HostID INT PRIMARY KEY,
    UserID INT,
    OtherHostInfo VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);


CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    HostID INT,
    RoomName VARCHAR(255),
    Description TEXT,
    MaxResidents INT,
    PricePerNight DECIMAL(10, 2),
    HasAC BOOLEAN,
    HasRefrigerator BOOLEAN,
    OtherRoomAttributes VARCHAR(255),
    FOREIGN KEY (HostID) REFERENCES Hosts(HostID)
);


CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    TotalPrice DECIMAL(10, 2),
    Status VARCHAR(50),
    FOREIGN KEY (GuestID) REFERENCES Users(UserID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);


CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    Rating INT,
    ReviewText TEXT,
    DatePosted DATE,
    FOREIGN KEY (GuestID) REFERENCES Users(UserID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

